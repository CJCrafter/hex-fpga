//
// Created by Aakash Kumar on 3/31/26.
//

#ifndef MCTSHEX_ROLLOUTSTATE_H
#define MCTSHEX_ROLLOUTSTATE_H
#include "GameState.h"


class RolloutState {
public:
    GameState gameState;

    RolloutState(GameState gameState) : gameState(gameState) {
    };

    int selectAction();

    void makeMove(int action);

    bool isTerminal();

    float getTerminalValue(int player);
};


#endif //MCTSHEX_ROLLOUTSTATE_H
