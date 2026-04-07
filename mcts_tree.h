//
// Created by Aakash Kumar on 3/31/26.
//

#ifndef MCTSHEX_MCTS_TREE_H
#define MCTSHEX_MCTS_TREE_H


#include <map>
#include <vector>

class MCTSTree {
public:
    class Action {
    public:
        const int actionIdx;

        explicit Action(const int actionIdx) : actionIdx(actionIdx) {
        }
    };

    class DecisionNode {
    public:
        double value;
        int visits;
        bool isMaximizer;
        bool isRED;
        int parentActionIdx;

        DecisionNode *parent{}; // todo: figure out if it should be a pointer or reference
        std::unordered_map<int, DecisionNode *> children; // action idx -> child node

        // for uct
        std::unordered_map<int, double> actionQValues; // action idx -> q value of action
        std::unordered_map<int, double> actionValueSums; // action idx -> sum of rewards for action
        std::unordered_map<int, int> actionVisitCounts; // action idx -> visitCount of action
        std::vector<int> legalActions;

        // for uct tuned
        std::unordered_map<int, double> actionValueSquareSums; // action idx -> sum of squares of rewards for action
        DecisionNode(bool playerIsRed) : value(0.0), visits(0) {
            isMaximizer = true; // root node is always a maximizer
            isRED = playerIsRed;
            parentActionIdx = -1; // root node has no parent action
        }

        explicit DecisionNode(DecisionNode *parent, const int actionIdx) {
            value = 0.0;
            visits = 0;
            this->parent = parent;
            isMaximizer = !parent->isMaximizer;
            isRED = !parent->isRED;
            parentActionIdx = actionIdx;
        }


        void setLegalActions(std::vector<int> legalActions);

        bool hasUnexpandedActions();

        int selectActionUCT();

        int selectBestAction();

        void updateActionStats(int action, double result);

        MCTSTree::DecisionNode *getNextNode(int action);
    };
};


#endif //MCTSHEX_MCTS_TREE_H
