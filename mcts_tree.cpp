//
// Created by Aakash Kumar on 3/31/26.
//

#include "mcts_tree.h"

#include <map>
#include <vector>


void MCTSTree::DecisionNode::setLegalActions(std::vector<int> legalActions) {
    this->legalActions = legalActions;
    for (int action: legalActions) {
        actionVisitCounts[action] = 0;
        actionQValues[action] = 0.0;
        actionValueSums[action] = 0.0;
        actionValueSquareSums[action] = 0.0;
    }
}

bool MCTSTree::DecisionNode::hasUnexpandedActions() {
    for (int action: legalActions) {
        if (actionVisitCounts[action] == 0) {
            return true;
        }
    }
    return false;
}

int MCTSTree::DecisionNode::selectActionUCT() {
    double bestValue = -std::numeric_limits<double>::infinity();
    int bestAction = -1;
    for (int action: legalActions) {
        double qValue = actionQValues[action];
        int visitCount = actionVisitCounts[action];
        double uctValue = qValue + sqrt(2 * log(visits) / (visitCount + 1e-6));
        // add small value to avoid division by zero
        if (uctValue > bestValue) {
            bestValue = uctValue;
            bestAction = action;
        }
    }
    if (bestAction == -1) {
        throw std::runtime_error("No solution found for best move in selectActionUCT");
    }
    return bestAction;
}


int MCTSTree::DecisionNode::selectBestAction() {
    double bestValue = -std::numeric_limits<double>::infinity();
    int bestAction = -1;
    for (int action: legalActions) {
        double qValue = actionQValues[action];
        // add small value to avoid division by zero
        if (qValue > bestValue) {
            bestValue = qValue;
            bestAction = action;
        }
    }
    if (bestAction == -1) {
        throw std::runtime_error("No solution found for best move in selectBestAction");
    }
    return bestAction;
}

// result is assumed to be from current player's perspective
void MCTSTree::DecisionNode::updateActionStats(const int action, const double result) {
    int visitCount = actionVisitCounts[action];
    double valueSum = actionValueSums[action] + result;
    double valueSquareSum = actionValueSquareSums[action] + result * result;

    actionVisitCounts[action] = visitCount + 1;
    actionQValues[action] = valueSum / visitCount;
    actionValueSums[action] = valueSum;

    actionValueSquareSums[action] = valueSquareSum;

    visits += 1;
    value += result;
}


MCTSTree::DecisionNode *MCTSTree::DecisionNode::getNextNode(const int action) {
    DecisionNode *nextNode = nullptr;
    if (children.find(action) != children.end()) {
        nextNode = children[action];
    } else {
        nextNode = new DecisionNode(this, action);
        children[action] = nextNode;
    }
    return nextNode;
}
