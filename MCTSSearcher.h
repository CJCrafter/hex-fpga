//
// Created by Aakash Kumar on 4/7/26.
//

#ifndef MCTSHEX_MCTSSEARCHER_H
#define MCTSHEX_MCTSSEARCHER_H

// #include <cstring>
#include "GameState.h"
#include "hex.h"
#include "rand.h"
#include "mcts_types.h"

#include <fstream>

// using uct_t   = ap_fixed<32, 16>;     // visit-count casts, log/sqrt, UCT score
template<int TOTAL_SIMS>
class MCTSSearcher {
public:
    static constexpr int MAX_NODES = TOTAL_SIMS + 100;

    int visitCounts[MAX_NODES];
    fixed_point_t meanQ[MAX_NODES];
    int parents[MAX_NODES];
    int firstChilds[MAX_NODES];
    int numChildren[MAX_NODES];
    // #pragma HLS ARRAY_PARTITION variable=numChildren type=complete dim=1
    int nextSiblings[MAX_NODES];
    // #pragma HLS ARRAY_PARTITION variable=nextSiblings type=complete dim=1
    int numLegalActions[MAX_NODES];
    // #pragma HLS ARRAY_PARTITION variable=numLegalActions type=complete dim=1
    // int childrenStarts[MAX_NODES]{};
    // int childrenEnds[MAX_NODES]{};
    // bool expandeds[MAX_NODES]{};
    bool terminals[MAX_NODES];
    // #pragma HLS ARRAY_PARTITION variable=terminals type=complete dim=1
    // mapping from parent to child node which action was taken to get from parent to child
    int childActions[MAX_NODES];
    // #pragma HLS ARRAY_PARTITION variable=childActions type=complete dim=1
    Hex<HEX_SIZE>::uintsize_t triedMask[MAX_NODES];
    // #pragma HLS ARRAY_PARTITION variable=triedMask type=complete dim=1
    bool isREDs[MAX_NODES];
    // #pragma HLS ARRAY_PARTITION variable=isREDs type=complete dim=1
    uct_t logVisitCounts[MAX_NODES];
    // #pragma HLS ARRAY_PARTITION variable=logVisitCounts type=complete dim=1
    int nextFree;
    RNG rng;

    explicit MCTSSearcher(uint64_t seed) : nextFree(0), rng(seed) {
        parents[0] = -1;
        firstChilds[0] = -1;
        numChildren[0] = 0;
        visitCounts[0] = 0;
        meanQ[0] = 0;
        terminals[0] = false;
        triedMask[0] = 0;

        logVisitCounts[0] = 0;
        logVisitCounts[nextFree] = 0;

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

    int expand(int parent, GameState boardState);

    int pickUntriedAction(int parent, GameState boardState);

    void createNode(int parent, int action, GameState boardState);

    void mainLoop(Hex<HEX_SIZE> boardState);

    void forward(GameState gameState);

    void backup(fixed_point_t reward, int artificialLeaf, int visitCount);

    fixed_point_t rollout(GameState gameState, int seed);
};

int search(Hex<HEX_SIZE> boardState, bool isRED);

#endif //MCTSHEX_MCTSSEARCHER_H
