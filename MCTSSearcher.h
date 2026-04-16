//
// Created by Aakash Kumar on 4/7/26.
//

#ifndef MCTSHEX_MCTSSEARCHER_H
#define MCTSHEX_MCTSSEARCHER_H

// #include <cstring>
#define MAX_NODES 2000
#include "GameState.h"
#include "hex.h"
#include "rand.h"

#include <fstream>


class MCTSSearcher {
public:
    int visitCounts[MAX_NODES]{};
    fixed_point_t returnSums[MAX_NODES]{};
    int parents[MAX_NODES]{};
    int childrenStarts[MAX_NODES]{};
    int childrenEnds[MAX_NODES]{};
    bool expandeds[MAX_NODES]{};
    bool terminals[MAX_NODES]{};
    // mapping from parent to child node which action was taken to get from parent to child
    int childActions[MAX_NODES]{};
    bool isREDs[MAX_NODES]{};
    int nextFree;
    RNG rng;

    explicit MCTSSearcher(uint64_t seed) : nextFree(0), rng(seed) {
        // memset(visitCounts, 0, sizeof(visitCounts));
        // memset(returnSums, 0, sizeof(returnSums));
        // memset(parents, 0, sizeof(parents));
        // memset(childrenStarts, 0, sizeof(childrenStarts));
        // memset(childrenEnds, 0, sizeof(childrenEnds));
        // memset(expandeds, 0, sizeof(expandeds));
        // memset(terminals, 0, sizeof(terminals));
        // memset(childActions, 0, sizeof(childActions));
        // memset(isREDs, 0, sizeof(isREDs));
    }

    int search(Hex<HEX_SIZE> boardState, bool isRED);

    void expand(int parent, GameState boardState);

    void createNode(int parent, int action);

    void mainLoop(Hex<HEX_SIZE> boardState);

    void forward(GameState gameState);

    void backup(fixed_point_t reward, int artificialLeaf);

    fixed_point_t rollout(GameState gameState);
};

int search(Hex<HEX_SIZE> boardState, bool isRED);

#endif //MCTSHEX_MCTSSEARCHER_H
