#pragma once

#include "ap_int.h"

template<unsigned int size_>
class Hex {
public:
    typedef ap_uint<size_ * size_> uintsize_t;

    static constexpr uintsize_t boardMask() {
        // return (uintsize_t(1) << (size_ * size_)) - 1;
        return ~(uintsize_t(0));
    }

    static constexpr uintsize_t leftCol() {
        uintsize_t mask = 0;
        for (int r = 0; r < size_; r++)
            mask |= uintsize_t(1) << (r * size_);
        return mask;
    }

    static constexpr uintsize_t rightCol() {
        uintsize_t mask = 0;
        for (int r = 0; r < size_; r++)
            mask |= uintsize_t(1) << (r * size_ + size_ - 1);
        return mask;
    }

    static constexpr uintsize_t notLeftCol() {
        return ~leftCol() & boardMask();
    }

    static constexpr uintsize_t notRightCol() {
        return ~rightCol() & boardMask();
    }

    static constexpr uintsize_t topRow() {
        uintsize_t mask = 0;
        for (int c = 0; c < size_; c++)
            mask |= uintsize_t(1) << c;
        return mask;
    }

    static constexpr uintsize_t bottomRow() {
        uintsize_t mask = 0;
        for (int c = 0; c < size_; c++)
            mask |= uintsize_t(1) << ((size_ - 1) * size_ + c);
        return mask;
    }

    Hex() : isPlayer1Turn_(true), lastMove_(-1), player1_(0), player2_(0),
            is_first(true) {
    }

    void place(int position) {
        uintsize_t bit = uintsize_t(1) << position;

        if (isPlayer1Turn_) {
            player1_ |= bit;
        } else {
            player2_ |= bit;
            // todo: if overlap with player_1, then unset player1s bit
            is_first = false;
        }

        lastMove_ = position;
        isPlayer1Turn_ = !isPlayer1Turn_;
    }

    bool checkWin() const {
        if (lastMove_ < 0) return false;

        uintsize_t seed = uintsize_t(1) << lastMove_;

        if (!isPlayer1Turn_) {
            uintsize_t connected = flood(seed, player1_);
            return (bool) (connected & topRow()) && (bool) (connected & bottomRow());
        } else {
            uintsize_t connected = flood(seed, player2_);
            return (bool) (connected & leftCol()) && (bool) (connected & rightCol());
        }
    }

    int size() const { return size_; }
    bool isPlayer1Turn() const { return isPlayer1Turn_; }
    uintsize_t player1() const { return player1_; }
    uintsize_t player2() const { return player2_; }
    int lastMove() const { return lastMove_; }

    void setPlayer1(uintsize_t player1) {
        player1_ = player1;
    }

    void setPlayer2(uintsize_t player2) {
        player2_ = player2;
    }

    void setLastMove(int lastMove) {
        lastMove_ = lastMove;
    }

    void setPlayer1Turn(bool isPlayer1Turn) {
        isPlayer1Turn_ = isPlayer1Turn;
    }


    bool is_first;

private:
    static uintsize_t flood(uintsize_t seed, uintsize_t board) {
        uintsize_t fill = seed & board;
        uintsize_t prev;

        do {
            prev = fill;
            uintsize_t neighbors =
                    ((fill & notRightCol()) << 1)
                    | ((fill & notLeftCol()) >> 1)
                    | (fill << size_)
                    | (fill >> size_)
                    | ((fill & notLeftCol()) << (size_ - 1))
                    | ((fill & notRightCol()) >> (size_ - 1));
            fill |= (neighbors & board);
            fill &= boardMask();
        } while (fill != prev);

        return fill;
    }

    bool isPlayer1Turn_;
    int lastMove_;
    uintsize_t player1_;
    uintsize_t player2_;
};
