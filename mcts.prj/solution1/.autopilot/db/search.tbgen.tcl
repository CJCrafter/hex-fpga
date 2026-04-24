set moduleName search
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 24
set C_modelName {search}
set C_modelType { int 6 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict this_visitCounts { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_meanQ { MEM_WIDTH 20 MEM_SIZE 15300 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_parents { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_firstChilds { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_numChildren { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_nextSiblings { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_numLegalActions { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict this_terminals { MEM_WIDTH 1 MEM_SIZE 5100 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_childActions { MEM_WIDTH 6 MEM_SIZE 5100 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_triedMask { MEM_WIDTH 49 MEM_SIZE 35700 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_isREDs { MEM_WIDTH 1 MEM_SIZE 5100 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_logVisitCounts { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ this_visitCounts int 32 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_meanQ int 20 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_parents int 32 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_firstChilds int 32 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_numChildren int 32 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_nextSiblings int 32 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_numLegalActions int 32 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_terminals int 1 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_childActions int 6 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_triedMask int 49 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_isREDs int 1 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_logVisitCounts int 32 regular {array 5100 { 2 3 } 1 1 }  }
	{ this_rng_read int 6 regular  }
	{ boardState_isPlayer1Turn_s int 1 regular  }
	{ boardState_lastMove_s int 32 regular  }
	{ boardState_player1_s int 49 regular  }
	{ boardState_player2_s int 49 regular  }
	{ isRED uint 1 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "this_visitCounts", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_meanQ", "interface" : "memory", "bitwidth" : 20, "direction" : "READWRITE"} , 
 	{ "Name" : "this_parents", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_firstChilds", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_numChildren", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_nextSiblings", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_numLegalActions", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_terminals", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "this_childActions", "interface" : "memory", "bitwidth" : 6, "direction" : "READWRITE"} , 
 	{ "Name" : "this_triedMask", "interface" : "memory", "bitwidth" : 49, "direction" : "READWRITE"} , 
 	{ "Name" : "this_isREDs", "interface" : "memory", "bitwidth" : 1, "direction" : "READWRITE"} , 
 	{ "Name" : "this_logVisitCounts", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "this_rng_read", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "boardState_isPlayer1Turn_s", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "boardState_lastMove_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "boardState_player1_s", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "boardState_player2_s", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "isRED", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 6} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_visitCounts_address0 sc_out sc_lv 13 signal 0 } 
	{ this_visitCounts_ce0 sc_out sc_logic 1 signal 0 } 
	{ this_visitCounts_we0 sc_out sc_logic 1 signal 0 } 
	{ this_visitCounts_d0 sc_out sc_lv 32 signal 0 } 
	{ this_visitCounts_q0 sc_in sc_lv 32 signal 0 } 
	{ this_meanQ_address0 sc_out sc_lv 13 signal 1 } 
	{ this_meanQ_ce0 sc_out sc_logic 1 signal 1 } 
	{ this_meanQ_we0 sc_out sc_logic 1 signal 1 } 
	{ this_meanQ_d0 sc_out sc_lv 20 signal 1 } 
	{ this_meanQ_q0 sc_in sc_lv 20 signal 1 } 
	{ this_parents_address0 sc_out sc_lv 13 signal 2 } 
	{ this_parents_ce0 sc_out sc_logic 1 signal 2 } 
	{ this_parents_we0 sc_out sc_logic 1 signal 2 } 
	{ this_parents_d0 sc_out sc_lv 32 signal 2 } 
	{ this_parents_q0 sc_in sc_lv 32 signal 2 } 
	{ this_firstChilds_address0 sc_out sc_lv 13 signal 3 } 
	{ this_firstChilds_ce0 sc_out sc_logic 1 signal 3 } 
	{ this_firstChilds_we0 sc_out sc_logic 1 signal 3 } 
	{ this_firstChilds_d0 sc_out sc_lv 32 signal 3 } 
	{ this_firstChilds_q0 sc_in sc_lv 32 signal 3 } 
	{ this_numChildren_address0 sc_out sc_lv 13 signal 4 } 
	{ this_numChildren_ce0 sc_out sc_logic 1 signal 4 } 
	{ this_numChildren_we0 sc_out sc_logic 1 signal 4 } 
	{ this_numChildren_d0 sc_out sc_lv 32 signal 4 } 
	{ this_numChildren_q0 sc_in sc_lv 32 signal 4 } 
	{ this_nextSiblings_address0 sc_out sc_lv 13 signal 5 } 
	{ this_nextSiblings_ce0 sc_out sc_logic 1 signal 5 } 
	{ this_nextSiblings_we0 sc_out sc_logic 1 signal 5 } 
	{ this_nextSiblings_d0 sc_out sc_lv 32 signal 5 } 
	{ this_nextSiblings_q0 sc_in sc_lv 32 signal 5 } 
	{ this_numLegalActions_address0 sc_out sc_lv 13 signal 6 } 
	{ this_numLegalActions_ce0 sc_out sc_logic 1 signal 6 } 
	{ this_numLegalActions_we0 sc_out sc_logic 1 signal 6 } 
	{ this_numLegalActions_d0 sc_out sc_lv 32 signal 6 } 
	{ this_numLegalActions_q0 sc_in sc_lv 32 signal 6 } 
	{ this_terminals_address0 sc_out sc_lv 13 signal 7 } 
	{ this_terminals_ce0 sc_out sc_logic 1 signal 7 } 
	{ this_terminals_we0 sc_out sc_logic 1 signal 7 } 
	{ this_terminals_d0 sc_out sc_lv 1 signal 7 } 
	{ this_terminals_q0 sc_in sc_lv 1 signal 7 } 
	{ this_childActions_address0 sc_out sc_lv 13 signal 8 } 
	{ this_childActions_ce0 sc_out sc_logic 1 signal 8 } 
	{ this_childActions_we0 sc_out sc_logic 1 signal 8 } 
	{ this_childActions_d0 sc_out sc_lv 6 signal 8 } 
	{ this_childActions_q0 sc_in sc_lv 6 signal 8 } 
	{ this_triedMask_address0 sc_out sc_lv 13 signal 9 } 
	{ this_triedMask_ce0 sc_out sc_logic 1 signal 9 } 
	{ this_triedMask_we0 sc_out sc_logic 1 signal 9 } 
	{ this_triedMask_d0 sc_out sc_lv 49 signal 9 } 
	{ this_triedMask_q0 sc_in sc_lv 49 signal 9 } 
	{ this_isREDs_address0 sc_out sc_lv 13 signal 10 } 
	{ this_isREDs_ce0 sc_out sc_logic 1 signal 10 } 
	{ this_isREDs_we0 sc_out sc_logic 1 signal 10 } 
	{ this_isREDs_d0 sc_out sc_lv 1 signal 10 } 
	{ this_isREDs_q0 sc_in sc_lv 1 signal 10 } 
	{ this_logVisitCounts_address0 sc_out sc_lv 13 signal 11 } 
	{ this_logVisitCounts_ce0 sc_out sc_logic 1 signal 11 } 
	{ this_logVisitCounts_we0 sc_out sc_logic 1 signal 11 } 
	{ this_logVisitCounts_d0 sc_out sc_lv 32 signal 11 } 
	{ this_logVisitCounts_q0 sc_in sc_lv 32 signal 11 } 
	{ this_rng_read sc_in sc_lv 6 signal 12 } 
	{ boardState_isPlayer1Turn_s sc_in sc_lv 1 signal 13 } 
	{ boardState_lastMove_s sc_in sc_lv 32 signal 14 } 
	{ boardState_player1_s sc_in sc_lv 49 signal 15 } 
	{ boardState_player2_s sc_in sc_lv 49 signal 16 } 
	{ isRED sc_in sc_lv 1 signal 17 } 
	{ ap_return sc_out sc_lv 6 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_visitCounts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "address0" }} , 
 	{ "name": "this_visitCounts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "ce0" }} , 
 	{ "name": "this_visitCounts_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "we0" }} , 
 	{ "name": "this_visitCounts_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "d0" }} , 
 	{ "name": "this_visitCounts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "q0" }} , 
 	{ "name": "this_meanQ_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_meanQ", "role": "address0" }} , 
 	{ "name": "this_meanQ_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_meanQ", "role": "ce0" }} , 
 	{ "name": "this_meanQ_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_meanQ", "role": "we0" }} , 
 	{ "name": "this_meanQ_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "this_meanQ", "role": "d0" }} , 
 	{ "name": "this_meanQ_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "this_meanQ", "role": "q0" }} , 
 	{ "name": "this_parents_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_parents", "role": "address0" }} , 
 	{ "name": "this_parents_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_parents", "role": "ce0" }} , 
 	{ "name": "this_parents_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_parents", "role": "we0" }} , 
 	{ "name": "this_parents_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_parents", "role": "d0" }} , 
 	{ "name": "this_parents_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_parents", "role": "q0" }} , 
 	{ "name": "this_firstChilds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_firstChilds", "role": "address0" }} , 
 	{ "name": "this_firstChilds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_firstChilds", "role": "ce0" }} , 
 	{ "name": "this_firstChilds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_firstChilds", "role": "we0" }} , 
 	{ "name": "this_firstChilds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_firstChilds", "role": "d0" }} , 
 	{ "name": "this_firstChilds_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_firstChilds", "role": "q0" }} , 
 	{ "name": "this_numChildren_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_numChildren", "role": "address0" }} , 
 	{ "name": "this_numChildren_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_numChildren", "role": "ce0" }} , 
 	{ "name": "this_numChildren_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_numChildren", "role": "we0" }} , 
 	{ "name": "this_numChildren_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_numChildren", "role": "d0" }} , 
 	{ "name": "this_numChildren_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_numChildren", "role": "q0" }} , 
 	{ "name": "this_nextSiblings_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_nextSiblings", "role": "address0" }} , 
 	{ "name": "this_nextSiblings_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_nextSiblings", "role": "ce0" }} , 
 	{ "name": "this_nextSiblings_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_nextSiblings", "role": "we0" }} , 
 	{ "name": "this_nextSiblings_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_nextSiblings", "role": "d0" }} , 
 	{ "name": "this_nextSiblings_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_nextSiblings", "role": "q0" }} , 
 	{ "name": "this_numLegalActions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_numLegalActions", "role": "address0" }} , 
 	{ "name": "this_numLegalActions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_numLegalActions", "role": "ce0" }} , 
 	{ "name": "this_numLegalActions_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_numLegalActions", "role": "we0" }} , 
 	{ "name": "this_numLegalActions_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_numLegalActions", "role": "d0" }} , 
 	{ "name": "this_numLegalActions_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_numLegalActions", "role": "q0" }} , 
 	{ "name": "this_terminals_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_terminals", "role": "address0" }} , 
 	{ "name": "this_terminals_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_terminals", "role": "ce0" }} , 
 	{ "name": "this_terminals_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_terminals", "role": "we0" }} , 
 	{ "name": "this_terminals_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "this_terminals", "role": "d0" }} , 
 	{ "name": "this_terminals_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "this_terminals", "role": "q0" }} , 
 	{ "name": "this_childActions_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_childActions", "role": "address0" }} , 
 	{ "name": "this_childActions_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_childActions", "role": "ce0" }} , 
 	{ "name": "this_childActions_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_childActions", "role": "we0" }} , 
 	{ "name": "this_childActions_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "this_childActions", "role": "d0" }} , 
 	{ "name": "this_childActions_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "this_childActions", "role": "q0" }} , 
 	{ "name": "this_triedMask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_triedMask", "role": "address0" }} , 
 	{ "name": "this_triedMask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_triedMask", "role": "ce0" }} , 
 	{ "name": "this_triedMask_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_triedMask", "role": "we0" }} , 
 	{ "name": "this_triedMask_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "this_triedMask", "role": "d0" }} , 
 	{ "name": "this_triedMask_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "this_triedMask", "role": "q0" }} , 
 	{ "name": "this_isREDs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_isREDs", "role": "address0" }} , 
 	{ "name": "this_isREDs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_isREDs", "role": "ce0" }} , 
 	{ "name": "this_isREDs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_isREDs", "role": "we0" }} , 
 	{ "name": "this_isREDs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "this_isREDs", "role": "d0" }} , 
 	{ "name": "this_isREDs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "this_isREDs", "role": "q0" }} , 
 	{ "name": "this_logVisitCounts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "address0" }} , 
 	{ "name": "this_logVisitCounts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "ce0" }} , 
 	{ "name": "this_logVisitCounts_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "we0" }} , 
 	{ "name": "this_logVisitCounts_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "d0" }} , 
 	{ "name": "this_logVisitCounts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "q0" }} , 
 	{ "name": "this_rng_read", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "this_rng_read", "role": "default" }} , 
 	{ "name": "boardState_isPlayer1Turn_s", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "boardState_isPlayer1Turn_s", "role": "default" }} , 
 	{ "name": "boardState_lastMove_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "boardState_lastMove_s", "role": "default" }} , 
 	{ "name": "boardState_player1_s", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "boardState_player1_s", "role": "default" }} , 
 	{ "name": "boardState_player2_s", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "boardState_player2_s", "role": "default" }} , 
 	{ "name": "isRED", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "isRED", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	search {
		this_visitCounts {Type IO LastRead 0 FirstWrite -1}
		this_meanQ {Type IO LastRead 46 FirstWrite -1}
		this_parents {Type IO LastRead 0 FirstWrite -1}
		this_firstChilds {Type IO LastRead 6 FirstWrite 2}
		this_numChildren {Type IO LastRead 1 FirstWrite 5}
		this_nextSiblings {Type IO LastRead 0 FirstWrite -1}
		this_numLegalActions {Type IO LastRead 1 FirstWrite 2}
		this_terminals {Type IO LastRead 11 FirstWrite 5}
		this_childActions {Type IO LastRead 7 FirstWrite 5}
		this_triedMask {Type IO LastRead 2 FirstWrite 5}
		this_isREDs {Type IO LastRead 5 FirstWrite -1}
		this_logVisitCounts {Type IO LastRead 3 FirstWrite 7}
		this_rng_read {Type I LastRead 0 FirstWrite -1}
		boardState_isPlayer1Turn_s {Type I LastRead 2 FirstWrite -1}
		boardState_lastMove_s {Type I LastRead 2 FirstWrite -1}
		boardState_player1_s {Type I LastRead 0 FirstWrite -1}
		boardState_player2_s {Type I LastRead 0 FirstWrite -1}
		isRED {Type I LastRead 2 FirstWrite -1}
		log_apfixed_reduce_log_inverse_lut_table_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}
	search_Pipeline_VITIS_LOOP_42_1 {
		gameState_legalActionMap {Type I LastRead 0 FirstWrite -1}
		numLegalActions_out {Type O LastRead -1 FirstWrite 1}}
	forward {
		this_visitCounts {Type IO LastRead 0 FirstWrite -1}
		this_meanQ {Type IO LastRead 46 FirstWrite -1}
		this_parents {Type IO LastRead 0 FirstWrite -1}
		this_firstChilds {Type IO LastRead 6 FirstWrite 5}
		this_numChildren {Type IO LastRead 1 FirstWrite 5}
		this_nextSiblings {Type IO LastRead 0 FirstWrite -1}
		this_numLegalActions {Type IO LastRead 1 FirstWrite 5}
		this_terminals {Type IO LastRead 11 FirstWrite 5}
		this_childActions {Type IO LastRead 7 FirstWrite 5}
		this_triedMask {Type IO LastRead 2 FirstWrite 5}
		this_isREDs {Type IO LastRead 5 FirstWrite -1}
		this_logVisitCounts {Type IO LastRead 3 FirstWrite 7}
		this_nextFree_read {Type I LastRead 0 FirstWrite -1}
		this_rng_read {Type I LastRead 0 FirstWrite -1}
		gameState_legalActionMap {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_isPlayer1Turn_s {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_lastMove_s {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player1_s {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player2_s {Type I LastRead 0 FirstWrite -1}
		log_apfixed_reduce_log_inverse_lut_table_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}
	forward_Pipeline_VITIS_LOOP_140_2 {
		bestChildNode_7 {Type I LastRead 0 FirstWrite -1}
		this_meanQ {Type I LastRead 46 FirstWrite -1}
		this_visitCounts {Type I LastRead 0 FirstWrite -1}
		logVisitCount {Type I LastRead 0 FirstWrite -1}
		this_nextSiblings {Type I LastRead 0 FirstWrite -1}
		bestChildNode_out {Type O LastRead -1 FirstWrite 47}}
	sqrt_fixed_32_16_s {
		x {Type I LastRead 0 FirstWrite -1}}
	forward_Pipeline_VITIS_LOOP_73_1 {
		untried {Type I LastRead 0 FirstWrite -1}
		action_out {Type O LastRead -1 FirstWrite 0}}
	forward_Pipeline_VITIS_LOOP_114_14 {
		fill_10 {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player2_7 {Type I LastRead 0 FirstWrite -1}
		prev_8_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}}
	forward_Pipeline_VITIS_LOOP_114_1 {
		fill_9 {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player1_7 {Type I LastRead 0 FirstWrite -1}
		prev_out {Type O LastRead -1 FirstWrite 0}}
	rollout {
		this_rng_read {Type I LastRead 0 FirstWrite -1}
		gameState_legalActionMap {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_isPlayer1Turn_s {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_lastMove_s {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player1_s {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player2_s {Type I LastRead 0 FirstWrite -1}}
	rollout_Pipeline_VITIS_LOOP_114_1 {
		fill_4 {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player1_2 {Type I LastRead 0 FirstWrite -1}
		prev_out {Type O LastRead -1 FirstWrite 0}}
	rollout_Pipeline_VITIS_LOOP_114_11 {
		fill_5 {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player2_2 {Type I LastRead 0 FirstWrite -1}
		prev_3_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}}
	rollout_Pipeline_VITIS_LOOP_114_12 {
		connected {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player1_2 {Type I LastRead 0 FirstWrite -1}
		prev_4_out {Type O LastRead -1 FirstWrite 0}}
	rollout_Pipeline_VITIS_LOOP_114_13 {
		connected_6 {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player2_2 {Type I LastRead 0 FirstWrite -1}
		prev_5_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}}
	rollout_Pipeline_VITIS_LOOP_230_3 {
		gameState_legalActionMap_2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		action_2_out {Type O LastRead -1 FirstWrite 1}}
	forward_Pipeline_VITIS_LOOP_114_15 {
		connected {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player1_8 {Type I LastRead 0 FirstWrite -1}
		prev_9_out {Type O LastRead -1 FirstWrite 0}}
	forward_Pipeline_VITIS_LOOP_114_16 {
		connected_12 {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player2_8 {Type I LastRead 0 FirstWrite -1}
		prev_10_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}}
	forward_Pipeline_VITIS_LOOP_259_1 {
		node_2 {Type I LastRead 0 FirstWrite -1}
		reward_2 {Type I LastRead 0 FirstWrite -1}
		this_visitCounts {Type IO LastRead 0 FirstWrite 1}
		zext_ln125 {Type I LastRead 0 FirstWrite -1}
		this_meanQ {Type IO LastRead 0 FirstWrite 52}
		visitCount_cast3 {Type I LastRead 0 FirstWrite -1}
		this_logVisitCounts {Type O LastRead -1 FirstWrite 7}
		this_parents {Type I LastRead 0 FirstWrite -1}
		this_isREDs {Type I LastRead 0 FirstWrite -1}
		conv7_i_i159_i {Type I LastRead 0 FirstWrite -1}
		log_apfixed_reduce_log_inverse_lut_table_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}
	log_32_16_s {
		x {Type I LastRead 0 FirstWrite -1}
		log_apfixed_reduce_log_inverse_lut_table_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}
	search_Pipeline_VITIS_LOOP_27_1 {
		bestChildNode_3 {Type I LastRead 0 FirstWrite -1}
		this_visitCounts {Type I LastRead 0 FirstWrite -1}
		this_nextSiblings {Type I LastRead 0 FirstWrite -1}
		bestChildNode_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_visitCounts { ap_memory {  { this_visitCounts_address0 mem_address 1 13 }  { this_visitCounts_ce0 mem_ce 1 1 }  { this_visitCounts_we0 mem_we 1 1 }  { this_visitCounts_d0 mem_din 1 32 }  { this_visitCounts_q0 mem_dout 0 32 } } }
	this_meanQ { ap_memory {  { this_meanQ_address0 mem_address 1 13 }  { this_meanQ_ce0 mem_ce 1 1 }  { this_meanQ_we0 mem_we 1 1 }  { this_meanQ_d0 mem_din 1 20 }  { this_meanQ_q0 mem_dout 0 20 } } }
	this_parents { ap_memory {  { this_parents_address0 mem_address 1 13 }  { this_parents_ce0 mem_ce 1 1 }  { this_parents_we0 mem_we 1 1 }  { this_parents_d0 mem_din 1 32 }  { this_parents_q0 mem_dout 0 32 } } }
	this_firstChilds { ap_memory {  { this_firstChilds_address0 mem_address 1 13 }  { this_firstChilds_ce0 mem_ce 1 1 }  { this_firstChilds_we0 mem_we 1 1 }  { this_firstChilds_d0 mem_din 1 32 }  { this_firstChilds_q0 mem_dout 0 32 } } }
	this_numChildren { ap_memory {  { this_numChildren_address0 mem_address 1 13 }  { this_numChildren_ce0 mem_ce 1 1 }  { this_numChildren_we0 mem_we 1 1 }  { this_numChildren_d0 mem_din 1 32 }  { this_numChildren_q0 mem_dout 0 32 } } }
	this_nextSiblings { ap_memory {  { this_nextSiblings_address0 mem_address 1 13 }  { this_nextSiblings_ce0 mem_ce 1 1 }  { this_nextSiblings_we0 mem_we 1 1 }  { this_nextSiblings_d0 mem_din 1 32 }  { this_nextSiblings_q0 mem_dout 0 32 } } }
	this_numLegalActions { ap_memory {  { this_numLegalActions_address0 mem_address 1 13 }  { this_numLegalActions_ce0 mem_ce 1 1 }  { this_numLegalActions_we0 mem_we 1 1 }  { this_numLegalActions_d0 mem_din 1 32 }  { this_numLegalActions_q0 mem_dout 0 32 } } }
	this_terminals { ap_memory {  { this_terminals_address0 mem_address 1 13 }  { this_terminals_ce0 mem_ce 1 1 }  { this_terminals_we0 mem_we 1 1 }  { this_terminals_d0 mem_din 1 1 }  { this_terminals_q0 mem_dout 0 1 } } }
	this_childActions { ap_memory {  { this_childActions_address0 mem_address 1 13 }  { this_childActions_ce0 mem_ce 1 1 }  { this_childActions_we0 mem_we 1 1 }  { this_childActions_d0 mem_din 1 6 }  { this_childActions_q0 mem_dout 0 6 } } }
	this_triedMask { ap_memory {  { this_triedMask_address0 mem_address 1 13 }  { this_triedMask_ce0 mem_ce 1 1 }  { this_triedMask_we0 mem_we 1 1 }  { this_triedMask_d0 mem_din 1 49 }  { this_triedMask_q0 mem_dout 0 49 } } }
	this_isREDs { ap_memory {  { this_isREDs_address0 mem_address 1 13 }  { this_isREDs_ce0 mem_ce 1 1 }  { this_isREDs_we0 mem_we 1 1 }  { this_isREDs_d0 mem_din 1 1 }  { this_isREDs_q0 mem_dout 0 1 } } }
	this_logVisitCounts { ap_memory {  { this_logVisitCounts_address0 mem_address 1 13 }  { this_logVisitCounts_ce0 mem_ce 1 1 }  { this_logVisitCounts_we0 mem_we 1 1 }  { this_logVisitCounts_d0 mem_din 1 32 }  { this_logVisitCounts_q0 mem_dout 0 32 } } }
	this_rng_read { ap_none {  { this_rng_read in_data 0 6 } } }
	boardState_isPlayer1Turn_s { ap_none {  { boardState_isPlayer1Turn_s in_data 0 1 } } }
	boardState_lastMove_s { ap_none {  { boardState_lastMove_s in_data 0 32 } } }
	boardState_player1_s { ap_none {  { boardState_player1_s in_data 0 49 } } }
	boardState_player2_s { ap_none {  { boardState_player2_s in_data 0 49 } } }
	isRED { ap_none {  { isRED in_data 0 1 } } }
}
