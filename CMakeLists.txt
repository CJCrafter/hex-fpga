cmake_minimum_required(VERSION 3.16)
project(hex_fpga LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(main_sw
    main_sw.cpp
    GameState.cpp
    MCTSSearcher.cpp
    rand.cpp
)

target_include_directories(main_sw PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
)
