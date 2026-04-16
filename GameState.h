//
// Created by Aakash Kumar on 3/31/26.
//

#ifndef MCTSHEX_GAMESTATE_H
#define MCTSHEX_GAMESTATE_H
// #include <vector>

#include "hex.h"
#include "ap_fixed.h"
typedef ap_fixed<32, 18> fixed_point_t; // todo: make this its own header

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
