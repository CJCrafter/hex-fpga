#include "hex_hls.h"
#include <cstdint>

// xorshift64 RNG 
// same as rand.h but inline for HLS
static uint64_t xorshift64(uint64_t state) {
    state ^= state << 13;
    state ^= state >> 7;
    state ^= state << 17;
    return state;
}

// takes a board state (as two bitmaps + turn flag) and a random seed
// returns the rollout result: 1.0 if player1 wins, 0.0 if player2 wins
float rollout_hls(
    uint64_t player1_board,
    uint64_t player2_board,
    bool isPlayer1Turn,
    uint64_t rng_seed
) {
#pragma HLS INTERFACE s_axilite port=player1_board
#pragma HLS INTERFACE s_axilite port=player2_board
#pragma HLS INTERFACE s_axilite port=isPlayer1Turn
#pragma HLS INTERFACE s_axilite port=rng_seed
#pragma HLS INTERFACE s_axilite port=return

    // reconstruct board state
    HexHLS board;
    board.init();
    board.player1_ = player1_board;
    board.player2_ = player2_board;
    board.isPlayer1Turn_ = isPlayer1Turn;
    board.lastMove_ = -1;

    uint64_t rng_state = rng_seed;
    if (rng_state == 0) rng_state = 1;

    // play random moves until someone wins
    int legalActions[BOARD_CELLS];
    ROLLOUT_LOOP: for (int depth = 0; depth < BOARD_CELLS; depth++) {
        if (board.checkWin()) {
            // the player who just moved won
            // isPlayer1Turn_ is flipped after each move, so:
            // if isPlayer1Turn_ is true now, player2 just moved and won
            // if isPlayer1Turn_ is false now, player1 just moved and won
            if (!board.isPlayer1Turn_) {
                return 1.0f; // player1 won
            } else {
                return 0.0f; // player2 won
            }
        }

        int numActions = board.getLegalActions(legalActions);
        if (numActions == 0) break;

        // pick random action
        rng_state = xorshift64(rng_state);
        int idx = (int)(rng_state % (uint64_t)numActions);
        board.place(legalActions[idx]);
    }

    // check final state
    if (board.checkWin()) {
        if (!board.isPlayer1Turn_) {
            return 1.0f;
        } else {
            return 0.0f;
        }
    }

    return 0.5f; // draw
}
