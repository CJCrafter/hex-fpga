#!/bin/bash
set -e

VALUES=(0.5 1.0 1.41 2.0 3.0 5.0 8.0)
PROJ=/home/grad1/alanz/cs599n1/hex-fpga
mkdir -p $PROJ/sweep_results $PROJ/build

for C in "${VALUES[@]}"; do
    echo "=== PUCT_C = $C ==="
    
    g++ -g -I/scratch/Xilinx/2025.1/Vitis/include -I$PROJ \
        -DHLS_NO_XIL_FPO_LIB \
        -DPUCT_C_VAL=$C \
        -std=c++11 -O3 \
        $PROJ/dut.cpp $PROJ/GameState.cpp $PROJ/MCTSSearcher.cpp \
        $PROJ/rand.cpp $PROJ/main.cpp \
        -o $PROJ/build/mcts_c${C} -lrt
    
    $PROJ/build/mcts_c${C} 2>&1 | tee $PROJ/sweep_results/puct_c${C}.txt
    echo ""
done

echo ""
echo "Summary:"
printf "%-10s %-25s %-12s\n" "PUCT_C" "moves" "avg_sims/sec"
for C in "${VALUES[@]}"; do
    moves=$(grep "Made move" $PROJ/sweep_results/puct_c${C}.txt | awk '{print $3}' | tr '\n' ',' | sed 's/,$//')
    avg_sps=$(grep "sims/sec" $PROJ/sweep_results/puct_c${C}.txt | awk -F'= ' '{s+=$2; n++} END {if (n>0) printf "%.0f", s/n}')
    printf "%-10s %-25s %-12s\n" "$C" "$moves" "$avg_sps"
done