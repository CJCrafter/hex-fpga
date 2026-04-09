cmake_minimum_required(VERSION 3.10)
project(MCTSHex)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(MCTSHex
        GameState.cpp
        GameState.h
        hex.h
        hex.cpp
        main.cpp
        MCTSSearcher.cpp
        MCTSSearcher.h
        rand.cpp
        rand.h)
