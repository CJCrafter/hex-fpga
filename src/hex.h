#pragma once
#include <cstdint>
#include <stdexcept>

class Hex {
public:
  Hex(int size);

  void place(int position);
  bool checkWin() const;

  int size() const { return size_; }
  bool isPlayer1Turn() const { return isPlayer1Turn_; }
  uint64_t player1() const { return player1_; }
  uint64_t player2() const { return player2_; }
  int lastMove() const { return lastMove_; }

private:
  uint64_t flood(uint64_t seed, uint64_t board) const;

  int size_;
  bool isPlayer1Turn_;
  int lastMove_;
  uint64_t player1_;
  uint64_t player2_;
  uint64_t boardMask_;
  uint64_t notLeftCol_;
  uint64_t notRightCol_;
  uint64_t topRow_;
  uint64_t bottomRow_;
  uint64_t leftCol_;
  uint64_t rightCol_;
};
