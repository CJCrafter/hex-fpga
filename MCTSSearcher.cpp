#include "MCTSSearcher.h"

#include "hls_math.h"
// #include <cmath>
#include <iostream>

#include "GameState.h"


int MCTSSearcher::search(Hex<HEX_SIZE> boardState, bool isRED) {
    parents[0] = -1; // root node has no parent
    firstChilds[0] = -1;
    nextFree = 1;
    isREDs[0] = isRED; // set this based on starting condition

    mainLoop(boardState);

    // int childStart = childrenStarts[0];
    // int childEnd = childrenEnds[0];

    int bestChildNode = firstChilds[0];

    // fixed_point_t bestChildValue = -100;
    // fixed_point_t EPS = fixed_point_t(0.0001);
    int bestChildVisits = -1;
    for (int child = firstChilds[0]; child != -1; child = nextSiblings[child]) {
        // fixed_point_t childQ = this->returnSums[child] / (EPS + this->visitCounts[child]);
        int childVisits = this->visitCounts[child];
        if (childVisits > bestChildVisits) {
            bestChildVisits = childVisits;
            bestChildNode = child;
        }
    }

    return childActions[bestChildNode];
}

void MCTSSearcher::mainLoop(Hex<HEX_SIZE> boardState) {
    long start = 0l;
    int max_sims = 10000;
    GameState gameState(boardState);
    numLegalActions[0] = gameState.getNumLegalActions();

    int i = 0;
    while (i < max_sims) {
        forward(gameState.clone());
        i++;
    }
}
int MCTSSearcher::expand(int parent, GameState boardState) {
    if (nextFree >= MAX_NODES) {
        return -1;
    }

    int action = pickUntriedAction(parent, boardState);

    if (action < 0) {
        return -1;
    }

    createNode(parent, action, boardState);
    return nextFree - 1;
}

int MCTSSearcher::pickUntriedAction(int parent, GameState boardState) {
    const Hex<HEX_SIZE> hexGame = boardState.hexGame;

    for (int a = 0; a < HEX_SIZE * HEX_SIZE; ++a) {
        if (!boardState.isEmpty(a)) continue;
        bool tried = false;
        for (int c = firstChilds[parent]; c != -1; c = this->nextSiblings[c])
            if (childActions[c] == a) {
                tried = true;
                break;
            }
        if (!tried) return a;
    }
    return -1;
}

void MCTSSearcher::createNode(int parent, int action, GameState boardState) {
    if (nextFree >= MAX_NODES) {
        // std::cout << "Max nodes reached, cannot create more nodes" << std::endl;
        return;
    }

    // todo make sure to avoid off by 1 error in nextFree (make sure it is initialized correctly)

    this->parents[nextFree] = parent;
    this->childActions[nextFree] = action;
    this->firstChilds[nextFree] = -1;
    this->nextSiblings[nextFree] = firstChilds[parent];
    this->firstChilds[parent] = nextFree;
    this->numChildren[parent]++;
    int numLegalActionsHere =this->numLegalActions[parent] - 1;
    // for (int i = 0; i < HEX_SIZE * HEX_SIZE; i++) {
    //     if (static_cast<bool>(boardState.legalActionMap & (Hex<HEX_SIZE>::uintsize_t(1) << i))) {
    //         numLegalActions++;
    //     }
    // }
    this->numLegalActions[nextFree] = numLegalActionsHere;

    // this->childrenEnds[parent] = nextFree;
    this->isREDs[nextFree] = !this->isREDs[parent];
    nextFree++;
}



void MCTSSearcher::forward(GameState gameState) {
    fixed_point_t reward = 0;
    int node = 0;
    while (numLegalActions[node] == numChildren[node] && !terminals[node]) {
        // select action via UCT
        // int childrenStart = childrenStarts[node];
        // int childrenEnd = childrenEnds[node]; // inclusive

        int bestChildNode = firstChilds[node];
        fixed_point_t bestChildUCT = -100;
        const fixed_point_t EPS = fixed_point_t(0.0001);
        const fixed_point_t UCT_C = fixed_point_t(1.41);

        // todo: this log is scary, use a learned neural function instead
        fixed_point_t logVisitCounts = hls::log(this->visitCounts[node] + EPS);
        for (int childNode = firstChilds[node]; childNode != -1; childNode = this->nextSiblings[childNode]) {
            fixed_point_t childQ = this->returnSums[childNode] / (EPS + this->visitCounts[childNode]);
            // todo: Makefile configurable
            fixed_point_t childUCT =
                    childQ + UCT_C * hls::sqrt(logVisitCounts / (EPS + this->visitCounts[childNode]));
            if (childUCT > bestChildUCT) {
                bestChildUCT = childUCT;
                bestChildNode = childNode;
            }
        }
        // std::cout << bestChildUCT << std::endl;

        int action = this->childActions[bestChildNode];
        gameState.makeMove(action);
        node = bestChildNode;
    }

    // either node is not expanded or it is terminal here
    if (!(numLegalActions[node] == numChildren[node])) {
        int child = expand(node, gameState);
    if (child >= 0) {
        gameState.makeMove(childActions[child]);
        node = child;
        if (gameState.isTerminal()) terminals[node] = true;
    }

    }
    if (!terminals[node]) {
        reward = rollout(gameState);
    } else {
        reward = gameState.getTerminalValue(true);
    }
    backup(reward, node);
}

fixed_point_t MCTSSearcher::rollout(GameState gameState) {
    int depth = 0;
    while (!gameState.isTerminal()) {
        // std::vector<int> legalActions = gameState.getLegalActions();
        const Hex<HEX_SIZE> hexGame = gameState.hexGame;
        Hex<HEX_SIZE>::uintsize_t legalActionMap = ~(hexGame.player1() | hexGame.player2());
        // todo use hex game for this
        int numLegalActionsHere = gameState.getNumLegalActions();

        // std::cout << numLegalActions << std::endl;

        int randomIndex = rng.randInt(numLegalActionsHere);
        // int action = legalActions[randomIndex];
        int action = 0;
        int actionIdx = 0;
        for (int i = 0; i < HEX_SIZE * HEX_SIZE; i++) {
            if ((bool) (legalActionMap & (Hex<HEX_SIZE>::uintsize_t(1) << i))) {
                if (actionIdx == randomIndex) {
                    action = i;
                    break;
                }
                actionIdx++;
            }
        }
        gameState.makeMove(action);
        depth++;
    }

    return gameState.getTerminalValue(true);
}


void MCTSSearcher::backup(fixed_point_t reward, int artificialLeafNode) {
    // reward is from red player's perspective
    int node = artificialLeafNode;
    while (node != -1) {
        int parent = parents[node];
        if (!isREDs[node]) {
            returnSums[node] += reward;
        } else {
            returnSums[node] += 1 - reward;
        }
        visitCounts[node] += 1;

        // apply reward and invert for
        node = parent;
    }
}


int search(Hex<HEX_SIZE> boardState, bool isRED) {
    MCTSSearcher searcher(4l);
    return searcher.search(boardState, isRED);
}
