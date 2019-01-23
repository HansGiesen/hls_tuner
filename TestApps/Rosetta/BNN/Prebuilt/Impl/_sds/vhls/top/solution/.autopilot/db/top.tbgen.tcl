set C_TypeInfoList {{ 
"top" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"wt_i": [[], {"array": ["0", [4682]]}] }, {"kh_i": [[], {"array": ["0", [64]]}] }, {"dmem_i": [[], {"array": ["0", [2048]]}] }, {"dmem_o": [[], {"array": ["0", [128]]}] }, {"n_inputs": [["const"],"1"] }, {"n_outputs": [["const"],"1"] }, {"input_words": [["const"],"1"] }, {"output_words": [["const"],"1"] }, {"layer_mode": [["const"],"2"] }, {"dmem_mode": [["const"],"3"] }, {"width_mode": [["const"],"4"] }, {"norm_mode": [["const"],"4"] }],[],""], 
"3": [ "ap_uint<1>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 1}}]}],[],""]}], 
"1": [ "Address", {"typedef": [[[],"5"],""]}], 
"5": [ "ap_uint<16>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 16}}]],""]}}], 
"2": [ "ap_uint<3>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 3}}]}],[],""]}], 
"0": [ "Word", {"typedef": [[[],"6"],""]}], 
"6": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"4": [ "ap_uint<2>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 2}}]}],[],""]}]
}}
set moduleName top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ wt_i_V int 64 regular {fifo 0 volatile }  }
	{ kh_i_V int 64 regular {fifo 0 volatile }  }
	{ dmem_i_V int 64 regular {fifo 0 volatile }  }
	{ dmem_o_V int 64 regular {fifo 1 volatile }  }
	{ n_inputs_V int 16 regular  }
	{ n_outputs_V int 16 regular  }
	{ input_words_V int 16 regular  }
	{ output_words_V int 16 regular  }
	{ layer_mode_V int 3 regular  }
	{ dmem_mode_V int 1 regular  }
	{ width_mode_V int 2 regular  }
	{ norm_mode_V int 2 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "wt_i_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "wt_i.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 4681,"step" : 1}]}]}]} , 
 	{ "Name" : "kh_i_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "kh_i.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "dmem_i_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dmem_i.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 2047,"step" : 1}]}]}]} , 
 	{ "Name" : "dmem_o_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "dmem_o.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 127,"step" : 1}]}]}]} , 
 	{ "Name" : "n_inputs_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "n_inputs.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "n_outputs_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "n_outputs.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "input_words_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input_words.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "output_words_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "output_words.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "layer_mode_V", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "layer_mode.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dmem_mode_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dmem_mode.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "width_mode_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "width_mode.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "norm_mode_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "norm_mode.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ wt_i_V_dout sc_in sc_lv 64 signal 0 } 
	{ wt_i_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ wt_i_V_read sc_out sc_logic 1 signal 0 } 
	{ kh_i_V_dout sc_in sc_lv 64 signal 1 } 
	{ kh_i_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ kh_i_V_read sc_out sc_logic 1 signal 1 } 
	{ dmem_i_V_dout sc_in sc_lv 64 signal 2 } 
	{ dmem_i_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ dmem_i_V_read sc_out sc_logic 1 signal 2 } 
	{ dmem_o_V_din sc_out sc_lv 64 signal 3 } 
	{ dmem_o_V_full_n sc_in sc_logic 1 signal 3 } 
	{ dmem_o_V_write sc_out sc_logic 1 signal 3 } 
	{ n_inputs_V sc_in sc_lv 16 signal 4 } 
	{ n_outputs_V sc_in sc_lv 16 signal 5 } 
	{ input_words_V sc_in sc_lv 16 signal 6 } 
	{ output_words_V sc_in sc_lv 16 signal 7 } 
	{ layer_mode_V sc_in sc_lv 3 signal 8 } 
	{ dmem_mode_V sc_in sc_lv 1 signal 9 } 
	{ width_mode_V sc_in sc_lv 2 signal 10 } 
	{ norm_mode_V sc_in sc_lv 2 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "wt_i_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wt_i_V", "role": "dout" }} , 
 	{ "name": "wt_i_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_i_V", "role": "empty_n" }} , 
 	{ "name": "wt_i_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt_i_V", "role": "read" }} , 
 	{ "name": "kh_i_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "kh_i_V", "role": "dout" }} , 
 	{ "name": "kh_i_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kh_i_V", "role": "empty_n" }} , 
 	{ "name": "kh_i_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "kh_i_V", "role": "read" }} , 
 	{ "name": "dmem_i_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_i_V", "role": "dout" }} , 
 	{ "name": "dmem_i_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_i_V", "role": "empty_n" }} , 
 	{ "name": "dmem_i_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_i_V", "role": "read" }} , 
 	{ "name": "dmem_o_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dmem_o_V", "role": "din" }} , 
 	{ "name": "dmem_o_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_o_V", "role": "full_n" }} , 
 	{ "name": "dmem_o_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_o_V", "role": "write" }} , 
 	{ "name": "n_inputs_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "n_inputs_V", "role": "default" }} , 
 	{ "name": "n_outputs_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "n_outputs_V", "role": "default" }} , 
 	{ "name": "input_words_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_words_V", "role": "default" }} , 
 	{ "name": "output_words_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_words_V", "role": "default" }} , 
 	{ "name": "layer_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer_mode_V", "role": "default" }} , 
 	{ "name": "dmem_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dmem_mode_V", "role": "default" }} , 
 	{ "name": "width_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "width_mode_V", "role": "default" }} , 
 	{ "name": "norm_mode_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "norm_mode_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "115", "159", "161"],
		"CDFG" : "top",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bin_conv_fu_599"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fp_conv_fu_629"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_bin_dense_fu_653"}],
		"Port" : [
			{"Name" : "wt_i_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wt_i_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kh_i_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "kh_i_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmem_i_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "dmem_i_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dmem_o_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dmem_o_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "n_inputs_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_outputs_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_words_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_words_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dmem_mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "kh_index_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "o_index_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "kh_mem_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_fp_conv_fu_629", "Port" : "kh_mem_V"},
					{"ID" : "159", "SubInstance" : "grp_bin_dense_fu_653", "Port" : "kh_mem_V"}]},
			{"Name" : "wt_mem_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_fp_conv_fu_629", "Port" : "wt_mem_0_V"},
					{"ID" : "159", "SubInstance" : "grp_bin_dense_fu_653", "Port" : "wt_mem_0_V"},
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "wt_mem_0_V"}]},
			{"Name" : "wt_mem_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_fp_conv_fu_629", "Port" : "wt_mem_1_V"},
					{"ID" : "159", "SubInstance" : "grp_bin_dense_fu_653", "Port" : "wt_mem_1_V"},
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "wt_mem_1_V"}]},
			{"Name" : "dmem_V_0_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_fp_conv_fu_629", "Port" : "dmem_0_0_V"},
					{"ID" : "159", "SubInstance" : "grp_bin_dense_fu_653", "Port" : "dmem_0_0_V"},
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "dmem_0_0_V"}]},
			{"Name" : "dmem_V_0_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_fp_conv_fu_629", "Port" : "dmem_0_1_V"},
					{"ID" : "159", "SubInstance" : "grp_bin_dense_fu_653", "Port" : "dmem_0_1_V"},
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "dmem_0_1_V"}]},
			{"Name" : "dmem_V_1_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_fp_conv_fu_629", "Port" : "dmem_1_0_V"},
					{"ID" : "159", "SubInstance" : "grp_bin_dense_fu_653", "Port" : "dmem_1_0_V"},
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "dmem_1_0_V"}]},
			{"Name" : "dmem_V_1_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "115", "SubInstance" : "grp_fp_conv_fu_629", "Port" : "dmem_1_1_V"},
					{"ID" : "159", "SubInstance" : "grp_bin_dense_fu_653", "Port" : "dmem_1_1_V"},
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "dmem_1_1_V"}]},
			{"Name" : "wt_addr_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "wt_addr_V"}]},
			{"Name" : "wt_offset_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "wt_offset_V"}]},
			{"Name" : "outword_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_bin_conv_fu_599", "Port" : "outword_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kh_mem_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wt_mem_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wt_mem_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmem_V_0_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmem_V_0_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmem_V_1_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmem_V_1_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
		"CDFG" : "bin_conv",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "wt_mem_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wt_mem_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dmem_0_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_0_1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_1_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_1_1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "d_i_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "o_index_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "new_batch_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_mode_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wt_addr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wt_offset_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "outword_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_0_V_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_1_V_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_2_V_U", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_3_V_U", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_4_V_U", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_5_V_U", "Parent" : "8"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_6_V_U", "Parent" : "8"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_7_V_U", "Parent" : "8"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_8_V_U", "Parent" : "8"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_9_V_U", "Parent" : "8"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_10_V_U", "Parent" : "8"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_11_V_U", "Parent" : "8"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_12_V_U", "Parent" : "8"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_13_V_U", "Parent" : "8"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_14_V_U", "Parent" : "8"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_15_V_U", "Parent" : "8"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_16_V_U", "Parent" : "8"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_17_V_U", "Parent" : "8"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_18_V_U", "Parent" : "8"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_19_V_U", "Parent" : "8"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_20_V_U", "Parent" : "8"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_21_V_U", "Parent" : "8"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_22_V_U", "Parent" : "8"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_23_V_U", "Parent" : "8"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_24_V_U", "Parent" : "8"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_25_V_U", "Parent" : "8"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_26_V_U", "Parent" : "8"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_27_V_U", "Parent" : "8"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_28_V_U", "Parent" : "8"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_29_V_U", "Parent" : "8"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_30_V_U", "Parent" : "8"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_31_V_U", "Parent" : "8"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_32_V_U", "Parent" : "8"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_33_V_U", "Parent" : "8"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_34_V_U", "Parent" : "8"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_35_V_U", "Parent" : "8"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_36_V_U", "Parent" : "8"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_37_V_U", "Parent" : "8"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_38_V_U", "Parent" : "8"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_39_V_U", "Parent" : "8"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_40_V_U", "Parent" : "8"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_41_V_U", "Parent" : "8"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_42_V_U", "Parent" : "8"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_43_V_U", "Parent" : "8"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_44_V_U", "Parent" : "8"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_45_V_U", "Parent" : "8"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_46_V_U", "Parent" : "8"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_47_V_U", "Parent" : "8"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_48_V_U", "Parent" : "8"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_49_V_U", "Parent" : "8"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_50_V_U", "Parent" : "8"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_51_V_U", "Parent" : "8"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_52_V_U", "Parent" : "8"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_53_V_U", "Parent" : "8"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_54_V_U", "Parent" : "8"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_55_V_U", "Parent" : "8"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_56_V_U", "Parent" : "8"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_57_V_U", "Parent" : "8"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_58_V_U", "Parent" : "8"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_59_V_U", "Parent" : "8"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_60_V_U", "Parent" : "8"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_61_V_U", "Parent" : "8"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_62_V_U", "Parent" : "8"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.fixed_buffer_63_V_U", "Parent" : "8"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.grp_conv_word_fu_18836", "Parent" : "8",
		"CDFG" : "conv_word",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "line_buffer_m_0_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_0_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_0_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_0_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_1_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_1_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_1_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_2_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_2_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_2_2_s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.grp_conv_word_fu_19163", "Parent" : "8",
		"CDFG" : "conv_word",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "line_buffer_m_0_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_0_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_1_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_2_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_3_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_4_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_5_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_1_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_6_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_0_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_1_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "line_buffer_m_7_2_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_0_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_0_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_0_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_1_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_1_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_1_2_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_2_0_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_2_1_s", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_params_m_2_2_s", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U261", "Parent" : "8"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U262", "Parent" : "8"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U263", "Parent" : "8"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U264", "Parent" : "8"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U265", "Parent" : "8"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U266", "Parent" : "8"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U267", "Parent" : "8"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U268", "Parent" : "8"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U269", "Parent" : "8"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U270", "Parent" : "8"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U271", "Parent" : "8"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U272", "Parent" : "8"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U273", "Parent" : "8"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U274", "Parent" : "8"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U275", "Parent" : "8"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U276", "Parent" : "8"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U277", "Parent" : "8"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U278", "Parent" : "8"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U279", "Parent" : "8"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U280", "Parent" : "8"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U281", "Parent" : "8"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U282", "Parent" : "8"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U283", "Parent" : "8"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U284", "Parent" : "8"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U285", "Parent" : "8"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U286", "Parent" : "8"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U287", "Parent" : "8"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U288", "Parent" : "8"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U289", "Parent" : "8"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U290", "Parent" : "8"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U291", "Parent" : "8"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U292", "Parent" : "8"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U293", "Parent" : "8"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U294", "Parent" : "8"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U295", "Parent" : "8"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U296", "Parent" : "8"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U297", "Parent" : "8"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mux_83_2_1_U298", "Parent" : "8"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mul_mul_10ns_bek_U299", "Parent" : "8"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_conv_fu_599.top_mul_mul_15ns_bfk_U300", "Parent" : "8"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629", "Parent" : "0", "Child" : ["116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158"],
		"CDFG" : "fp_conv",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "wt_mem_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wt_mem_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kh_mem_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dmem_0_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_0_1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_1_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_1_1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "d_i_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "kh_index_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "o_index_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "N", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U316", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U317", "Parent" : "115"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U318", "Parent" : "115"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U319", "Parent" : "115"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U320", "Parent" : "115"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U321", "Parent" : "115"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U322", "Parent" : "115"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U323", "Parent" : "115"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U324", "Parent" : "115"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U325", "Parent" : "115"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U326", "Parent" : "115"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U327", "Parent" : "115"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U328", "Parent" : "115"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U329", "Parent" : "115"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U330", "Parent" : "115"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U331", "Parent" : "115"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U332", "Parent" : "115"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U333", "Parent" : "115"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U334", "Parent" : "115"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U335", "Parent" : "115"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U336", "Parent" : "115"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U337", "Parent" : "115"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U338", "Parent" : "115"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U339", "Parent" : "115"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U340", "Parent" : "115"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U341", "Parent" : "115"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U342", "Parent" : "115"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U343", "Parent" : "115"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U344", "Parent" : "115"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U345", "Parent" : "115"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U346", "Parent" : "115"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_32_20_1_U347", "Parent" : "115"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U348", "Parent" : "115"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U349", "Parent" : "115"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U350", "Parent" : "115"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U351", "Parent" : "115"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U352", "Parent" : "115"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U353", "Parent" : "115"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U354", "Parent" : "115"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U355", "Parent" : "115"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_325_20_1_U356", "Parent" : "115"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_164_64_1_U357", "Parent" : "115"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fp_conv_fu_629.top_mux_164_64_1_U358", "Parent" : "115"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_bin_dense_fu_653", "Parent" : "0", "Child" : ["160"],
		"CDFG" : "bin_dense",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "wt_mem_0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wt_mem_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "kh_mem_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dmem_0_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_0_1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_1_0_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "dmem_1_1_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer_type_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_o_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "o_index_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_inputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_outputs", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_bin_dense_fu_653.top_mul_mul_20s_1bkb_U1", "Parent" : "159"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_mac_muladd_15bgk_U371", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	top {
		wt_i_V {Type I LastRead 4 FirstWrite -1}
		kh_i_V {Type I LastRead 6 FirstWrite -1}
		dmem_i_V {Type I LastRead 2 FirstWrite -1}
		dmem_o_V {Type O LastRead -1 FirstWrite 10}
		n_inputs_V {Type I LastRead 0 FirstWrite -1}
		n_outputs_V {Type I LastRead 0 FirstWrite -1}
		input_words_V {Type I LastRead 0 FirstWrite -1}
		output_words_V {Type I LastRead 0 FirstWrite -1}
		layer_mode_V {Type I LastRead 0 FirstWrite -1}
		dmem_mode_V {Type I LastRead 0 FirstWrite -1}
		width_mode_V {Type I LastRead 0 FirstWrite -1}
		norm_mode_V {Type I LastRead 0 FirstWrite -1}
		kh_index_V {Type IO LastRead -1 FirstWrite -1}
		o_index_V {Type IO LastRead -1 FirstWrite -1}
		kh_mem_V {Type IO LastRead -1 FirstWrite -1}
		wt_mem_V_0 {Type IO LastRead -1 FirstWrite -1}
		wt_mem_V_1 {Type IO LastRead -1 FirstWrite -1}
		dmem_V_0_0 {Type IO LastRead -1 FirstWrite -1}
		dmem_V_0_1 {Type IO LastRead -1 FirstWrite -1}
		dmem_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		dmem_V_1_1 {Type IO LastRead -1 FirstWrite -1}
		wt_addr_V {Type IO LastRead -1 FirstWrite -1}
		wt_offset_V {Type IO LastRead -1 FirstWrite -1}
		outword_V {Type IO LastRead -1 FirstWrite -1}}
	bin_conv {
		wt_mem_0_V {Type I LastRead 4 FirstWrite -1}
		wt_mem_1_V {Type I LastRead 4 FirstWrite -1}
		nc_V {Type I LastRead 0 FirstWrite -1}
		dmem_0_0_V {Type IO LastRead 3 FirstWrite 7}
		dmem_0_1_V {Type IO LastRead 3 FirstWrite 7}
		dmem_1_0_V {Type IO LastRead 3 FirstWrite 7}
		dmem_1_1_V {Type IO LastRead 3 FirstWrite 7}
		d_i_idx_V {Type I LastRead 0 FirstWrite -1}
		d_o_idx_V {Type I LastRead 0 FirstWrite -1}
		n_inputs {Type I LastRead 0 FirstWrite -1}
		o_index_V {Type I LastRead 0 FirstWrite -1}
		new_batch_V {Type I LastRead 0 FirstWrite -1}
		width_mode_V {Type I LastRead 0 FirstWrite -1}
		norm_mode_V {Type I LastRead 0 FirstWrite -1}
		wt_addr_V {Type IO LastRead -1 FirstWrite -1}
		wt_offset_V {Type IO LastRead -1 FirstWrite -1}
		outword_V {Type IO LastRead -1 FirstWrite -1}}
	conv_word {
		line_buffer_m_0_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_9 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_9 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_9 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_18 {Type I LastRead 0 FirstWrite -1}
		conv_params_m_0_0_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_0_1_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_0_2_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_1_0_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_1_1_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_1_2_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_2_0_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_2_1_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_2_2_s {Type I LastRead 0 FirstWrite -1}}
	conv_word {
		line_buffer_m_0_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_9 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_9 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_0_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_1_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_2_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_3_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_4_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_5_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_1_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_6_2_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_0_18 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_9 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_1_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_s {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_10 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_11 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_12 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_13 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_14 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_15 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_16 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_17 {Type I LastRead 0 FirstWrite -1}
		line_buffer_m_7_2_18 {Type I LastRead 0 FirstWrite -1}
		conv_params_m_0_0_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_0_1_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_0_2_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_1_0_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_1_1_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_1_2_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_2_0_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_2_1_s {Type I LastRead 0 FirstWrite -1}
		conv_params_m_2_2_s {Type I LastRead 0 FirstWrite -1}}
	fp_conv {
		wt_mem_0_V {Type I LastRead 2 FirstWrite -1}
		wt_mem_1_V {Type I LastRead 2 FirstWrite -1}
		kh_mem_V {Type I LastRead 2 FirstWrite -1}
		dmem_0_0_V {Type IO LastRead 5 FirstWrite 9}
		dmem_0_1_V {Type IO LastRead 5 FirstWrite 9}
		dmem_1_0_V {Type IO LastRead 5 FirstWrite 9}
		dmem_1_1_V {Type IO LastRead 5 FirstWrite 9}
		d_i_idx_V {Type I LastRead 0 FirstWrite -1}
		d_o_idx_V {Type I LastRead 0 FirstWrite -1}
		kh_index_V {Type I LastRead 0 FirstWrite -1}
		o_index_V {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 0 FirstWrite -1}}
	bin_dense {
		wt_mem_0_V {Type I LastRead 4 FirstWrite -1}
		wt_mem_1_V {Type I LastRead 4 FirstWrite -1}
		kh_mem_V {Type I LastRead 7 FirstWrite -1}
		dmem_0_0_V {Type IO LastRead 4 FirstWrite 1}
		dmem_0_1_V {Type IO LastRead 4 FirstWrite 9}
		dmem_1_0_V {Type IO LastRead 4 FirstWrite 1}
		dmem_1_1_V {Type IO LastRead 4 FirstWrite 9}
		layer_type_V {Type I LastRead 0 FirstWrite -1}
		d_i_idx_V {Type I LastRead 0 FirstWrite -1}
		d_o_idx_V {Type I LastRead 0 FirstWrite -1}
		o_index_V {Type I LastRead 0 FirstWrite -1}
		n_inputs {Type I LastRead 0 FirstWrite -1}
		n_outputs {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4774", "Max" : "42212"}
	, {"Name" : "Interval", "Min" : "4775", "Max" : "42213"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	wt_i_V { ap_fifo {  { wt_i_V_dout fifo_data 0 64 }  { wt_i_V_empty_n fifo_status 0 1 }  { wt_i_V_read fifo_update 1 1 } } }
	kh_i_V { ap_fifo {  { kh_i_V_dout fifo_data 0 64 }  { kh_i_V_empty_n fifo_status 0 1 }  { kh_i_V_read fifo_update 1 1 } } }
	dmem_i_V { ap_fifo {  { dmem_i_V_dout fifo_data 0 64 }  { dmem_i_V_empty_n fifo_status 0 1 }  { dmem_i_V_read fifo_update 1 1 } } }
	dmem_o_V { ap_fifo {  { dmem_o_V_din fifo_data 1 64 }  { dmem_o_V_full_n fifo_status 0 1 }  { dmem_o_V_write fifo_update 1 1 } } }
	n_inputs_V { ap_none {  { n_inputs_V in_data 0 16 } } }
	n_outputs_V { ap_none {  { n_outputs_V in_data 0 16 } } }
	input_words_V { ap_none {  { input_words_V in_data 0 16 } } }
	output_words_V { ap_none {  { output_words_V in_data 0 16 } } }
	layer_mode_V { ap_none {  { layer_mode_V in_data 0 3 } } }
	dmem_mode_V { ap_none {  { dmem_mode_V in_data 0 1 } } }
	width_mode_V { ap_none {  { width_mode_V in_data 0 2 } } }
	norm_mode_V { ap_none {  { norm_mode_V in_data 0 2 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	wt_i_V { fifo_read 4682 no_conditional }
	kh_i_V { fifo_read 64 no_conditional }
	dmem_i_V { fifo_read 3 has_conditional }
	dmem_o_V { fifo_write 2 has_conditional }
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
