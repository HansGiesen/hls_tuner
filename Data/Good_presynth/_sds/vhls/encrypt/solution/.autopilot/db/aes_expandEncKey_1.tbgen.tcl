set moduleName aes_expandEncKey_1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {aes_expandEncKey.1}
set C_modelType { int 8 }
set C_modelArgList {
	{ k int 1024 regular {axi_master 2}  }
	{ k_offset int 25 regular  }
	{ rc_read int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "k", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READWRITE"} , 
 	{ "Name" : "k_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "rc_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_k_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_k_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_k_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_k_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_k_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_k_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_k_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_k_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_k_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_k_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_k_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_k_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_k_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_k_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_k_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_k_WDATA sc_out sc_lv 1024 signal 0 } 
	{ m_axi_k_WSTRB sc_out sc_lv 128 signal 0 } 
	{ m_axi_k_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_k_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_k_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_k_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_k_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_k_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_k_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_k_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_k_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_k_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_k_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_k_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_k_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_k_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_k_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_k_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_k_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_k_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_k_RDATA sc_in sc_lv 1024 signal 0 } 
	{ m_axi_k_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_k_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_k_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_k_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_k_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_k_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_k_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_k_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_k_BUSER sc_in sc_lv 1 signal 0 } 
	{ k_offset sc_in sc_lv 25 signal 1 } 
	{ rc_read sc_in sc_lv 8 signal 2 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
	{ k_blk_n_AR sc_out sc_logic 1 signal -1 } 
	{ k_blk_n_R sc_out sc_logic 1 signal -1 } 
	{ k_blk_n_AW sc_out sc_logic 1 signal -1 } 
	{ k_blk_n_W sc_out sc_logic 1 signal -1 } 
	{ k_blk_n_B sc_out sc_logic 1 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_k_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "AWVALID" }} , 
 	{ "name": "m_axi_k_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "AWREADY" }} , 
 	{ "name": "m_axi_k_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k", "role": "AWADDR" }} , 
 	{ "name": "m_axi_k_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "AWID" }} , 
 	{ "name": "m_axi_k_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k", "role": "AWLEN" }} , 
 	{ "name": "m_axi_k_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_k_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k", "role": "AWBURST" }} , 
 	{ "name": "m_axi_k_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_k_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "k", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_k_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "AWPROT" }} , 
 	{ "name": "m_axi_k_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "k", "role": "AWQOS" }} , 
 	{ "name": "m_axi_k_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "k", "role": "AWREGION" }} , 
 	{ "name": "m_axi_k_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "AWUSER" }} , 
 	{ "name": "m_axi_k_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "WVALID" }} , 
 	{ "name": "m_axi_k_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "WREADY" }} , 
 	{ "name": "m_axi_k_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "k", "role": "WDATA" }} , 
 	{ "name": "m_axi_k_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "k", "role": "WSTRB" }} , 
 	{ "name": "m_axi_k_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "WLAST" }} , 
 	{ "name": "m_axi_k_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "WID" }} , 
 	{ "name": "m_axi_k_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "WUSER" }} , 
 	{ "name": "m_axi_k_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "ARVALID" }} , 
 	{ "name": "m_axi_k_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "ARREADY" }} , 
 	{ "name": "m_axi_k_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k", "role": "ARADDR" }} , 
 	{ "name": "m_axi_k_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "ARID" }} , 
 	{ "name": "m_axi_k_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k", "role": "ARLEN" }} , 
 	{ "name": "m_axi_k_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_k_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k", "role": "ARBURST" }} , 
 	{ "name": "m_axi_k_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_k_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "k", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_k_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "k", "role": "ARPROT" }} , 
 	{ "name": "m_axi_k_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "k", "role": "ARQOS" }} , 
 	{ "name": "m_axi_k_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "k", "role": "ARREGION" }} , 
 	{ "name": "m_axi_k_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "ARUSER" }} , 
 	{ "name": "m_axi_k_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "RVALID" }} , 
 	{ "name": "m_axi_k_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "RREADY" }} , 
 	{ "name": "m_axi_k_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "k", "role": "RDATA" }} , 
 	{ "name": "m_axi_k_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "RLAST" }} , 
 	{ "name": "m_axi_k_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "RID" }} , 
 	{ "name": "m_axi_k_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "RUSER" }} , 
 	{ "name": "m_axi_k_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k", "role": "RRESP" }} , 
 	{ "name": "m_axi_k_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "BVALID" }} , 
 	{ "name": "m_axi_k_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "BREADY" }} , 
 	{ "name": "m_axi_k_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "k", "role": "BRESP" }} , 
 	{ "name": "m_axi_k_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "BID" }} , 
 	{ "name": "m_axi_k_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "BUSER" }} , 
 	{ "name": "k_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "k_offset", "role": "default" }} , 
 	{ "name": "rc_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rc_read", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "k_blk_n_AR", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_blk_n_AR", "role": "default" }} , 
 	{ "name": "k_blk_n_R", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_blk_n_R", "role": "default" }} , 
 	{ "name": "k_blk_n_AW", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_blk_n_AW", "role": "default" }} , 
 	{ "name": "k_blk_n_W", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_blk_n_W", "role": "default" }} , 
 	{ "name": "k_blk_n_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k_blk_n_B", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "aes_expandEncKey_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "k", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "k_blk_n_AR", "Type" : "RtlPort"},
					{"Name" : "k_blk_n_R", "Type" : "RtlPort"},
					{"Name" : "k_blk_n_AW", "Type" : "RtlPort"},
					{"Name" : "k_blk_n_W", "Type" : "RtlPort"},
					{"Name" : "k_blk_n_B", "Type" : "RtlPort"}]},
			{"Name" : "k_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rc_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes_expandEncKey_1 {
		k {Type IO LastRead 19 FirstWrite 18}
		k_offset {Type I LastRead 0 FirstWrite -1}
		rc_read {Type I LastRead 9 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23", "Max" : "23"}
	, {"Name" : "Interval", "Min" : "24", "Max" : "24"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	k { m_axi {  { m_axi_k_AWVALID VALID 1 1 }  { m_axi_k_AWREADY READY 0 1 }  { m_axi_k_AWADDR ADDR 1 32 }  { m_axi_k_AWID ID 1 1 }  { m_axi_k_AWLEN LEN 1 32 }  { m_axi_k_AWSIZE SIZE 1 3 }  { m_axi_k_AWBURST BURST 1 2 }  { m_axi_k_AWLOCK LOCK 1 2 }  { m_axi_k_AWCACHE CACHE 1 4 }  { m_axi_k_AWPROT PROT 1 3 }  { m_axi_k_AWQOS QOS 1 4 }  { m_axi_k_AWREGION REGION 1 4 }  { m_axi_k_AWUSER USER 1 1 }  { m_axi_k_WVALID VALID 1 1 }  { m_axi_k_WREADY READY 0 1 }  { m_axi_k_WDATA DATA 1 1024 }  { m_axi_k_WSTRB STRB 1 128 }  { m_axi_k_WLAST LAST 1 1 }  { m_axi_k_WID ID 1 1 }  { m_axi_k_WUSER USER 1 1 }  { m_axi_k_ARVALID VALID 1 1 }  { m_axi_k_ARREADY READY 0 1 }  { m_axi_k_ARADDR ADDR 1 32 }  { m_axi_k_ARID ID 1 1 }  { m_axi_k_ARLEN LEN 1 32 }  { m_axi_k_ARSIZE SIZE 1 3 }  { m_axi_k_ARBURST BURST 1 2 }  { m_axi_k_ARLOCK LOCK 1 2 }  { m_axi_k_ARCACHE CACHE 1 4 }  { m_axi_k_ARPROT PROT 1 3 }  { m_axi_k_ARQOS QOS 1 4 }  { m_axi_k_ARREGION REGION 1 4 }  { m_axi_k_ARUSER USER 1 1 }  { m_axi_k_RVALID VALID 0 1 }  { m_axi_k_RREADY READY 1 1 }  { m_axi_k_RDATA DATA 0 1024 }  { m_axi_k_RLAST LAST 0 1 }  { m_axi_k_RID ID 0 1 }  { m_axi_k_RUSER USER 0 1 }  { m_axi_k_RRESP RESP 0 2 }  { m_axi_k_BVALID VALID 0 1 }  { m_axi_k_BREADY READY 1 1 }  { m_axi_k_BRESP RESP 0 2 }  { m_axi_k_BID ID 0 1 }  { m_axi_k_BUSER USER 0 1 } } }
	k_offset { ap_none {  { k_offset in_data 0 25 } } }
	rc_read { ap_none {  { rc_read in_data 0 8 } } }
}
