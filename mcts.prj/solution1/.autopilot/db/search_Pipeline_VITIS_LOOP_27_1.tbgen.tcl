set moduleName search_Pipeline_VITIS_LOOP_27_1
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
set C_modelName {search_Pipeline_VITIS_LOOP_27_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict this_visitCounts { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_nextSiblings { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ bestChildNode_3 int 32 regular  }
	{ this_visitCounts int 32 regular {array 5100 { 1 3 } 1 1 }  }
	{ this_nextSiblings int 32 regular {array 5100 { 1 3 } 1 1 }  }
	{ bestChildNode_out int 13 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bestChildNode_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_visitCounts", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_nextSiblings", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bestChildNode_out", "interface" : "wire", "bitwidth" : 13, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bestChildNode_3 sc_in sc_lv 32 signal 0 } 
	{ this_visitCounts_address0 sc_out sc_lv 13 signal 1 } 
	{ this_visitCounts_ce0 sc_out sc_logic 1 signal 1 } 
	{ this_visitCounts_q0 sc_in sc_lv 32 signal 1 } 
	{ this_nextSiblings_address0 sc_out sc_lv 13 signal 2 } 
	{ this_nextSiblings_ce0 sc_out sc_logic 1 signal 2 } 
	{ this_nextSiblings_q0 sc_in sc_lv 32 signal 2 } 
	{ bestChildNode_out sc_out sc_lv 13 signal 3 } 
	{ bestChildNode_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bestChildNode_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bestChildNode_3", "role": "default" }} , 
 	{ "name": "this_visitCounts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "address0" }} , 
 	{ "name": "this_visitCounts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "ce0" }} , 
 	{ "name": "this_visitCounts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "q0" }} , 
 	{ "name": "this_nextSiblings_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_nextSiblings", "role": "address0" }} , 
 	{ "name": "this_nextSiblings_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_nextSiblings", "role": "ce0" }} , 
 	{ "name": "this_nextSiblings_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_nextSiblings", "role": "q0" }} , 
 	{ "name": "bestChildNode_out", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "bestChildNode_out", "role": "default" }} , 
 	{ "name": "bestChildNode_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bestChildNode_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
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
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bestChildNode_3 { ap_none {  { bestChildNode_3 in_data 0 32 } } }
	this_visitCounts { ap_memory {  { this_visitCounts_address0 mem_address 1 13 }  { this_visitCounts_ce0 mem_ce 1 1 }  { this_visitCounts_q0 mem_dout 0 32 } } }
	this_nextSiblings { ap_memory {  { this_nextSiblings_address0 mem_address 1 13 }  { this_nextSiblings_ce0 mem_ce 1 1 }  { this_nextSiblings_q0 mem_dout 0 32 } } }
	bestChildNode_out { ap_vld {  { bestChildNode_out out_data 1 13 }  { bestChildNode_out_ap_vld out_vld 1 1 } } }
}
