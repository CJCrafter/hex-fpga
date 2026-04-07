//
// Created by Aakash Kumar on 3/31/26.
//

#include "RolloutState.h"

int RolloutState::selectAction() {
    std::vector<int> legalActions = gameState.getLegalActions();
    int action = legalActions.at(0); // todo: make random
    return action;
}

void RolloutState::makeMove(int action) {
    gameState.makeMove(action);
}

bool RolloutState::isTerminal() {
    return gameState.isTerminal();
}

float RolloutState::getTerminalValue(int player) {
    return gameState.getTerminalValue(true);
    //todo verify
}
