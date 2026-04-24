set moduleName dut
set isTopModule 1
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
set C_modelName {dut}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ strm_in int 32 regular {fifo 0 volatile }  }
	{ strm_out int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "strm_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "strm_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_in_dout sc_in sc_lv 32 signal 0 } 
	{ strm_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ strm_in_read sc_out sc_logic 1 signal 0 } 
	{ strm_out_din sc_out sc_lv 32 signal 1 } 
	{ strm_out_full_n sc_in sc_logic 1 signal 1 } 
	{ strm_out_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in", "role": "dout" }} , 
 	{ "name": "strm_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in", "role": "empty_n" }} , 
 	{ "name": "strm_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in", "role": "read" }} , 
 	{ "name": "strm_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out", "role": "din" }} , 
 	{ "name": "strm_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out", "role": "full_n" }} , 
 	{ "name": "strm_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out", "role": "write" }}  ]}

set ArgLastReadFirstWriteLatency {
	dut {
		strm_in {Type I LastRead 7 FirstWrite -1}
		strm_out {Type O LastRead -1 FirstWrite 11}
		log_apfixed_reduce_log_inverse_lut_table_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array {Type I LastRead -1 FirstWrite -1}
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}
	dut_Pipeline_VITIS_LOOP_17_1 {
		strm_in {Type I LastRead 1 FirstWrite -1}
		player1_48_out {Type O LastRead -1 FirstWrite 0}}
	dut_Pipeline_VITIS_LOOP_27_3 {
		strm_in {Type I LastRead 1 FirstWrite -1}
		player2_out {Type O LastRead -1 FirstWrite 0}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	strm_in { ap_fifo {  { strm_in_dout fifo_data_in 0 32 }  { strm_in_empty_n fifo_status 0 1 }  { strm_in_read fifo_port_we 1 1 } } }
	strm_out { ap_fifo {  { strm_out_din fifo_data_in 1 32 }  { strm_out_full_n fifo_status 0 1 }  { strm_out_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	strm_in { fifo_read 6 no_conditional }
	strm_out { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
