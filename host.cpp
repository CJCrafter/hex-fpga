#include <iostream>
#include <chrono>

#include "hex.h"
#include "GameState.h"

#include <limits.h>
#include <stdio.h>

#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <stdint.h>
#include <stdlib.h>

typedef uint32_t bus_t;

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

void write_word(int fdw, bus_t word) {
    // todo make sure this is exactly like lab4's host.cpp
    int nbytes = write(fdw, (void *) &word, sizeof(word));
    if (nbytes < 0) {
        std::cerr << "Error writing to CiFra Openbus device channel: "
                << strerror(errno) << " (" << errno << ")" << std::endl;
        exit(-1);
    }
    if (nbytes < (int) sizeof(word)) {
        std::cerr << "Partial write to CiFra Openbus device channel: expected "
                << sizeof(word) << " bytes, got " << nbytes << " bytes" << std::endl;
        exit(-1);
    }
}

bus_t read_word(int fdr) {
    bus_t word = 0;
    int nbytes = read(fdr, (void *) &word, sizeof(word));
    if (nbytes < 0) {
        std::cerr << "Error reading from CiFra Openbus device channel: "
                << strerror(errno) << " (" << errno << ")" << std::endl;
        exit(-1);
    }
    if (nbytes < (int) sizeof(word)) {
        std::cerr << "Partial read from CiFra Openbus device channel: expected "
                << sizeof(word) << " bytes, got " << nbytes << " bytes" << std::endl;
        exit(-1);
    }
    return word;
}

void write_bitboard(int fdw, Hex<HEX_SIZE>::uintsize_t board) {
    int board_bits = HEX_SIZE * HEX_SIZE;
    int board_words = (board_bits + 31) / 32;

    for (int word = 0; word < board_words; word++) {
        bus_t chunk = 0;

        for (int bit = 0; bit < 32; bit++) {
            int idx = word * 32 + bit;
            if (idx < board_bits) {
                if ((bool) board[idx]) {
                    chunk |= (bus_t(1) << bit);
                }
            }
        }

        write_word(fdw, chunk);
    }
}

void write_gamestate(int fdw, Hex<HEX_SIZE> hex, bool isRED) {
    write_bitboard(fdw, hex.player1());
    write_bitboard(fdw, hex.player2());

    write_word(fdw, (bus_t) isRED);
    write_word(fdw, (bus_t) hex.isPlayer1Turn());
    write_word(fdw, (bus_t) hex.is_first);
    write_word(fdw, (bus_t) (hex.lastMove() + 1));
}

int main() {
    int fdr = open("/dev/cifra_openbus_read_32", O_RDONLY);
    int fdw = open("/dev/cifra_openbus_write_32", O_WRONLY);

    if ((fdr < 0) || (fdw < 0)) {
        fprintf(stderr, "Failed to open CiFra Openbus device channels\n");
        exit(-1);
    }

    Hex<HEX_SIZE> hex;
    bool isRED = true;

    for (int turn = 0; turn < 3; turn++) {
        write_gamestate(fdw, hex, isRED);

        auto t0 = std::chrono::high_resolution_clock::now();
        int action = (int) read_word(fdr);
        auto t1 = std::chrono::high_resolution_clock::now();

        double ms = std::chrono::duration<double, std::milli>(t1 - t0).count();
        std::cout << "Made move " + std::to_string(action) << " (" << ms << " ms)" << std::endl;

        double sims_per_sec = 10000.0 / (ms / 1000.0);
        std::cout << "sims/sec = " << sims_per_sec << "\n";

        hex.place(action);
        std::string player = isRED ? "Red" : "Blue";
        isRED = !isRED;

        std::cout << player << std::endl;
        auto player1 = hex.player1();
        auto player2 = hex.player2();

        std::cout << "player1:";
        printbits((unsigned long long) player1);
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

    close(fdr);
    close(fdw);
    return 0;
}
