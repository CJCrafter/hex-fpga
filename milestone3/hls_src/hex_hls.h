#pragma once
#include <cstdint>

// fix board size at compile time for HLS
#define BOARD_SIZE 5
#define BOARD_CELLS (BOARD_SIZE * BOARD_SIZE)

class HexHLS {
public:
    int size_;
    bool isPlayer1Turn_;
    int lastMove_;
    uint64_t player1_;
    uint64_t player2_;
    uint64_t boardMask_;
    uint64_t notLeftCol_;
    uint64_t notRightCol_;
    uint64_t topRow_;
    uint64_t bottomRow_;
    uint64_t leftCol_;
    uint64_t rightCol_;

    void init() {
        size_ = BOARD_SIZE;
        isPlayer1Turn_ = true;
        lastMove_ = -1;
        player1_ = 0;
        player2_ = 0;

        boardMask_ = (1ULL << (BOARD_SIZE * BOARD_SIZE)) - 1;

        uint64_t leftColMask = 0;
        uint64_t rightColMask = 0;
        for (int r = 0; r < BOARD_SIZE; r++) {
            leftColMask  |= 1ULL << (r * BOARD_SIZE);
            rightColMask |= 1ULL << (r * BOARD_SIZE + BOARD_SIZE - 1);
        }
        notLeftCol_  = ~leftColMask  & boardMask_;
        notRightCol_ = ~rightColMask & boardMask_;

        topRow_ = (1ULL << BOARD_SIZE) - 1;
        bottomRow_ = topRow_ << (BOARD_SIZE * (BOARD_SIZE - 1));

        leftCol_ = 0;
        rightCol_ = 0;
        for (int r = 0; r < BOARD_SIZE; r++) {
            leftCol_ |= 1ULL << (r * BOARD_SIZE);
            rightCol_ |= 1ULL << (r * BOARD_SIZE + BOARD_SIZE - 1);
        }
    }

    void place(int position) {
        uint64_t bit = 1ULL << position;
        if (isPlayer1Turn_) {
            player1_ |= bit;
        } else {
            player2_ |= bit;
        }
        lastMove_ = position;
        isPlayer1Turn_ = !isPlayer1Turn_;
    }

    uint64_t flood(uint64_t seed, uint64_t board) const {
        uint64_t fill = seed & board;
        uint64_t prev;
        do {
            prev = fill;
            uint64_t neighbors =
                ((fill & notRightCol_) << 1)
                | ((fill & notLeftCol_) >> 1)
                | (fill << size_)
                | (fill >> size_)
                | ((fill & notLeftCol_) << (size_ - 1))
                | ((fill & notRightCol_) >> (size_ - 1));
            fill |= (neighbors & board);
            fill &= boardMask_;
        } while (fill != prev);
        return fill;
    }

    bool checkWin() const {
        if (lastMove_ < 0) return false;
        uint64_t seed = 1ULL << lastMove_;
        if (!isPlayer1Turn_) {
            uint64_t connected = flood(seed, player1_);
            return (connected & topRow_) && (connected & bottomRow_);
        } else {
            uint64_t connected = flood(seed, player2_);
            return (connected & leftCol_) && (connected & rightCol_);
        }
    }

    int getLegalActions(int legalActions[BOARD_CELLS]) const {
        int count = 0;
        uint64_t occupied = player1_ | player2_;
        for (int i = 0; i < BOARD_CELLS; i++) {
            if (!(occupied & (1ULL << i))) {
                legalActions[count++] = i;
            }
        }
        return count;
    }
};
