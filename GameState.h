//
// Created by Aakash Kumar on 3/31/26.
//

#ifndef MCTSHEX_GAMESTATE_H
#define MCTSHEX_GAMESTATE_H
// #include <vector>

#include "hex.h"
#include "MCTSSearcher.h"

constexpr unsigned int HEX_SIZE = 11;

class GameState {
public:
    GameState(Hex<HEX_SIZE> hex) : hexGame(hex) {
    }

    Hex<HEX_SIZE> hexGame;

    GameState clone();

    void makeMove(int action);

    // std::vector<int> getLegalActions();

    bool isTerminal();

    fixed_point_t getTerminalValue(bool isRED);
};


#endif //MCTSHEX_GAMESTATE_H
