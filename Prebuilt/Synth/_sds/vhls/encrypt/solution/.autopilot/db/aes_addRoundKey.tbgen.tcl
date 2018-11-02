set moduleName aes_addRoundKey
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {aes_addRoundKey}
set C_modelType { void 0 }
set C_modelArgList {
	{ buf_r int 8 regular {axi_master 2}  }
	{ buf_offset int 32 regular  }
	{ key int 8 regular {axi_master 0}  }
	{ key_offset int 32 regular  }
	{ key_offset_offset int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buf_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "buf_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "key", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "key_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "key_offset_offset", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 99
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
	{ m_axi_key_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_key_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_key_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_key_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_key_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_key_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_key_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_key_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_key_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_key_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_key_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_key_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_key_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_key_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_key_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_key_WDATA sc_out sc_lv 8 signal 2 } 
	{ m_axi_key_WSTRB sc_out sc_lv 1 signal 2 } 
	{ m_axi_key_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_key_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_key_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_key_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_key_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_key_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_key_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_key_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_key_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_key_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_key_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_key_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_key_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_key_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_key_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_key_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_key_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_key_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_key_RDATA sc_in sc_lv 8 signal 2 } 
	{ m_axi_key_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_key_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_key_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_key_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_key_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_key_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_key_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_key_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_key_BUSER sc_in sc_lv 1 signal 2 } 
	{ key_offset sc_in sc_lv 32 signal 3 } 
	{ key_offset_offset sc_in sc_lv 6 signal 4 } 
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
 	{ "name": "m_axi_key_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "AWVALID" }} , 
 	{ "name": "m_axi_key_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "AWREADY" }} , 
 	{ "name": "m_axi_key_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key", "role": "AWADDR" }} , 
 	{ "name": "m_axi_key_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "AWID" }} , 
 	{ "name": "m_axi_key_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key", "role": "AWLEN" }} , 
 	{ "name": "m_axi_key_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "key", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_key_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "key", "role": "AWBURST" }} , 
 	{ "name": "m_axi_key_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "key", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_key_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_key_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "key", "role": "AWPROT" }} , 
 	{ "name": "m_axi_key_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key", "role": "AWQOS" }} , 
 	{ "name": "m_axi_key_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key", "role": "AWREGION" }} , 
 	{ "name": "m_axi_key_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "AWUSER" }} , 
 	{ "name": "m_axi_key_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "WVALID" }} , 
 	{ "name": "m_axi_key_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "WREADY" }} , 
 	{ "name": "m_axi_key_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "WDATA" }} , 
 	{ "name": "m_axi_key_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "WSTRB" }} , 
 	{ "name": "m_axi_key_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "WLAST" }} , 
 	{ "name": "m_axi_key_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "WID" }} , 
 	{ "name": "m_axi_key_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "WUSER" }} , 
 	{ "name": "m_axi_key_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ARVALID" }} , 
 	{ "name": "m_axi_key_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ARREADY" }} , 
 	{ "name": "m_axi_key_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key", "role": "ARADDR" }} , 
 	{ "name": "m_axi_key_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ARID" }} , 
 	{ "name": "m_axi_key_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key", "role": "ARLEN" }} , 
 	{ "name": "m_axi_key_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "key", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_key_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "key", "role": "ARBURST" }} , 
 	{ "name": "m_axi_key_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "key", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_key_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_key_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "key", "role": "ARPROT" }} , 
 	{ "name": "m_axi_key_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key", "role": "ARQOS" }} , 
 	{ "name": "m_axi_key_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "key", "role": "ARREGION" }} , 
 	{ "name": "m_axi_key_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "ARUSER" }} , 
 	{ "name": "m_axi_key_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "RVALID" }} , 
 	{ "name": "m_axi_key_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "RREADY" }} , 
 	{ "name": "m_axi_key_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "key", "role": "RDATA" }} , 
 	{ "name": "m_axi_key_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "RLAST" }} , 
 	{ "name": "m_axi_key_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "RID" }} , 
 	{ "name": "m_axi_key_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "RUSER" }} , 
 	{ "name": "m_axi_key_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "key", "role": "RRESP" }} , 
 	{ "name": "m_axi_key_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "BVALID" }} , 
 	{ "name": "m_axi_key_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "BREADY" }} , 
 	{ "name": "m_axi_key_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "key", "role": "BRESP" }} , 
 	{ "name": "m_axi_key_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "BID" }} , 
 	{ "name": "m_axi_key_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "key", "role": "BUSER" }} , 
 	{ "name": "key_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "key_offset", "role": "default" }} , 
 	{ "name": "key_offset_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "key_offset_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "aes_addRoundKey",
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
			{"Name" : "key", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "key_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "key_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "key_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "key_offset_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	aes_addRoundKey {
		buf_r {Type IO LastRead 13 FirstWrite 12}
		buf_offset {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 10 FirstWrite -1}
		key_offset {Type I LastRead 0 FirstWrite -1}
		key_offset_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "273", "Max" : "273"}
	, {"Name" : "Interval", "Min" : "273", "Max" : "273"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buf_r { m_axi {  { m_axi_buf_r_AWVALID VALID 1 1 }  { m_axi_buf_r_AWREADY READY 0 1 }  { m_axi_buf_r_AWADDR ADDR 1 32 }  { m_axi_buf_r_AWID ID 1 1 }  { m_axi_buf_r_AWLEN LEN 1 32 }  { m_axi_buf_r_AWSIZE SIZE 1 3 }  { m_axi_buf_r_AWBURST BURST 1 2 }  { m_axi_buf_r_AWLOCK LOCK 1 2 }  { m_axi_buf_r_AWCACHE CACHE 1 4 }  { m_axi_buf_r_AWPROT PROT 1 3 }  { m_axi_buf_r_AWQOS QOS 1 4 }  { m_axi_buf_r_AWREGION REGION 1 4 }  { m_axi_buf_r_AWUSER USER 1 1 }  { m_axi_buf_r_WVALID VALID 1 1 }  { m_axi_buf_r_WREADY READY 0 1 }  { m_axi_buf_r_WDATA DATA 1 8 }  { m_axi_buf_r_WSTRB STRB 1 1 }  { m_axi_buf_r_WLAST LAST 1 1 }  { m_axi_buf_r_WID ID 1 1 }  { m_axi_buf_r_WUSER USER 1 1 }  { m_axi_buf_r_ARVALID VALID 1 1 }  { m_axi_buf_r_ARREADY READY 0 1 }  { m_axi_buf_r_ARADDR ADDR 1 32 }  { m_axi_buf_r_ARID ID 1 1 }  { m_axi_buf_r_ARLEN LEN 1 32 }  { m_axi_buf_r_ARSIZE SIZE 1 3 }  { m_axi_buf_r_ARBURST BURST 1 2 }  { m_axi_buf_r_ARLOCK LOCK 1 2 }  { m_axi_buf_r_ARCACHE CACHE 1 4 }  { m_axi_buf_r_ARPROT PROT 1 3 }  { m_axi_buf_r_ARQOS QOS 1 4 }  { m_axi_buf_r_ARREGION REGION 1 4 }  { m_axi_buf_r_ARUSER USER 1 1 }  { m_axi_buf_r_RVALID VALID 0 1 }  { m_axi_buf_r_RREADY READY 1 1 }  { m_axi_buf_r_RDATA DATA 0 8 }  { m_axi_buf_r_RLAST LAST 0 1 }  { m_axi_buf_r_RID ID 0 1 }  { m_axi_buf_r_RUSER USER 0 1 }  { m_axi_buf_r_RRESP RESP 0 2 }  { m_axi_buf_r_BVALID VALID 0 1 }  { m_axi_buf_r_BREADY READY 1 1 }  { m_axi_buf_r_BRESP RESP 0 2 }  { m_axi_buf_r_BID ID 0 1 }  { m_axi_buf_r_BUSER USER 0 1 } } }
	buf_offset { ap_none {  { buf_offset in_data 0 32 } } }
	key { m_axi {  { m_axi_key_AWVALID VALID 1 1 }  { m_axi_key_AWREADY READY 0 1 }  { m_axi_key_AWADDR ADDR 1 32 }  { m_axi_key_AWID ID 1 1 }  { m_axi_key_AWLEN LEN 1 32 }  { m_axi_key_AWSIZE SIZE 1 3 }  { m_axi_key_AWBURST BURST 1 2 }  { m_axi_key_AWLOCK LOCK 1 2 }  { m_axi_key_AWCACHE CACHE 1 4 }  { m_axi_key_AWPROT PROT 1 3 }  { m_axi_key_AWQOS QOS 1 4 }  { m_axi_key_AWREGION REGION 1 4 }  { m_axi_key_AWUSER USER 1 1 }  { m_axi_key_WVALID VALID 1 1 }  { m_axi_key_WREADY READY 0 1 }  { m_axi_key_WDATA DATA 1 8 }  { m_axi_key_WSTRB STRB 1 1 }  { m_axi_key_WLAST LAST 1 1 }  { m_axi_key_WID ID 1 1 }  { m_axi_key_WUSER USER 1 1 }  { m_axi_key_ARVALID VALID 1 1 }  { m_axi_key_ARREADY READY 0 1 }  { m_axi_key_ARADDR ADDR 1 32 }  { m_axi_key_ARID ID 1 1 }  { m_axi_key_ARLEN LEN 1 32 }  { m_axi_key_ARSIZE SIZE 1 3 }  { m_axi_key_ARBURST BURST 1 2 }  { m_axi_key_ARLOCK LOCK 1 2 }  { m_axi_key_ARCACHE CACHE 1 4 }  { m_axi_key_ARPROT PROT 1 3 }  { m_axi_key_ARQOS QOS 1 4 }  { m_axi_key_ARREGION REGION 1 4 }  { m_axi_key_ARUSER USER 1 1 }  { m_axi_key_RVALID VALID 0 1 }  { m_axi_key_RREADY READY 1 1 }  { m_axi_key_RDATA DATA 0 8 }  { m_axi_key_RLAST LAST 0 1 }  { m_axi_key_RID ID 0 1 }  { m_axi_key_RUSER USER 0 1 }  { m_axi_key_RRESP RESP 0 2 }  { m_axi_key_BVALID VALID 0 1 }  { m_axi_key_BREADY READY 1 1 }  { m_axi_key_BRESP RESP 0 2 }  { m_axi_key_BID ID 0 1 }  { m_axi_key_BUSER USER 0 1 } } }
	key_offset { ap_none {  { key_offset in_data 0 32 } } }
	key_offset_offset { ap_none {  { key_offset_offset in_data 0 6 } } }
}
