#include "hex.h"

Hex::Hex(int size)
    : size_(size), isPlayer1Turn_(true), lastMove_(-1), player1_(0), player2_(0) {
    if (size >= 7) {
        // throw std::invalid_argument("size must be less than 7");
    }

    is_first = true;

    // all valid board bits
    boardMask_ = (1ULL << (size * size)) - 1;

    // column masks for preventing wrap on horizontal shifts
    // build column masks first, then complement
    uint64_t leftColMask = 0;
    uint64_t rightColMask = 0;
    for (int r = 0; r < size; r++) {
        leftColMask |= 1ULL << (r * size);
        rightColMask |= 1ULL << (r * size + size - 1);
    }
    notLeftCol_ = ~leftColMask & boardMask_;
    notRightCol_ = ~rightColMask & boardMask_;

    // edge masks for win detection
    // player 1 connects top row to bottom row
    topRow_ = (1ULL << size) - 1;
    bottomRow_ = topRow_ << (size * (size - 1));

    // player 2 connects left col to right col
    leftCol_ = 0;
    rightCol_ = 0;
    for (int r = 0; r < size; r++) {
        leftCol_ |= 1ULL << (r * size);
        rightCol_ |= 1ULL << (r * size + size - 1);
    }
}

void Hex::place(int position) {
    uint64_t bit = 1ULL << position;

    if (position < 0 || position >= size_ * size_) {
        // throw std::invalid_argument("position out of bounds");
    }
    if ((player1_ | player2_) & bit && !is_first) {
        // throw std::invalid_argument("position already occupied");
    }

    if (isPlayer1Turn_) {
        player1_ |= bit;
    } else {
        player2_ |= bit;
        is_first = false;
    }



    lastMove_ = position;
    isPlayer1Turn_ = !isPlayer1Turn_;
}

uint64_t Hex::flood(uint64_t seed, uint64_t board) const {
    uint64_t fill = seed & board;
    uint64_t prev;

    do {
        prev = fill;
        uint64_t neighbors =
                ((fill & notRightCol_) << 1) // right (col+1): don't shift from rightmost col
                | ((fill & notLeftCol_) >> 1) // left (col-1): don't shift from leftmost col
                | (fill << size_) // down (row+1, same col)
                | (fill >> size_) // up (row-1, same col)
                | ((fill & notLeftCol_) << (size_ - 1)) // down-left (row+1, col-1)
                | ((fill & notRightCol_) >> (size_ - 1)); // up-right (row-1, col+1)
        fill |= (neighbors & board);
        fill &= boardMask_;
    } while (fill != prev);

    return fill;
}

bool Hex::checkWin() const {
    if (lastMove_ < 0) return false;

    uint64_t seed = 1ULL << lastMove_;

    // last move was made by the opposite of current turn
    if (!isPlayer1Turn_) {
        // player 1 just moved
        uint64_t connected = flood(seed, player1_);
        return (connected & topRow_) && (connected & bottomRow_);
    } else {
        // player 2 just moved
        uint64_t connected = flood(seed, player2_);
        return (connected & leftCol_) && (connected & rightCol_);
    }
}
