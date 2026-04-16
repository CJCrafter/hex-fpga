#include "dut.h"

#include "MCTSSearcher.h"
#include "hex.h"

void dut(hls::stream<bus_t> &strm_in, hls::stream<bus_t> &strm_out) {
#pragma HLS INTERFACE ap_ctrl_hs port=return
#pragma HLS INTERFACE ap_fifo port=strm_in
#pragma HLS INTERFACE ap_fifo port=strm_out

    const int board_bits = HEX_SIZE * HEX_SIZE;
    const int board_words = (board_bits + 31) / 32;

    Hex<HEX_SIZE>::uintsize_t player1 = 0;
    Hex<HEX_SIZE>::uintsize_t player2 = 0;

    for (int word = 0; word < board_words; word++) {
        bus_t partial = strm_in.read();
        for (int bit = 0; bit < 32; bit++) {
            int idx = word * 32 + bit;
            if (idx < board_bits) {
                player1[idx] = partial[bit];
            }
        }
    }

    for (int word = 0; word < board_words; word++) {
        bus_t partial = strm_in.read();
        for (int bit = 0; bit < 32; bit++) {
            int idx = word * 32 + bit;
            if (idx < board_bits) {
                player2[idx] = partial[bit];
            }
        }
    }

    bool is_red = (strm_in.read() != 0);
    bool is_player1_turn = (strm_in.read() != 0);
    bool is_first = (strm_in.read() != 0);
    int last_move = (int) strm_in.read() - 1;

    Hex<HEX_SIZE> board;
    board.setPlayer1(player1);
    board.setPlayer2(player2);
    board.setPlayer1Turn(is_player1_turn);
    board.setLastMove(last_move);
    board.is_first = is_first;

    int action = search(board, is_red);

    strm_out.write((bus_t) action);
}
