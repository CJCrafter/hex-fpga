set moduleName forward_Pipeline_VITIS_LOOP_259_1
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
set C_modelName {forward_Pipeline_VITIS_LOOP_259_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict this_visitCounts { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict this_meanQ { MEM_WIDTH 20 MEM_SIZE 15300 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict this_logVisitCounts { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict this_parents { MEM_WIDTH 32 MEM_SIZE 20400 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict this_isREDs { MEM_WIDTH 1 MEM_SIZE 5100 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ node_2 int 32 regular  }
	{ reward_2 int 20 regular  }
	{ this_visitCounts int 32 regular {array 5100 { 2 3 } 1 1 }  }
	{ zext_ln125 int 3 regular  }
	{ this_meanQ int 20 regular {array 5100 { 2 3 } 1 1 }  }
	{ visitCount_cast3 int 3 regular  }
	{ this_logVisitCounts int 32 regular {array 5100 { 0 3 } 0 1 }  }
	{ this_parents int 32 regular {array 5100 { 1 3 } 1 1 }  }
	{ this_isREDs int 1 regular {array 5100 { 1 3 } 1 1 }  }
	{ conv7_i_i159_i int 3 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "node_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reward_2", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "this_visitCounts", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "zext_ln125", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "this_meanQ", "interface" : "memory", "bitwidth" : 20, "direction" : "READWRITE"} , 
 	{ "Name" : "visitCount_cast3", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "this_logVisitCounts", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "this_parents", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "this_isREDs", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "conv7_i_i159_i", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ node_2 sc_in sc_lv 32 signal 0 } 
	{ reward_2 sc_in sc_lv 20 signal 1 } 
	{ this_visitCounts_address0 sc_out sc_lv 13 signal 2 } 
	{ this_visitCounts_ce0 sc_out sc_logic 1 signal 2 } 
	{ this_visitCounts_we0 sc_out sc_logic 1 signal 2 } 
	{ this_visitCounts_d0 sc_out sc_lv 32 signal 2 } 
	{ this_visitCounts_q0 sc_in sc_lv 32 signal 2 } 
	{ zext_ln125 sc_in sc_lv 3 signal 3 } 
	{ this_meanQ_address0 sc_out sc_lv 13 signal 4 } 
	{ this_meanQ_ce0 sc_out sc_logic 1 signal 4 } 
	{ this_meanQ_we0 sc_out sc_logic 1 signal 4 } 
	{ this_meanQ_d0 sc_out sc_lv 20 signal 4 } 
	{ this_meanQ_q0 sc_in sc_lv 20 signal 4 } 
	{ visitCount_cast3 sc_in sc_lv 3 signal 5 } 
	{ this_logVisitCounts_address0 sc_out sc_lv 13 signal 6 } 
	{ this_logVisitCounts_ce0 sc_out sc_logic 1 signal 6 } 
	{ this_logVisitCounts_we0 sc_out sc_logic 1 signal 6 } 
	{ this_logVisitCounts_d0 sc_out sc_lv 32 signal 6 } 
	{ this_parents_address0 sc_out sc_lv 13 signal 7 } 
	{ this_parents_ce0 sc_out sc_logic 1 signal 7 } 
	{ this_parents_q0 sc_in sc_lv 32 signal 7 } 
	{ this_isREDs_address0 sc_out sc_lv 13 signal 8 } 
	{ this_isREDs_ce0 sc_out sc_logic 1 signal 8 } 
	{ this_isREDs_q0 sc_in sc_lv 1 signal 8 } 
	{ conv7_i_i159_i sc_in sc_lv 3 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "node_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_2", "role": "default" }} , 
 	{ "name": "reward_2", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "reward_2", "role": "default" }} , 
 	{ "name": "this_visitCounts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "address0" }} , 
 	{ "name": "this_visitCounts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "ce0" }} , 
 	{ "name": "this_visitCounts_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "we0" }} , 
 	{ "name": "this_visitCounts_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "d0" }} , 
 	{ "name": "this_visitCounts_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_visitCounts", "role": "q0" }} , 
 	{ "name": "zext_ln125", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln125", "role": "default" }} , 
 	{ "name": "this_meanQ_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_meanQ", "role": "address0" }} , 
 	{ "name": "this_meanQ_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_meanQ", "role": "ce0" }} , 
 	{ "name": "this_meanQ_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_meanQ", "role": "we0" }} , 
 	{ "name": "this_meanQ_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "this_meanQ", "role": "d0" }} , 
 	{ "name": "this_meanQ_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "this_meanQ", "role": "q0" }} , 
 	{ "name": "visitCount_cast3", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "visitCount_cast3", "role": "default" }} , 
 	{ "name": "this_logVisitCounts_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "address0" }} , 
 	{ "name": "this_logVisitCounts_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "ce0" }} , 
 	{ "name": "this_logVisitCounts_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "we0" }} , 
 	{ "name": "this_logVisitCounts_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_logVisitCounts", "role": "d0" }} , 
 	{ "name": "this_parents_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_parents", "role": "address0" }} , 
 	{ "name": "this_parents_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_parents", "role": "ce0" }} , 
 	{ "name": "this_parents_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "this_parents", "role": "q0" }} , 
 	{ "name": "this_isREDs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "this_isREDs", "role": "address0" }} , 
 	{ "name": "this_isREDs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "this_isREDs", "role": "ce0" }} , 
 	{ "name": "this_isREDs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "this_isREDs", "role": "q0" }} , 
 	{ "name": "conv7_i_i159_i", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "conv7_i_i159_i", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	node_2 { ap_none {  { node_2 in_data 0 32 } } }
	reward_2 { ap_none {  { reward_2 in_data 0 20 } } }
	this_visitCounts { ap_memory {  { this_visitCounts_address0 mem_address 1 13 }  { this_visitCounts_ce0 mem_ce 1 1 }  { this_visitCounts_we0 mem_we 1 1 }  { this_visitCounts_d0 mem_din 1 32 }  { this_visitCounts_q0 mem_dout 0 32 } } }
	zext_ln125 { ap_none {  { zext_ln125 in_data 0 3 } } }
	this_meanQ { ap_memory {  { this_meanQ_address0 mem_address 1 13 }  { this_meanQ_ce0 mem_ce 1 1 }  { this_meanQ_we0 mem_we 1 1 }  { this_meanQ_d0 mem_din 1 20 }  { this_meanQ_q0 mem_dout 0 20 } } }
	visitCount_cast3 { ap_none {  { visitCount_cast3 in_data 0 3 } } }
	this_logVisitCounts { ap_memory {  { this_logVisitCounts_address0 mem_address 1 13 }  { this_logVisitCounts_ce0 mem_ce 1 1 }  { this_logVisitCounts_we0 mem_we 1 1 }  { this_logVisitCounts_d0 mem_din 1 32 } } }
	this_parents { ap_memory {  { this_parents_address0 mem_address 1 13 }  { this_parents_ce0 mem_ce 1 1 }  { this_parents_q0 mem_dout 0 32 } } }
	this_isREDs { ap_memory {  { this_isREDs_address0 mem_address 1 13 }  { this_isREDs_ce0 mem_ce 1 1 }  { this_isREDs_q0 mem_dout 0 1 } } }
	conv7_i_i159_i { ap_none {  { conv7_i_i159_i in_data 0 3 } } }
}
