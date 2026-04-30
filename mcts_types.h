#pragma once
#include "config.h"

#if MCTS_HLS_TYPES
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_math.h"

using fixed_point_t = ap_fixed<20, 5>;
using uct_t = ap_fixed<32, 16>;

template<int N>
using bitboard_t = ap_uint<N>;


// uct_t lut[256];
// getLog<uct_t, uct_t>(lut, 7, 8, 1, 0);

constexpr auto log_lookup() {
  uct_t arr[MCTS_TOTAL_SIMS];
  for (int i = 0; i < MCTS_TOTAL_SIMS; i++) {
    arr[i] = hls::log(i);
  }
  return arr;
}


inline uct_t mcts_log(int x) {
  return log_lookup[x];

    // todo: figure out how to use https://docs.amd.com/r/en-US/Vitis_Libraries/dsp/rst/group_func_approx_utils.html_1_1
    //return hls::log(x);
}

inline uct_t mcts_sqrt(uct_t x) { return hls::sqrt(x); }

#else
#include <cmath>

using fixed_point_t = double;
using uct_t = double;

template<int N>
using bitboard_t = unsigned long long;

inline uct_t mcts_log(uct_t x) {
    return std::log(x);
}

inline uct_t mcts_sqrt(uct_t x) {
    return std::sqrt(x);
}

#endif
