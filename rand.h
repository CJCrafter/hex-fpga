//
// Created by Aakash Kumar on 4/7/26.
//

#ifndef MCTSHEX_RAND_H
#define MCTSHEX_RAND_H

#include <cstdint>

struct RNG {
    uint64_t state;

    explicit RNG(uint64_t seed) : state(seed) {
        if (state == 0) state = 1; // xorshift needs nonzero state
    }

    // xorshift64
    uint64_t next() {
        state ^= state << 13;
        state ^= state >> 7;
        state ^= state << 17;
        return state;
    }

    // uniform random int in [0, n)
    int randInt(int n) {
        return static_cast<int>(next() % static_cast<uint64_t>(n));
    }

    // create a child RNG with a derived seed (for splitting across workers)
    RNG split() {
        return RNG(next());
    }
};

#endif //MCTSHEX_RAND_H
