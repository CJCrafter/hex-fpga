//
// Created by Aakash Kumar on 3/31/26.
//

#include "GameState.h"

GameState GameState::clone() {
    // todo: need hexGame.clone()
    return {Hex(hexGame)};
}

void GameState::makeMove(int action) {
    return hexGame.place(action);
}

std::vector<int> GameState::getLegalActions() {
    std::vector<int> legalActions;
    int totalCells = hexGame.size() * hexGame.size();
    const uint64_t occupied = this->hexGame.player1() | this->hexGame.player2(); // todo use hex game for this
    for (int i = 0; i < totalCells; i++) {
        if (!(occupied & (1ULL << i))) {
            legalActions.push_back(i);
        }
    }
    return legalActions;
}

bool GameState::isTerminal() {
    return hexGame.checkWin();
}

float GameState::getTerminalValue(bool isRED) {
    if (isTerminal()) {
        if (hexGame.isPlayer1Turn()) {
            return (isRED) ? 1.0f : 0;
        }
    }
    return 0; // todo call a value function here;
}