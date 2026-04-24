//
// Created by Aakash Kumar on 3/31/26.
//

#ifndef MCTSHEX_GAMESTATE_H
#define MCTSHEX_GAMESTATE_H
// #include <vector>

#include "hex.h"
#include "config.h"
#include "ap_fixed.h"
// we care about mainly fractional values so
typedef ap_fixed<20, 5> fixed_point_t; // todo: make this its own header
// typedef float fixed_point_t;
constexpr unsigned int HEX_SIZE = BOARD_SIZE;

class GameState {
public:
    Hex<HEX_SIZE>::uintsize_t legalActionMap{};

    GameState(Hex<HEX_SIZE> hex) : hexGame(hex) {
        legalActionMap = ~(this->hexGame.player1() | this->hexGame.player2());
    }

    Hex<HEX_SIZE> hexGame;

    GameState clone();

    void makeMove(int action);

    // std::vector<int> getLegalActions();

    bool isTerminal();

    bool isEmpty(int a);

    fixed_point_t getTerminalValue(bool isRED);

    int getNumLegalActions() {
        int numLegalActions = 0;
        for (int i = 0; i < HEX_SIZE * HEX_SIZE; i++) {
            if (static_cast<bool>(this->legalActionMap & (Hex<HEX_SIZE>::uintsize_t(1) << i))) {
                numLegalActions++;
            }
        }

        return numLegalActions;
    }
};


#endif //MCTSHEX_GAMESTATE_H
