#include "MCTSSearcher.h"

#include "hls_math.h"
// #include <cmath>
#include <iostream>

#include "GameState.h"


int MCTSSearcher::search(Hex<HEX_SIZE> boardState, bool isRED) {
    parents[0] = -1; // root node has no parent
    nextFree = 1;
    isREDs[0] = isRED; // set this based on starting condition

    mainLoop(boardState);

    int childStart = childrenStarts[0];
    int childEnd = childrenEnds[0];
    int bestChildNode = childrenStarts[0];
    fixed_point_t bestChildValue = -99999;
    fixed_point_t EPS = fixed_point_t(0.0001);
    for (int child = childStart; child <= childEnd; child++) {
        fixed_point_t childQ = this->returnSums[child] / (EPS + this->visitCounts[child]);
        if (childQ > bestChildValue) {
            bestChildValue = childQ;
            bestChildNode = child;
        }
    }

    return childActions[bestChildNode];
}

void MCTSSearcher::expand(int parent, GameState boardState) {
    if (expandeds[parent] || terminals[parent]) {
        return;
    }

    expandeds[parent] = true;
    terminals[parent] = boardState.isTerminal();
    if (terminals[parent]) {
        return;
    }
    const Hex<HEX_SIZE> hexGame = boardState.hexGame;
    this->childrenStarts[parent] = nextFree;
    const auto legalActionMap = ~(hexGame.player1() | hexGame.player2()); // todo use hex game for this
    for (int i = 0; i < boardState.hexGame.size() * hexGame.size(); i++) {
        // || hexGame.is_first todo: support this later, see if this fixes the issue
        if ((bool) (legalActionMap & (typename Hex<HEX_SIZE>::uintsize_t(1) << i))) {
            createNode(parent, i);
        }
    }
}

void MCTSSearcher::createNode(int parent, int action) {
    if (nextFree >= MAX_NODES) {
        // std::cout << "Max nodes reached, cannot create more nodes" << std::endl;
        return;
    }
    this->parents[nextFree] = parent;
    this->childActions[nextFree] = action;
    this->childrenEnds[parent] = nextFree;
    this->isREDs[nextFree] = !this->isREDs[parent];
    nextFree++;
}

void MCTSSearcher::mainLoop(Hex<HEX_SIZE> boardState) {
    long start = 0l;
    int max_sims = 200;
    GameState gameState(boardState); // Create gameState via boardState

    int i = 0;
    while (i < max_sims) {
        forward(gameState.clone());
        i++;
    }
}


void MCTSSearcher::forward(GameState gameState) {
    fixed_point_t reward = 0;
    int node = 0;
    while (expandeds[node] && !terminals[node]) {
        // select action via UCT
        int childrenStart = childrenStarts[node];
        int childrenEnd = childrenEnds[node]; // inclusive

        int bestChildNode = childrenStart;
        fixed_point_t bestChildUCT = -999999;
        const fixed_point_t EPS = fixed_point_t(0.0001);
        const fixed_point_t UCT_C = fixed_point_t(1.41);

        // todo: this log is scary, use a learned neural function instead
        fixed_point_t logVisitCounts = hls::log(this->visitCounts[node] + EPS);
        for (int childNode = childrenStart; childNode <= childrenEnd; childNode++) {
            fixed_point_t childQ = this->returnSums[childNode] / (EPS + this->visitCounts[childNode]);
            // todo: Makefile configurable
            fixed_point_t childUCT =
                    childQ + UCT_C * hls::sqrt(logVisitCounts / (EPS + this->visitCounts[childNode]));
            if (childUCT > bestChildUCT) {
                bestChildUCT = childUCT;
                bestChildNode = childNode;
            }
        }

        int action = this->childActions[bestChildNode];
        gameState.makeMove(action);
        node = bestChildNode;
    }

    // either node is not expanded or it is terminal here
    if (!expandeds[node]) {
        expand(node, gameState);
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
        const auto legalActionMap = ~(hexGame.player1() | hexGame.player2()); // todo use hex game for this
        int numLegalActions = 0;
        for (int i = 0; i < HEX_SIZE * HEX_SIZE; i++) {
            if ((bool) (legalActionMap & (Hex<HEX_SIZE>::uintsize_t(1) << i))) {
                numLegalActions++;
            }
        }

        // std::cout << numLegalActions << std::endl;

        int randomIndex = rng.randInt(numLegalActions);
        // int action = legalActions[randomIndex];
        int action = 0;
        int actionIdx = 0;
        for (int i = 0; i < gameState.hexGame.size() * hexGame.size(); i++) {
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
        if (isREDs[node]) {
            returnSums[node] += reward;
        } else {
            returnSums[node] -= reward;
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
