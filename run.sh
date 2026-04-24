mkdir -p build_sw
g++ -std=c++17 -O3 -DNDEBUG -DMCTS_HLS_TYPES=0 -I. \
main_sw.cpp GameState.cpp MCTSSearcher.cpp rand.cpp \
-o build_sw/main_sw_cpu

./build_sw/main_sw_cpu
