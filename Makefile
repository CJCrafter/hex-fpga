#==========================================================================
# Makefile
#==========================================================================
# @brief: A makefile the compiles and synthesizes the cordic program
# @author: ECE6775 Cornell University
#          Francesco Ciraolo
#
# @desc: 1. "make" runs csim by default
#        2. "make csim" compiles & executes the fixed-point implementation
#        3. "make clean" cleans up the directory

# Define paths and sources, absolute paths required
ROOT_DIR=$(shell pwd)
SRC_PATH=$(shell pwd)
BUILD_PATH=$(shell pwd)/build
HW_DUT_PATH=$(BUILD_PATH)/hw_dut
WORKSPACE_PATH=$(shell pwd)/workspace
DUT_SRCS=$(SRC_PATH)/dut.cpp $(SRC_PATH)/GameState.cpp $(SRC_PATH)/MCTSSearcher.cpp $(SRC_PATH)/rand.cpp
TEST_SRC=$(SRC_PATH)/main.cpp
ALL_SRC=$(DUT_SRCS) $(TEST_SRC) $(SRC_PATH)/dut.h $(SRC_PATH)/hex.h $(SRC_PATH)/GameState.h $(SRC_PATH)/MCTSSearcher.h $(SRC_PATH)/rand.h
KRIA_DIR=$(shell pwd)/kria_dir
RESULTS_DIR=$(shell pwd)/result

# Extract Vivado HLS include path
XILINX_VITIS?=/scratch/Xilinx/2025.1/Vitis
XILINX_VIVADO?=/scratch/Xilinx/2025.1/Vivado
XIL_HLS=source $(XILINX_VITIS)/settings64.sh; vitis-run --mode hls --tcl 	
XIL_VIVADO=source $(XILINX_VIVADO)/settings64.sh; vivado -mode batch -source
VHLS_INC=$(XILINX_VITIS)/include

CFLAGS = -g -I${VHLS_INC} -I$(SRC_PATH) -DHLS_NO_XIL_FPO_LIB -std=c++11 -O3

TCL_NAME?=run.tcl
BIT_TCL?=run_bitstream.tcl
HLS_PRJ?=mcts.prj

.PHONY: all mcts csim bitstream clean

all: bitstream deploy

mcts: ${BUILD_PATH}/mcts

csim: ${RESULTS_DIR}/mcts_csim.txt

dut: ${HW_DUT_PATH}/dut.v

bitstream: ${BUILD_PATH}/bitstream.bit

deploy: ${BUILD_PATH}/bitstream.bit
	mkdir -p ${KRIA_DIR}
	cp ${BUILD_PATH}/bitstream.bit ${KRIA_DIR}/
	cp ${SRC_PATH}/host.cpp ${SRC_PATH}/host.h ${KRIA_DIR}/
	cp ${SRC_PATH}/hex.h ${SRC_PATH}/GameState.cpp ${SRC_PATH}/GameState.h ${KRIA_DIR}/

clean:
	rm -rf ${BUILD_PATH}
	rm -rf *.dat *.prj *.log *.jou logs/ .Xil/ ${KRIA_DIR}/ ${RESULTS_DIR}

# === Internal targets ===

${BUILD_PATH}/mcts: ${DUT_SRCS} ${TEST_SRC}
	mkdir -p ${BUILD_PATH}
	g++ ${CFLAGS} $^ -o $@ -lrt

${RESULTS_DIR}/mcts_csim.txt: ${BUILD_PATH}/mcts
	@echo "Running mcts sim..."
	mkdir -p ${RESULTS_DIR}
	$< | tee $@

${HW_DUT_PATH}/dut.v: ${DUT_SRCS}
	@echo "================================================================="
	@echo "Synthesizing mcts with $(TCL_NAME)..."
	@echo "================================================================="
	mkdir -p ${HW_DUT_PATH}
	$(XIL_HLS) artifacts/${TCL_NAME}
	cp ${HLS_PRJ}/solution1/impl/ip/hdl/verilog/* ${HW_DUT_PATH}/


${BUILD_PATH}/bitstream.bit: ${HW_DUT_PATH}/dut.v
	@echo "================================================================="
	@echo "Creating bitstream with Vivado..."
	@echo "================================================================="
	mkdir -p ${BUILD_PATH}
	${XIL_VIVADO} artifacts/${BIT_TCL}
	cp kria.prj/kria.prj.runs/impl_1/design_1_wrapper.bit $@

# digitrec: ${BUILD_PATH}/digitrec

# ${BUILD_PATH}/digitrec: ${DUT_SRC} ${TEST_SRC}
# 	mkdir -p ${BUILD_PATH}
# 	g++ ${CFLAGS} $^ -o $@ -lrt

# ${RESULTS_DIR}/digitrec_csim.txt: ${BUILD_PATH}/digitrec
# 	@echo "Running digitrec sim..."
# 	mkdir -p ${RESULTS_DIR}
# 	$< | tee $@

# # csim: ${RESULTS_DIR}/digitrec_csim.txt
# # 	@echo "Result reorded to $<"

# hw_dut: ${HW_DUT_PATH}
# 	@echo "Synthesizing CORDIC on amdpool ..."
# 	SRC_PATH=${SRC_PATH} TEST_PATH=${SRC_PATH} SKIP_COSIM=1 $(XIL_HLS) artifacts/${TCL_NAME}
# 	cp digitrec.prj/solution1/impl/verilog/* ${HW_DUT_PATH}/

# ${HW_DUT_PATH}:
# 	mkdir -p $@

# ${HW_DUT_PATH}/dut.v: ${DUT_SRC}
# 	@echo "Synthesizing CORDIC on amdpool ..."
# 	SRC_PATH=${SRC_PATH} TEST_PATH=${SRC_PATH} SKIP_COSIM=1 $(XIL_HLS) artifacts/${TCL_NAME}
# 	cp digitrec.prj/solution1/impl/verilog/* ${HW_DUT_PATH}/

# bitstream: hw_dut
# 	${XIL_VIVADO} artifacts/build_bitstream.tcl
# 	cp kria.prj/kria.prj.runs/impl_1/design_1_wrapper.bit ${BUILD_PATH}/bitstream.bit

# ${BUILD_PATH}/bitstream.bit: bitstream

# ${KRIA_DIR}:
# 	mkdir -p $@

# deploy:
# 	mkdir -p ${KRIA_DIR}
# 	cp ${BUILD_PATH}/bitstream.bit ${KRIA_DIR}/
# 	cp -r ${SRC_PATH}/* ${KRIA_DIR}/
# 	cp -r ${KRIA_SRC}/* ${KRIA_DIR}/
# #	cp src/cordic.cpp src/cordic.h src/cordic_test.cpp kria_dir/
# #	cp ${SRC_PATH}/cordic.cpp ${KRIA_DIR}/cordic.cpp
# #	cp ${SRC_PATH}/cordic.h ${KRIA_DIR}/cordic.h
# #	cp ${SRC_PATH}/cordic_test.cpp ${KRIA_DIR}/cordic_test.cpp


	
# # @echo "Synthesizing CORDIC and creating bitstream on amdpool ..."
# # $(XIL_HLS) run.tcl
# # ./run_bitstream.sh

# clean:
# 	rm -rf ${BUILD_PATH}
# 	rm -rf *.dat *.prj *.log *.jou logs/ .Xil/ ${KRIA_DIR}/ ${RESULTS_DIR}
# #	rm -rf zedboard_project* xillydemo.bit
