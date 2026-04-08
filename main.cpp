#include <iostream>

#include "hex.h"
#include "MCTSSearcher.h"

int main() {
    Hex hex(5);
    bool isRED = true;
    while (true) {
        MCTSSearcher searcher(4l);
        int action = searcher.search(hex, isRED);
        std::cout << "Made move " + std::to_string(action) << std::endl;
        hex.place(action);
        isRED = !isRED;
        std::string player = isRED ? "Red" : "Blue";
        if (hex.checkWin()) {
            std::cout << "The game has been won by " + player << std::endl;
            break;
        }
    }

    return 0;
}
