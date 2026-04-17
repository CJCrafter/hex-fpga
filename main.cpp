#include <iostream>
#include <chrono>

#include "hex.h"
#include "MCTSSearcher.h"

#include <limits.h>
#include <stdio.h>

#include "dut.h"


void printbits(unsigned long long n) {
    unsigned long long i;
    i = 1UL << (sizeof(n) * CHAR_BIT - 1);
    while (i > 0) {
        if (n & i)
            printf("1");
        else
            printf("0");
        i >>= 1;
    }
}

void write_bitboard(hls::stream<bus_t> &strm_in, Hex<HEX_SIZE>::uintsize_t board) {
    int board_bits = HEX_SIZE * HEX_SIZE;
    int board_words = (board_bits + 31) / 32;

    for (int word = 0; word < board_words; word++) {
        bus_t chunk = 0;

        for (int bit = 0; bit < 32; bit++) {
            int idx = word * 32 + bit;
            if (idx < board_bits) {
                chunk[bit] = board[idx];
            }
        }

        strm_in.write(chunk);
    }
}

void write_gamestate(hls::stream<bus_t> &strm_in, Hex<HEX_SIZE> hex, bool isRED) {
    write_bitboard(strm_in, hex.player1());
    write_bitboard(strm_in, hex.player2());

    strm_in.write((bus_t) isRED);
    strm_in.write((bus_t) hex.isPlayer1Turn());
    strm_in.write((bus_t) hex.is_first);
    strm_in.write((bus_t) (hex.lastMove() + 1));
}

int main() {
    Hex<HEX_SIZE> hex;
    bool isRED = true;

    for (int turn = 0; turn < 3; turn++) {
        // MCTSSearcher *searcher = new MCTSSearcher(4l); // heap allocate
        hls::stream<bus_t> dut_in;
        hls::stream<bus_t> dut_out;

        write_gamestate(dut_in, hex, isRED);
        auto t0 = std::chrono::high_resolution_clock::now();
        dut(dut_in, dut_out);
        int action = (int) dut_out.read();

        auto t1 = std::chrono::high_resolution_clock::now();
        double ms = std::chrono::duration<double, std::milli>(t1 - t0).count();
        // delete searcher;
        std::cout << "Made move " + std::to_string(action) << " (" << ms << " ms)" << std::endl; //
        double sims_per_sec = 10000.0 / (ms / 1000.0);
        std::cout << "sims/sec = " << sims_per_sec << "\n";

        hex.place(action);
        std::string player = isRED ? "Red" : "Blue";
        isRED = !isRED;
        std::cout << player << std::endl;
        auto player1 = hex.player1();
        auto player2 = hex.player2();
        std::cout << "player1:";
        printbits((unsigned long long) player1); // todo change this later
        std::cout << std::endl;
        std::cout << "player2:";
        printbits((unsigned long long) player2);
        std::cout << std::endl;

        if (hex.checkWin()) {
            std::cout << "The game has been won by " + player << std::endl;
            hex = Hex<HEX_SIZE>();
            break;
        }
    }

    return 0;
}
