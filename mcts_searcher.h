//
// Created by Aakash Kumar on 3/31/26.
//

#ifndef MCTSHEX_MCTS_SEARCHER_H
#define MCTSHEX_MCTS_SEARCHER_H
#include "GameState.h"
#include "hex.h"
#include "mcts_tree.h"


class MCTSSearcher {
public:
    class SearchNode {
    public:
        MCTSTree::DecisionNode *treeNode;
        int action; // action selected *at* this node, not the action that took you to this node
    };

    static int search(Hex boardState);

    static void mainLoop(MCTSTree::DecisionNode *decisionNode, Hex boardState);

    static void forward(MCTSTree::DecisionNode *decisionNode, GameState gameState);

    static void backup(std::vector<SearchNode> &path, double reward);

    static double rollout(const GameState &gameState);
};


#endif //MCTSHEX_MCTS_SEARCHER_H
