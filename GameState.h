//
// Created by Aakash Kumar on 3/31/26.
//

#ifndef MCTSHEX_GAMESTATE_H
#define MCTSHEX_GAMESTATE_H
#include <vector>

#include "hex.h"


class GameState {
public:
    GameState(Hex hex) : hexGame(hex) {
    }

    Hex hexGame;

    GameState clone();

    void makeMove(int action);

    std::vector<int> getLegalActions();

    bool isTerminal();

    float getTerminalValue(bool isRED);
};


#endif //MCTSHEX_GAMESTATE_H
