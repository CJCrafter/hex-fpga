#include "MCTSSearcher.h"

#include <iostream>

#include "GameState.h"


int MCTSSearcher::search(Hex boardState, bool isRED) {
    parents[0] = -1; // root node has no parent
    nextFree = 1;
    isREDs[0] = isRED; // set this based on starting condition

    mainLoop(boardState);

    int childStart = childrenStarts[0];
    int childEnd = childrenEnds[0];
    int bestChildNode = childrenStarts[0];
    double bestChildValue = -99999;
    for (int child = childStart; child <= childEnd; child++) {
        double childQ = this->returnSums[child] / (0.0001 + this->visitCounts[child]);
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

    std::vector<int> legalActions = boardState.getLegalActions();
    this->childrenStarts[parent] = nextFree;
    for (int action: legalActions) {
        createNode(parent, action);
    }
}

void MCTSSearcher::createNode(int parent, int action) {
    if (nextFree >= MAX_NODES) {
        std::cout << "Max nodes reached, cannot create more nodes" << std::endl;
        return;
    }
    this->parents[nextFree] = parent;
    this->childActions[nextFree] = action;
    this->childrenEnds[parent] = nextFree;
    this->isREDs[nextFree] = !this->isREDs[parent];
    nextFree++;
}

void MCTSSearcher::mainLoop(Hex boardState) {
    long start = 0l;
    int max_sims = 1000000;
    GameState gameState(boardState); // Create gameState via boardState

    int i = 0;
    while (i < max_sims) {
        forward(gameState.clone());
        i++;
    }
}


void MCTSSearcher::forward(GameState gameState) {
    double reward = 0;
    int node = 0;
    while (expandeds[node] && !terminals[node]) {
        // select action via UCT
        int childrenStart = childrenStarts[node];
        int childrenEnd = childrenEnds[node]; // inclusive

        int bestChildNode = childrenStart;
        double bestChildUCT = -999999;
        double logVisitCounts = log(this->visitCounts[node]);
        for (int childNode = childrenStart; childNode <= childrenEnd; childNode++) {
            double childQ = this->returnSums[childNode] / (0.0001 + this->visitCounts[childNode]);
            // todo: make configurable
            double childUCT = childQ + 1.41 * sqrt(logVisitCounts / (0.0001 + this->visitCounts[childNode]));
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

double MCTSSearcher::rollout(GameState gameState) {
    int depth = 0;
    while (true) {
        if (!gameState.isTerminal()) {
            return gameState.getTerminalValue(true);
        }
        std::vector<int> legalActions = gameState.getLegalActions();
        int randomIndex = rng.randInt(legalActions.size());
        int action = legalActions[randomIndex];
        gameState.makeMove(action);
        depth++;
    }


    return 0;
}


void MCTSSearcher::backup(double reward, int artificialLeafNode) {
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
