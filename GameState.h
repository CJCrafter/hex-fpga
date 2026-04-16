//
// Created by Aakash Kumar on 3/31/26.
//

#ifndef MCTSHEX_GAMESTATE_H
#define MCTSHEX_GAMESTATE_H
// #include <vector>

#include "hex.h"

constexpr unsigned int HEX_SIZE = 3;

class GameState {
public:
    GameState(Hex<HEX_SIZE> hex) : hexGame(hex) {
    }

    Hex<HEX_SIZE> hexGame;

    GameState clone();

    void makeMove(int action);

    // std::vector<int> getLegalActions();

    bool isTerminal();

    float getTerminalValue(bool isRED);
};


#endif //MCTSHEX_GAMESTATE_H
