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


inline uct_t mcts_log(uct_t x) { return hls::log(x); }
inline uct_t mcts_sqrt(uct_t x) { return hls::sqrt(x); }

#else
#include <bitset>
#include <cmath>

using fixed_point_t = double;
using uct_t = double;

template<int N>
using bitboard_t = unsigned long long;

inline uct_t mcts_log(uct_t x) { return std::log(x); }
inline uct_t mcts_sqrt(uct_t x) { return std::sqrt(x); }

#endif
