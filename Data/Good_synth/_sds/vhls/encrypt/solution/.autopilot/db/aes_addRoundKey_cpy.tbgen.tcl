set moduleName aes_addRoundKey_cpy
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {aes_addRoundKey_cpy}
set C_modelType { void 0 }
set C_modelArgList {
	{ buf_r int 8 regular {axi_master 2}  }
	{ buf_offset int 32 regular  }
	{ ctx int 1024 regular {axi_master 2}  }
	{ ctx_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buf_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 98
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_buf_r_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_buf_r_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_buf_r_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_buf_r_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_buf_r_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_buf_r_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_buf_r_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_buf_r_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_buf_r_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_buf_r_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_buf_r_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_buf_r_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_buf_r_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_buf_r_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_buf_r_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_buf_r_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_buf_r_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_buf_r_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_buf_r_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_buf_r_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_buf_r_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_buf_r_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_buf_r_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_buf_r_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_buf_r_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_buf_r_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_buf_r_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_buf_r_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_buf_r_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_buf_r_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_buf_r_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_buf_r_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_buf_r_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_buf_r_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_buf_r_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_buf_r_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_buf_r_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_buf_r_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_buf_r_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_buf_r_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_buf_r_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_buf_r_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_buf_r_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_buf_r_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_buf_r_BUSER sc_in sc_lv 1 signal 0 } 
	{ buf_offset sc_in sc_lv 32 signal 1 } 
	{ m_axi_ctx_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_ctx_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_ctx_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_ctx_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_ctx_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_ctx_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_ctx_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_WDATA sc_out sc_lv 1024 signal 2 } 
	{ m_axi_ctx_WSTRB sc_out sc_lv 128 signal 2 } 
	{ m_axi_ctx_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_ctx_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_ctx_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_ctx_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_ctx_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_ctx_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_ctx_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_RDATA sc_in sc_lv 1024 signal 2 } 
	{ m_axi_ctx_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_ctx_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_ctx_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_ctx_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_ctx_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_ctx_BUSER sc_in sc_lv 1 signal 2 } 
	{ ctx_offset sc_in sc_lv 25 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_buf_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_buf_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_buf_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_buf_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWID" }} , 
 	{ "name": "m_axi_buf_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "AWLEN" }} , 
 	{ "name": "m_axi_buf_r_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_buf_r_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "AWBURST" }} , 
 	{ "name": "m_axi_buf_r_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_buf_r_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_buf_r_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "AWPROT" }} , 
 	{ "name": "m_axi_buf_r_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWQOS" }} , 
 	{ "name": "m_axi_buf_r_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "AWREGION" }} , 
 	{ "name": "m_axi_buf_r_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWUSER" }} , 
 	{ "name": "m_axi_buf_r_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WVALID" }} , 
 	{ "name": "m_axi_buf_r_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WREADY" }} , 
 	{ "name": "m_axi_buf_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_buf_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_buf_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_buf_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WID" }} , 
 	{ "name": "m_axi_buf_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_buf_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_buf_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_buf_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_buf_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARID" }} , 
 	{ "name": "m_axi_buf_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "ARLEN" }} , 
 	{ "name": "m_axi_buf_r_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_buf_r_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "ARBURST" }} , 
 	{ "name": "m_axi_buf_r_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_buf_r_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_buf_r_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "buf_r", "role": "ARPROT" }} , 
 	{ "name": "m_axi_buf_r_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARQOS" }} , 
 	{ "name": "m_axi_buf_r_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "ARREGION" }} , 
 	{ "name": "m_axi_buf_r_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARUSER" }} , 
 	{ "name": "m_axi_buf_r_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RVALID" }} , 
 	{ "name": "m_axi_buf_r_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RREADY" }} , 
 	{ "name": "m_axi_buf_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_buf_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_buf_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RID" }} , 
 	{ "name": "m_axi_buf_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_buf_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_buf_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_buf_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_buf_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_buf_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BID" }} , 
 	{ "name": "m_axi_buf_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BUSER" }} , 
 	{ "name": "buf_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_offset", "role": "default" }} , 
 	{ "name": "m_axi_ctx_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ctx_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ctx_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ctx_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWID" }} , 
 	{ "name": "m_axi_ctx_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ctx_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ctx_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ctx_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ctx_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ctx_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ctx_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ctx_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ctx_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ctx_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WVALID" }} , 
 	{ "name": "m_axi_ctx_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WREADY" }} , 
 	{ "name": "m_axi_ctx_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ctx", "role": "WDATA" }} , 
 	{ "name": "m_axi_ctx_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ctx", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ctx_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WLAST" }} , 
 	{ "name": "m_axi_ctx_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WID" }} , 
 	{ "name": "m_axi_ctx_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "WUSER" }} , 
 	{ "name": "m_axi_ctx_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ctx_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ctx_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ctx_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARID" }} , 
 	{ "name": "m_axi_ctx_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ctx_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ctx_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ctx_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ctx_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ctx_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ctx_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ctx_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ctx_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ctx_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RVALID" }} , 
 	{ "name": "m_axi_ctx_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RREADY" }} , 
 	{ "name": "m_axi_ctx_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ctx", "role": "RDATA" }} , 
 	{ "name": "m_axi_ctx_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RLAST" }} , 
 	{ "name": "m_axi_ctx_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RID" }} , 
 	{ "name": "m_axi_ctx_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "RUSER" }} , 
 	{ "name": "m_axi_ctx_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "RRESP" }} , 
 	{ "name": "m_axi_ctx_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BVALID" }} , 
 	{ "name": "m_axi_ctx_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BREADY" }} , 
 	{ "name": "m_axi_ctx_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx", "role": "BRESP" }} , 
 	{ "name": "m_axi_ctx_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BID" }} , 
 	{ "name": "m_axi_ctx_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx", "role": "BUSER" }} , 
 	{ "name": "ctx_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "ctx_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "aes_addRoundKey_cpy",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "buf_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "buf_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "ctx_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "ctx_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "ctx_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U29", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U30", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U31", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U32", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U33", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U34", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U35", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U36", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U37", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U38", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U39", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U40", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U41", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U42", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U43", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U44", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U45", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_lshr_256ncud_x_U46", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aes_addRoundKey_cpy {
		buf_r {Type IO LastRead 140 FirstWrite 18}
		buf_offset {Type I LastRead 0 FirstWrite -1}
		ctx {Type IO LastRead 125 FirstWrite 33}
		ctx_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "257", "Max" : "257"}
	, {"Name" : "Interval", "Min" : "257", "Max" : "257"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buf_r { m_axi {  { m_axi_buf_r_AWVALID VALID 1 1 }  { m_axi_buf_r_AWREADY READY 0 1 }  { m_axi_buf_r_AWADDR ADDR 1 32 }  { m_axi_buf_r_AWID ID 1 1 }  { m_axi_buf_r_AWLEN LEN 1 32 }  { m_axi_buf_r_AWSIZE SIZE 1 3 }  { m_axi_buf_r_AWBURST BURST 1 2 }  { m_axi_buf_r_AWLOCK LOCK 1 2 }  { m_axi_buf_r_AWCACHE CACHE 1 4 }  { m_axi_buf_r_AWPROT PROT 1 3 }  { m_axi_buf_r_AWQOS QOS 1 4 }  { m_axi_buf_r_AWREGION REGION 1 4 }  { m_axi_buf_r_AWUSER USER 1 1 }  { m_axi_buf_r_WVALID VALID 1 1 }  { m_axi_buf_r_WREADY READY 0 1 }  { m_axi_buf_r_WDATA DATA 1 8 }  { m_axi_buf_r_WSTRB STRB 1 1 }  { m_axi_buf_r_WLAST LAST 1 1 }  { m_axi_buf_r_WID ID 1 1 }  { m_axi_buf_r_WUSER USER 1 1 }  { m_axi_buf_r_ARVALID VALID 1 1 }  { m_axi_buf_r_ARREADY READY 0 1 }  { m_axi_buf_r_ARADDR ADDR 1 32 }  { m_axi_buf_r_ARID ID 1 1 }  { m_axi_buf_r_ARLEN LEN 1 32 }  { m_axi_buf_r_ARSIZE SIZE 1 3 }  { m_axi_buf_r_ARBURST BURST 1 2 }  { m_axi_buf_r_ARLOCK LOCK 1 2 }  { m_axi_buf_r_ARCACHE CACHE 1 4 }  { m_axi_buf_r_ARPROT PROT 1 3 }  { m_axi_buf_r_ARQOS QOS 1 4 }  { m_axi_buf_r_ARREGION REGION 1 4 }  { m_axi_buf_r_ARUSER USER 1 1 }  { m_axi_buf_r_RVALID VALID 0 1 }  { m_axi_buf_r_RREADY READY 1 1 }  { m_axi_buf_r_RDATA DATA 0 8 }  { m_axi_buf_r_RLAST LAST 0 1 }  { m_axi_buf_r_RID ID 0 1 }  { m_axi_buf_r_RUSER USER 0 1 }  { m_axi_buf_r_RRESP RESP 0 2 }  { m_axi_buf_r_BVALID VALID 0 1 }  { m_axi_buf_r_BREADY READY 1 1 }  { m_axi_buf_r_BRESP RESP 0 2 }  { m_axi_buf_r_BID ID 0 1 }  { m_axi_buf_r_BUSER USER 0 1 } } }
	buf_offset { ap_none {  { buf_offset in_data 0 32 } } }
	ctx { m_axi {  { m_axi_ctx_AWVALID VALID 1 1 }  { m_axi_ctx_AWREADY READY 0 1 }  { m_axi_ctx_AWADDR ADDR 1 32 }  { m_axi_ctx_AWID ID 1 1 }  { m_axi_ctx_AWLEN LEN 1 32 }  { m_axi_ctx_AWSIZE SIZE 1 3 }  { m_axi_ctx_AWBURST BURST 1 2 }  { m_axi_ctx_AWLOCK LOCK 1 2 }  { m_axi_ctx_AWCACHE CACHE 1 4 }  { m_axi_ctx_AWPROT PROT 1 3 }  { m_axi_ctx_AWQOS QOS 1 4 }  { m_axi_ctx_AWREGION REGION 1 4 }  { m_axi_ctx_AWUSER USER 1 1 }  { m_axi_ctx_WVALID VALID 1 1 }  { m_axi_ctx_WREADY READY 0 1 }  { m_axi_ctx_WDATA DATA 1 1024 }  { m_axi_ctx_WSTRB STRB 1 128 }  { m_axi_ctx_WLAST LAST 1 1 }  { m_axi_ctx_WID ID 1 1 }  { m_axi_ctx_WUSER USER 1 1 }  { m_axi_ctx_ARVALID VALID 1 1 }  { m_axi_ctx_ARREADY READY 0 1 }  { m_axi_ctx_ARADDR ADDR 1 32 }  { m_axi_ctx_ARID ID 1 1 }  { m_axi_ctx_ARLEN LEN 1 32 }  { m_axi_ctx_ARSIZE SIZE 1 3 }  { m_axi_ctx_ARBURST BURST 1 2 }  { m_axi_ctx_ARLOCK LOCK 1 2 }  { m_axi_ctx_ARCACHE CACHE 1 4 }  { m_axi_ctx_ARPROT PROT 1 3 }  { m_axi_ctx_ARQOS QOS 1 4 }  { m_axi_ctx_ARREGION REGION 1 4 }  { m_axi_ctx_ARUSER USER 1 1 }  { m_axi_ctx_RVALID VALID 0 1 }  { m_axi_ctx_RREADY READY 1 1 }  { m_axi_ctx_RDATA DATA 0 1024 }  { m_axi_ctx_RLAST LAST 0 1 }  { m_axi_ctx_RID ID 0 1 }  { m_axi_ctx_RUSER USER 0 1 }  { m_axi_ctx_RRESP RESP 0 2 }  { m_axi_ctx_BVALID VALID 0 1 }  { m_axi_ctx_BREADY READY 1 1 }  { m_axi_ctx_BRESP RESP 0 2 }  { m_axi_ctx_BID ID 0 1 }  { m_axi_ctx_BUSER USER 0 1 } } }
	ctx_offset { ap_none {  { ctx_offset in_data 0 25 } } }
}
