#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and runs the bnn program
#
# @desc: 1. "make" or "make sw" runs software execution by default
#        2. "make fpga" invokes the HW accelerator
#        3. "make clean" cleans up the directory

INC_PATH=/usr/lib/vitis_hls
CFLAGS = -I${INC_PATH} -DHLS_NO_XIL_FPO_LIB -O3

.PHONY: all sw fpga

all: sw

hex-arm: dut.cpp GameState.cpp MCTSSearcher.cpp rand.cpp main.cpp
	g++-13 ${CFLAGS} $^ -o $@

result/hex_arm_sim.txt: hex-arm
	@echo "Compiling & executing hex/MCTS software program on ARM ..."
	mkdir -p result
	./$< | tee $@

sw: result/hex_arm_sim.txt
	@echo "Result saved to $@"

hex-fpga: host.cpp GameState.cpp
	@echo "Compiling host program"
	g++-13 ${CFLAGS} $^ -o $@
	@echo "Make sure bitstream is loaded!"

fpga: hex-fpga
	@echo "Running hex accelerator ..."
	./$<

# Clean up the directory before submission
clean:
	@echo "Clean up output files"
	rm -rf hex-arm vivado_hls.log *.prj result out.dat *~
	rm -rf hex-fpga
