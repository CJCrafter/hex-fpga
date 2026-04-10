#include <iostream>
#include <chrono>

#include "hex.h"
#include "MCTSSearcher.h"

#include <limits.h>
#include <stdio.h>

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
    Hex hex(3);
    bool isRED = true;

    while (true) {
        // MCTSSearcher *searcher = new MCTSSearcher(4l); // heap allocate
        // auto t0 = std::chrono::high_resolution_clock::now();
        int action = search(hex, isRED);
        auto t1 = std::chrono::high_resolution_clock::now();
        // double ms = std::chrono::duration<double, std::milli>(t1 - t0).count();
        // delete searcher;
        std::cout << "Made move " + std::to_string(action) << std::endl; // << " (" << ms << " ms)"
        hex.place(action);
        std::string player = isRED ? "Red" : "Blue";
        isRED = !isRED;
        std::cout << player << std::endl;
        unsigned long long player1 = hex.player1();
        unsigned long long player2 = hex.player2();
        std::cout << "player1:";
        printbits(player1);
        std::cout << std::endl;
        std::cout << "player2:";
        printbits(player2);
        std::cout << std::endl;

        if (hex.checkWin()) {
            std::cout << "The game has been won by " + player << std::endl;
            hex = Hex(3);
            break;
        }
    }

    return 0;
}
