set moduleName rollout
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
set C_modelName {rollout}
set C_modelType { int 84 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ this_rng_read int 64 regular  }
	{ gameState_legalActionMap int 49 regular  }
	{ gameState_hexGame_isPlayer1Turn_s int 1 regular  }
	{ gameState_hexGame_lastMove_s int 32 regular  }
	{ gameState_hexGame_player1_s int 49 regular  }
	{ gameState_hexGame_player2_s int 49 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "this_rng_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gameState_legalActionMap", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "gameState_hexGame_isPlayer1Turn_s", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "gameState_hexGame_lastMove_s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gameState_hexGame_player1_s", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "gameState_hexGame_player2_s", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 84} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ this_rng_read sc_in sc_lv 64 signal 0 } 
	{ gameState_legalActionMap sc_in sc_lv 49 signal 1 } 
	{ gameState_hexGame_isPlayer1Turn_s sc_in sc_lv 1 signal 2 } 
	{ gameState_hexGame_lastMove_s sc_in sc_lv 32 signal 3 } 
	{ gameState_hexGame_player1_s sc_in sc_lv 49 signal 4 } 
	{ gameState_hexGame_player2_s sc_in sc_lv 49 signal 5 } 
	{ ap_return_0 sc_out sc_lv 20 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "this_rng_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "this_rng_read", "role": "default" }} , 
 	{ "name": "gameState_legalActionMap", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "gameState_legalActionMap", "role": "default" }} , 
 	{ "name": "gameState_hexGame_isPlayer1Turn_s", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gameState_hexGame_isPlayer1Turn_s", "role": "default" }} , 
 	{ "name": "gameState_hexGame_lastMove_s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gameState_hexGame_lastMove_s", "role": "default" }} , 
 	{ "name": "gameState_hexGame_player1_s", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "gameState_hexGame_player1_s", "role": "default" }} , 
 	{ "name": "gameState_hexGame_player2_s", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "gameState_hexGame_player2_s", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		action_2_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	this_rng_read { ap_none {  { this_rng_read in_data 0 64 } } }
	gameState_legalActionMap { ap_none {  { gameState_legalActionMap in_data 0 49 } } }
	gameState_hexGame_isPlayer1Turn_s { ap_none {  { gameState_hexGame_isPlayer1Turn_s in_data 0 1 } } }
	gameState_hexGame_lastMove_s { ap_none {  { gameState_hexGame_lastMove_s in_data 0 32 } } }
	gameState_hexGame_player1_s { ap_none {  { gameState_hexGame_player1_s in_data 0 49 } } }
	gameState_hexGame_player2_s { ap_none {  { gameState_hexGame_player2_s in_data 0 49 } } }
}
