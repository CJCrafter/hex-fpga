#include "hex.h"

Hex::Hex(int size)
    : size_(size), isPlayer1Turn_(true), lastMove_(-1), player1_(0), player2_(0) {
    if (size >= 7) {
        throw std::invalid_argument("size must be less than 7");
    }

    // all valid board bits
    boardMask_ = (1ULL << (size * size)) - 1;

    // column masks for preventing wrap on horizontal shifts
    notLeftCol_ = 0;
    notRightCol_ = 0;
    for (int r = 0; r < size; r++) {
        notLeftCol_ |= ~(1ULL << (r * size));
        notRightCol_ |= ~(1ULL << (r * size + size - 1));
    }
    notLeftCol_ &= boardMask_;
    notRightCol_ &= boardMask_;

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
        throw std::invalid_argument("position out of bounds");
    }
    if ((player1_ | player2_) & bit) {
        throw std::invalid_argument("position already occupied");
    }

    if (isPlayer1Turn_) {
        player1_ |= bit;
    } else {
        player2_ |= bit;
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
                ((fill << 1) & notRightCol_) // right
                | ((fill >> 1) & notLeftCol_) // left
                | (fill << size_) // down-right (row+1, same col)
                | (fill >> size_) // up-left (row-1, same col)
                | ((fill << (size_ - 1)) & notLeftCol_) // down-left (row+1, col-1)
                | ((fill >> (size_ - 1)) & notRightCol_); // up-right (row-1, col+1)
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
