cmake_minimum_required(VERSION 4.1)
project(MCTSHex)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(MCTSHex
        mcts_tree.cpp
        mcts_tree.h
        GameState.cpp
        GameState.h
#        mcts_searcher.cpp
#        mcts_searcher.h
#        RolloutSTate.cpp
#        RolloutState.h
        hex.h
        hex.cpp
        main.cpp
        MCTSSearcher.cpp
        MCTSSearcher.h
        rand.cpp
        rand.h)
