#include <iostream>
#include <chrono>

#include "hex.h"
#include "MCTSSearcher.h"

int main() {
    Hex hex(5);
    bool isRED = true;
    while (true) {
        MCTSSearcher* searcher = new MCTSSearcher(4l); // heap allocate
        auto t0 = std::chrono::high_resolution_clock::now();
        int action = searcher->search(hex, isRED);
        auto t1 = std::chrono::high_resolution_clock::now();
        double ms = std::chrono::duration<double, std::milli>(t1 - t0).count();
        delete searcher;
        std::cout << "Made move " + std::to_string(action) << " (" << ms << " ms)" << std::endl;
        hex.place(action);
        std::string player = isRED ? "Red" : "Blue";
        isRED = !isRED;
        if (hex.checkWin()) {
            std::cout << "The game has been won by " + player << std::endl;
            break;
        }
    }

    return 0;
}