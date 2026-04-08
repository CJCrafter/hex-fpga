//
// Created by Aakash Kumar on 4/7/26.
//

#ifndef MCTSHEX_MCTSSEARCHER_H
#define MCTSHEX_MCTSSEARCHER_H

#define MAX_NODES 200000
#include "GameState.h"
#include "hex.h"

class MCTSSearcher {
public:
    int visitCounts[MAX_NODES]{};
    double returnSums[MAX_NODES]{};
    int parents[MAX_NODES]{};
    int childrenStarts[MAX_NODES]{};
    int childrenEnds[MAX_NODES]{};
    bool expandeds[MAX_NODES]{};
    bool terminals[MAX_NODES]{};
    // mapping from parent to child node which action was taken to get from parent to child
    int childActions[MAX_NODES]{};
    bool isREDs[MAX_NODES]{};
    int nextFree;

    MCTSSearcher() {
        nextFree = 1;
    }

    int search(Hex boardState);

    int search(Hex boardState, bool isRED);

    void expand(int parent, GameState gameState);

    void createNode(int parent, int action);

    void mainLoop(Hex boardState);

    void forward(GameState gameState);

    void backup(double reward, int artificialLeaf);

    static double rollout(GameState gameState);
};


#endif //MCTSHEX_MCTSSEARCHER_H
