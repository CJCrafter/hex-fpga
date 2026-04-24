set moduleName rollout_Pipeline_VITIS_LOOP_114_11
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {rollout_Pipeline_VITIS_LOOP_114_11}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ fill_5 int 49 regular  }
	{ gameState_hexGame_player2_2 int 49 regular  }
	{ prev_3_out int 43 regular {pointer 1}  }
	{ p_out int 1 regular {pointer 1}  }
	{ p_out1 int 1 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "fill_5", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "gameState_hexGame_player2_2", "interface" : "wire", "bitwidth" : 49, "direction" : "READONLY"} , 
 	{ "Name" : "prev_3_out", "interface" : "wire", "bitwidth" : 43, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ fill_5 sc_in sc_lv 49 signal 0 } 
	{ gameState_hexGame_player2_2 sc_in sc_lv 49 signal 1 } 
	{ prev_3_out sc_out sc_lv 43 signal 2 } 
	{ prev_3_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ p_out sc_out sc_lv 1 signal 3 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ p_out1 sc_out sc_lv 1 signal 4 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "fill_5", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "fill_5", "role": "default" }} , 
 	{ "name": "gameState_hexGame_player2_2", "direction": "in", "datatype": "sc_lv", "bitwidth":49, "type": "signal", "bundle":{"name": "gameState_hexGame_player2_2", "role": "default" }} , 
 	{ "name": "prev_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":43, "type": "signal", "bundle":{"name": "prev_3_out", "role": "default" }} , 
 	{ "name": "prev_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prev_3_out", "role": "ap_vld" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	rollout_Pipeline_VITIS_LOOP_114_11 {
		fill_5 {Type I LastRead 0 FirstWrite -1}
		gameState_hexGame_player2_2 {Type I LastRead 0 FirstWrite -1}
		prev_3_out {Type O LastRead -1 FirstWrite 1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	fill_5 { ap_none {  { fill_5 in_data 0 49 } } }
	gameState_hexGame_player2_2 { ap_none {  { gameState_hexGame_player2_2 in_data 0 49 } } }
	prev_3_out { ap_vld {  { prev_3_out out_data 1 43 }  { prev_3_out_ap_vld out_vld 1 1 } } }
	p_out { ap_vld {  { p_out out_data 1 1 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 1 }  { p_out1_ap_vld out_vld 1 1 } } }
}
