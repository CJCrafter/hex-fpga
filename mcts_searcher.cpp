#include <random>

#include "mcts_tree.h"
#include "mcts_searcher.h"

#include "hex.h"
#include "RolloutState.h"
//
// Created by Aakash Kumar on 3/31/26.
//

int MCTSSearcher::search(Hex boardState) {
    // todo: make this actually take collin's game state and figure out what the starting player is

    MCTSTree::DecisionNode rootNode(true);
    // select best action here;
    mainLoop(&rootNode, boardState);
    return rootNode.selectBestAction();
}

void MCTSSearcher::mainLoop(MCTSTree::DecisionNode *decisionNode, Hex boardState) {
    long start = 0l;
    // todo: add timing here
    int maxSims = 100000;
    GameState gameState(boardState); // Create gameState via boardState

    int i = 0;
    while (true) {
        forward(decisionNode, gameState);
        if (++i > maxSims) {
            break;
        }
    }
}

void MCTSSearcher::forward(MCTSTree::DecisionNode *decisionNode, GameState gameState) {
    MCTSTree::DecisionNode *node = decisionNode;
    std::vector<SearchNode> path;
    double reward = 0.0;
    while (true) {
        if (node->legalActions.empty()) {
            node->setLegalActions(gameState.getLegalActions());
        }

        // if is terminal break
        if (gameState.isTerminal()) {
            reward = gameState.getTerminalValue(true);
            break;
        }

        if (decisionNode->hasUnexpandedActions()) {
            int action = node->selectActionUCT();
            gameState.makeMove(action);
            path.push_back(SearchNode{node, action});
            MCTSTree::DecisionNode *nextNode = node->getNextNode(action);
            node = nextNode;
            // reward = rollout
            reward = rollout(gameState);
            node = nextNode;
            break;
            //
        } else {
            int action = node->selectActionUCT();
            gameState.makeMove(action);
            path.push_back(SearchNode{node, action});
            MCTSTree::DecisionNode *nextNode = node->getNextNode(action);
            node = nextNode;
        }
    }

    backup(path, reward);
}

void MCTSSearcher::backup(std::vector<SearchNode> &path, double reward) {
    // iterate through the path and accumulate scores
    // reward always from red's perspective
    for (SearchNode node: path) {
        int action = node.action;
        MCTSTree::DecisionNode *decisionNode = node.treeNode;
        if (!decisionNode->isRED) {
            decisionNode->updateActionStats(action, 1 - reward);
        } else {
            decisionNode->updateActionStats(action, reward);
        }
    }
}

double MCTSSearcher::rollout(const GameState &gameState) {
    RolloutState rolloutState(gameState);
    while (rolloutState.isTerminal()) {
        int action = rolloutState.selectAction();
        rolloutState.makeMove(action);
    }

    return rolloutState.getTerminalValue(0);
}
