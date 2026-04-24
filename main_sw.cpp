#include <iostream>
#include <chrono>

#include "hex.h"
#include "MCTSSearcher.h"

#include <limits.h>
#include <stdio.h>

#include "config.h"


void printbits(unsigned long long n) {
    unsigned long long i;
    i = 1UL << (sizeof(n) * CHAR_BIT - 1);
    while (i > 0) {
        if (n & i)
            printf("1");
        else
            printf("0");
        i >>= 1;
    }
}

int main() {
    Hex<HEX_SIZE> hex;
    bool isRED = true;

    for (int turn = 0; turn < 3; turn++) {
        auto t0 = std::chrono::high_resolution_clock::now();
        MCTSSearcher<MCTS_TOTAL_SIMS> *searcher = new MCTSSearcher<MCTS_TOTAL_SIMS>(4l);
        int action = searcher->search(hex, isRED);

        auto t1 = std::chrono::high_resolution_clock::now();
        double ms = std::chrono::duration<double, std::milli>(t1 - t0).count();
        // delete searcher;
        delete searcher;
        std::cout << "Made move " + std::to_string(action) << " (" << ms << " ms)" << std::endl; //
        double sims_per_sec = MCTS_TOTAL_SIMS / (ms / 1000.0);
        std::cout << "sims/sec = " << sims_per_sec << "\n";

        hex.place(action);
        std::string player = isRED ? "Red" : "Blue";
        isRED = !isRED;
        std::cout << player << std::endl;
        auto player1 = hex.player1();
        auto player2 = hex.player2();
        std::cout << "player1:";
        printbits((unsigned long long) player1); // todo change this later
        std::cout << std::endl;
        std::cout << "player2:";
        printbits((unsigned long long) player2);
        std::cout << std::endl;

        if (hex.checkWin()) {
            std::cout << "The game has been won by " + player << std::endl;
            hex = Hex<HEX_SIZE>();
            break;
        }
    }

    return 0;
}
