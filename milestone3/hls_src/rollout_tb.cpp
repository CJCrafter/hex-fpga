#include <iostream>
#include "hex_hls.h"

// declare the top function
float rollout_hls(
    uint64_t player1_board,
    uint64_t player2_board,
    bool isPlayer1Turn,
    uint64_t rng_seed
);

int main() {
    // rollout from empty board
    int num_p1_wins = 0;
    int num_runs = 100;

    for (int i = 0; i < num_runs; i++) {
        float result = rollout_hls(0, 0, true, 12345 + i * 7);
        if (result > 0.5f) num_p1_wins++;
    }

    std::cout << "Player 1 wins: " << num_p1_wins << "/" << num_runs << std::endl;

    // rollout from a nearly-won board for player 1
    // player 1 has top 4 rows of left column: positions 0, 5, 10, 15
    // needs position 20 to win
    uint64_t p1 = (1ULL << 0) | (1ULL << 5) | (1ULL << 10) | (1ULL << 15);
    uint64_t p2 = (1ULL << 1) | (1ULL << 6) | (1ULL << 11) | (1ULL << 16);

    int near_win_p1 = 0;
    for (int i = 0; i < num_runs; i++) {
        float result = rollout_hls(p1, p2, true, 99999 + i * 13);
        if (result > 0.5f) near_win_p1++;
    }

    std::cout << "Near-win P1 wins: " << near_win_p1 << "/" << num_runs << std::endl;

    // P1 should win more often from the near-win position
    if (near_win_p1 > num_p1_wins) {
        std::cout << "PASS: Near-win position produces more P1 wins" << std::endl;
    } else {
        std::cout << "FAIL: Expected more P1 wins from near-win position" << std::endl;
    }

    return 0;
}
