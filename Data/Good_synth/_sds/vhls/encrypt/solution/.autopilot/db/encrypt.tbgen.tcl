set C_TypeInfoList {{ 
"encrypt" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"ctx_key": [[], {"array": ["0", [32]]}] }, {"ctx_enckey": [[], {"array": ["0", [32]]}] }, {"ctx_deckey": [[], {"array": ["0", [32]]}] }, {"k": [[], {"array": ["0", [32]]}] }, {"buf": [[], {"array": ["0", [16]]}] }],[],""], 
"0": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}]
}}
set moduleName encrypt
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ ctx_key int 8 regular {axi_master 2}  }
	{ ctx_enckey int 8 regular {axi_master 2}  }
	{ ctx_deckey int 8 regular {axi_master 2}  }
	{ buf_r int 8 regular {axi_master 2}  }
	{ ctx_key_offset int 32 regular  }
	{ ctx_enckey_offset int 32 regular  }
	{ ctx_deckey_offset int 32 regular  }
	{ k int 8 regular {bram 32 { 1 } 1 1 }  }
	{ buf_offset int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ctx_key", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ctx_key","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_key_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "ctx_enckey", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ctx_enckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_enckey_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "ctx_deckey", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ctx_deckey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "ctx_deckey_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "buf_r", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "buf","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"offset": { "type": "dynamic","port_name": "buf_offset"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "ctx_key_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_enckey_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ctx_deckey_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "bram", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "k","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "buf_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 197
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_ctx_key_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ctx_key_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ctx_key_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_key_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_key_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_key_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_key_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_key_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_key_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_key_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_ctx_key_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_key_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_ctx_key_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_ctx_key_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_key_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_key_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_ctx_key_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_key_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_ctx_key_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_key_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_ctx_key_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_ctx_key_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ctx_key_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_ctx_key_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_ctx_key_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_key_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_ctx_enckey_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_ctx_enckey_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_ctx_enckey_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ctx_enckey_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ctx_enckey_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ctx_enckey_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ctx_enckey_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ctx_enckey_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ctx_enckey_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ctx_enckey_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_ctx_enckey_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_ctx_enckey_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_ctx_enckey_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_ctx_enckey_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_ctx_enckey_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_ctx_enckey_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_ctx_enckey_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_ctx_enckey_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_ctx_enckey_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_ctx_enckey_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_ctx_enckey_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_ctx_enckey_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ctx_enckey_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_ctx_enckey_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_ctx_enckey_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_ctx_enckey_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_ctx_deckey_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_AWADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_ctx_deckey_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_ctx_deckey_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_ctx_deckey_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_ctx_deckey_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_ctx_deckey_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_deckey_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_ctx_deckey_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_deckey_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_deckey_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_ctx_deckey_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_deckey_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_ARADDR sc_out sc_lv 32 signal 2 } 
	{ m_axi_ctx_deckey_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_ctx_deckey_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_ctx_deckey_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_ctx_deckey_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_ctx_deckey_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_deckey_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_ctx_deckey_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_deckey_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_ctx_deckey_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_ctx_deckey_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_ctx_deckey_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_ctx_deckey_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_ctx_deckey_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_ctx_deckey_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_buf_r_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_buf_r_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_buf_r_AWADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_buf_r_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_buf_r_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_buf_r_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_buf_r_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_buf_r_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_buf_r_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_buf_r_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_buf_r_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_buf_r_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_buf_r_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_buf_r_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_buf_r_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_buf_r_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_buf_r_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_buf_r_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_buf_r_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_buf_r_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_buf_r_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_buf_r_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_buf_r_ARADDR sc_out sc_lv 32 signal 3 } 
	{ m_axi_buf_r_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_buf_r_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_buf_r_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_buf_r_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_buf_r_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_buf_r_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_buf_r_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_buf_r_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_buf_r_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_buf_r_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_buf_r_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_buf_r_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_buf_r_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_buf_r_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_buf_r_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_buf_r_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_buf_r_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_buf_r_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_buf_r_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_buf_r_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_buf_r_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_buf_r_BUSER sc_in sc_lv 1 signal 3 } 
	{ ctx_key_offset sc_in sc_lv 32 signal 4 } 
	{ ctx_enckey_offset sc_in sc_lv 32 signal 5 } 
	{ ctx_deckey_offset sc_in sc_lv 32 signal 6 } 
	{ k_Addr_A sc_out sc_lv 32 signal 7 } 
	{ k_EN_A sc_out sc_logic 1 signal 7 } 
	{ k_WEN_A sc_out sc_lv 1 signal 7 } 
	{ k_Din_A sc_out sc_lv 8 signal 7 } 
	{ k_Dout_A sc_in sc_lv 8 signal 7 } 
	{ k_Clk_A sc_out sc_logic 1 signal 7 } 
	{ k_Rst_A sc_out sc_logic 1 signal 7 } 
	{ buf_offset sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_ctx_key_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ctx_key_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ctx_key_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ctx_key_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWID" }} , 
 	{ "name": "m_axi_ctx_key_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ctx_key_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ctx_key_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ctx_key_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ctx_key_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ctx_key_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ctx_key_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ctx_key_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ctx_key_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ctx_key_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "WVALID" }} , 
 	{ "name": "m_axi_ctx_key_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "WREADY" }} , 
 	{ "name": "m_axi_ctx_key_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_key", "role": "WDATA" }} , 
 	{ "name": "m_axi_ctx_key_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_key", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ctx_key_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "WLAST" }} , 
 	{ "name": "m_axi_ctx_key_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "WID" }} , 
 	{ "name": "m_axi_ctx_key_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "WUSER" }} , 
 	{ "name": "m_axi_ctx_key_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ctx_key_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ctx_key_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ctx_key_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARID" }} , 
 	{ "name": "m_axi_ctx_key_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ctx_key_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ctx_key_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ctx_key_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ctx_key_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ctx_key_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ctx_key_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ctx_key_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ctx_key_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ctx_key_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "RVALID" }} , 
 	{ "name": "m_axi_ctx_key_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "RREADY" }} , 
 	{ "name": "m_axi_ctx_key_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_key", "role": "RDATA" }} , 
 	{ "name": "m_axi_ctx_key_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "RLAST" }} , 
 	{ "name": "m_axi_ctx_key_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "RID" }} , 
 	{ "name": "m_axi_ctx_key_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "RUSER" }} , 
 	{ "name": "m_axi_ctx_key_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_key", "role": "RRESP" }} , 
 	{ "name": "m_axi_ctx_key_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "BVALID" }} , 
 	{ "name": "m_axi_ctx_key_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "BREADY" }} , 
 	{ "name": "m_axi_ctx_key_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_key", "role": "BRESP" }} , 
 	{ "name": "m_axi_ctx_key_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "BID" }} , 
 	{ "name": "m_axi_ctx_key_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "BUSER" }} , 
 	{ "name": "m_axi_ctx_enckey_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ctx_enckey_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ctx_enckey_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ctx_enckey_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWID" }} , 
 	{ "name": "m_axi_ctx_enckey_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ctx_enckey_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ctx_enckey_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ctx_enckey_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ctx_enckey_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ctx_enckey_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ctx_enckey_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ctx_enckey_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ctx_enckey_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ctx_enckey_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "WVALID" }} , 
 	{ "name": "m_axi_ctx_enckey_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "WREADY" }} , 
 	{ "name": "m_axi_ctx_enckey_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "WDATA" }} , 
 	{ "name": "m_axi_ctx_enckey_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ctx_enckey_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "WLAST" }} , 
 	{ "name": "m_axi_ctx_enckey_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "WID" }} , 
 	{ "name": "m_axi_ctx_enckey_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "WUSER" }} , 
 	{ "name": "m_axi_ctx_enckey_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ctx_enckey_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ctx_enckey_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ctx_enckey_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARID" }} , 
 	{ "name": "m_axi_ctx_enckey_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ctx_enckey_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ctx_enckey_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ctx_enckey_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ctx_enckey_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ctx_enckey_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ctx_enckey_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ctx_enckey_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ctx_enckey_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ctx_enckey_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "RVALID" }} , 
 	{ "name": "m_axi_ctx_enckey_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "RREADY" }} , 
 	{ "name": "m_axi_ctx_enckey_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "RDATA" }} , 
 	{ "name": "m_axi_ctx_enckey_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "RLAST" }} , 
 	{ "name": "m_axi_ctx_enckey_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "RID" }} , 
 	{ "name": "m_axi_ctx_enckey_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "RUSER" }} , 
 	{ "name": "m_axi_ctx_enckey_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "RRESP" }} , 
 	{ "name": "m_axi_ctx_enckey_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "BVALID" }} , 
 	{ "name": "m_axi_ctx_enckey_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "BREADY" }} , 
 	{ "name": "m_axi_ctx_enckey_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "BRESP" }} , 
 	{ "name": "m_axi_ctx_enckey_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "BID" }} , 
 	{ "name": "m_axi_ctx_enckey_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_enckey", "role": "BUSER" }} , 
 	{ "name": "m_axi_ctx_deckey_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWVALID" }} , 
 	{ "name": "m_axi_ctx_deckey_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWREADY" }} , 
 	{ "name": "m_axi_ctx_deckey_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWADDR" }} , 
 	{ "name": "m_axi_ctx_deckey_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWID" }} , 
 	{ "name": "m_axi_ctx_deckey_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWLEN" }} , 
 	{ "name": "m_axi_ctx_deckey_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_ctx_deckey_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWBURST" }} , 
 	{ "name": "m_axi_ctx_deckey_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_ctx_deckey_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_ctx_deckey_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWPROT" }} , 
 	{ "name": "m_axi_ctx_deckey_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWQOS" }} , 
 	{ "name": "m_axi_ctx_deckey_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWREGION" }} , 
 	{ "name": "m_axi_ctx_deckey_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "AWUSER" }} , 
 	{ "name": "m_axi_ctx_deckey_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "WVALID" }} , 
 	{ "name": "m_axi_ctx_deckey_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "WREADY" }} , 
 	{ "name": "m_axi_ctx_deckey_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "WDATA" }} , 
 	{ "name": "m_axi_ctx_deckey_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "WSTRB" }} , 
 	{ "name": "m_axi_ctx_deckey_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "WLAST" }} , 
 	{ "name": "m_axi_ctx_deckey_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "WID" }} , 
 	{ "name": "m_axi_ctx_deckey_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "WUSER" }} , 
 	{ "name": "m_axi_ctx_deckey_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARVALID" }} , 
 	{ "name": "m_axi_ctx_deckey_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARREADY" }} , 
 	{ "name": "m_axi_ctx_deckey_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARADDR" }} , 
 	{ "name": "m_axi_ctx_deckey_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARID" }} , 
 	{ "name": "m_axi_ctx_deckey_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARLEN" }} , 
 	{ "name": "m_axi_ctx_deckey_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_ctx_deckey_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARBURST" }} , 
 	{ "name": "m_axi_ctx_deckey_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_ctx_deckey_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_ctx_deckey_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARPROT" }} , 
 	{ "name": "m_axi_ctx_deckey_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARQOS" }} , 
 	{ "name": "m_axi_ctx_deckey_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARREGION" }} , 
 	{ "name": "m_axi_ctx_deckey_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ARUSER" }} , 
 	{ "name": "m_axi_ctx_deckey_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "RVALID" }} , 
 	{ "name": "m_axi_ctx_deckey_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "RREADY" }} , 
 	{ "name": "m_axi_ctx_deckey_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "RDATA" }} , 
 	{ "name": "m_axi_ctx_deckey_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "RLAST" }} , 
 	{ "name": "m_axi_ctx_deckey_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "RID" }} , 
 	{ "name": "m_axi_ctx_deckey_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "RUSER" }} , 
 	{ "name": "m_axi_ctx_deckey_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "RRESP" }} , 
 	{ "name": "m_axi_ctx_deckey_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "BVALID" }} , 
 	{ "name": "m_axi_ctx_deckey_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "BREADY" }} , 
 	{ "name": "m_axi_ctx_deckey_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "BRESP" }} , 
 	{ "name": "m_axi_ctx_deckey_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "BID" }} , 
 	{ "name": "m_axi_ctx_deckey_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "BUSER" }} , 
 	{ "name": "m_axi_buf_r_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWVALID" }} , 
 	{ "name": "m_axi_buf_r_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWREADY" }} , 
 	{ "name": "m_axi_buf_r_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "AWADDR" }} , 
 	{ "name": "m_axi_buf_r_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "AWID" }} , 
 	{ "name": "m_axi_buf_r_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_buf_r_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "WDATA" }} , 
 	{ "name": "m_axi_buf_r_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "WSTRB" }} , 
 	{ "name": "m_axi_buf_r_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WLAST" }} , 
 	{ "name": "m_axi_buf_r_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WID" }} , 
 	{ "name": "m_axi_buf_r_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "WUSER" }} , 
 	{ "name": "m_axi_buf_r_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARVALID" }} , 
 	{ "name": "m_axi_buf_r_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARREADY" }} , 
 	{ "name": "m_axi_buf_r_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "ARADDR" }} , 
 	{ "name": "m_axi_buf_r_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ARID" }} , 
 	{ "name": "m_axi_buf_r_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_buf_r_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_r", "role": "RDATA" }} , 
 	{ "name": "m_axi_buf_r_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RLAST" }} , 
 	{ "name": "m_axi_buf_r_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RID" }} , 
 	{ "name": "m_axi_buf_r_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "RUSER" }} , 
 	{ "name": "m_axi_buf_r_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "RRESP" }} , 
 	{ "name": "m_axi_buf_r_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BVALID" }} , 
 	{ "name": "m_axi_buf_r_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BREADY" }} , 
 	{ "name": "m_axi_buf_r_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "buf_r", "role": "BRESP" }} , 
 	{ "name": "m_axi_buf_r_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BID" }} , 
 	{ "name": "m_axi_buf_r_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "BUSER" }} , 
 	{ "name": "ctx_key_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_key_offset", "role": "default" }} , 
 	{ "name": "ctx_enckey_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_enckey_offset", "role": "default" }} , 
 	{ "name": "ctx_deckey_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctx_deckey_offset", "role": "default" }} , 
 	{ "name": "k_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "k", "role": "Addr_A" }} , 
 	{ "name": "k_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "EN_A" }} , 
 	{ "name": "k_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "WEN_A" }} , 
 	{ "name": "k_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "k", "role": "Din_A" }} , 
 	{ "name": "k_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "k", "role": "Dout_A" }} , 
 	{ "name": "k_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "Clk_A" }} , 
 	{ "name": "k_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "k", "role": "Rst_A" }} , 
 	{ "name": "buf_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "7", "8", "9", "10", "11"],
		"CDFG" : "encrypt",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_236"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_236"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_236"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_shiftRows_fu_248"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_shiftRows_fu_248"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_mixColumns_fu_255"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_cpy_fu_262"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_275"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_275"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_275"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_subBytes_fu_288"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_subBytes_fu_288"}],
		"Port" : [
			{"Name" : "ctx_key", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes_expandEncKey_fu_236", "Port" : "k"},
					{"ID" : "9", "SubInstance" : "grp_aes_addRoundKey_cpy_fu_262", "Port" : "cpk"},
					{"ID" : "10", "SubInstance" : "grp_aes_addRoundKey_fu_275", "Port" : "key"}]},
			{"Name" : "ctx_enckey", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "ctx_enckey_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ctx_enckey_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ctx_enckey_blk_n_W", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_aes_addRoundKey_cpy_fu_262", "Port" : "key"}]},
			{"Name" : "ctx_deckey", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "ctx_deckey_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "ctx_deckey_blk_n_B", "Type" : "RtlSignal"},
					{"Name" : "ctx_deckey_blk_n_W", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes_expandEncKey_fu_236", "Port" : "k"}]},
			{"Name" : "buf_r", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_aes_shiftRows_fu_248", "Port" : "buf_r"},
					{"ID" : "11", "SubInstance" : "grp_aes_subBytes_fu_288", "Port" : "buf_r"},
					{"ID" : "8", "SubInstance" : "grp_aes_mixColumns_fu_255", "Port" : "buf_r"},
					{"ID" : "9", "SubInstance" : "grp_aes_addRoundKey_cpy_fu_262", "Port" : "buf_r"},
					{"ID" : "10", "SubInstance" : "grp_aes_addRoundKey_fu_275", "Port" : "buf_r"}]},
			{"Name" : "ctx_key_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_enckey_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "ctx_deckey_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "k", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes_expandEncKey_fu_236", "Port" : "sbox"},
					{"ID" : "11", "SubInstance" : "grp_aes_subBytes_fu_288", "Port" : "sbox"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_ctx_key_m_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_ctx_enckey_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_ctx_deckey_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.encrypt_buf_r_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_236", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "aes_expandEncKey",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "k", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "k_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "k_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "k_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "k_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "k_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "k_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "rc_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_236.sbox_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_shiftRows_fu_248", "Parent" : "0",
		"CDFG" : "aes_shiftRows",
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
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_mixColumns_fu_255", "Parent" : "0",
		"CDFG" : "aes_mixColumns",
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
			{"Name" : "buf_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_cpy_fu_262", "Parent" : "0",
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
			{"Name" : "key", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "key_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "key_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "key_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "cpk", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cpk_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "cpk_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "cpk_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "cpk_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_275", "Parent" : "0",
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
			{"Name" : "key_offset_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_subBytes_fu_288", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "aes_subBytes",
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
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_subBytes_fu_288.sbox_U", "Parent" : "11"}]}


set ArgLastReadFirstWriteLatency {
	encrypt {
		ctx_key {Type IO LastRead 190 FirstWrite -1}
		ctx_enckey {Type IO LastRead 12 FirstWrite -1}
		ctx_deckey {Type IO LastRead 190 FirstWrite 3}
		buf_r {Type IO LastRead 120 FirstWrite 10}
		ctx_key_offset {Type I LastRead 0 FirstWrite -1}
		ctx_enckey_offset {Type I LastRead 0 FirstWrite -1}
		ctx_deckey_offset {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 1 FirstWrite -1}
		buf_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_expandEncKey {
		k {Type IO LastRead 190 FirstWrite 11}
		k_offset {Type I LastRead 0 FirstWrite -1}
		rc_read {Type I LastRead 10 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes_shiftRows {
		buf_r {Type IO LastRead 120 FirstWrite 10}
		buf_offset {Type I LastRead 0 FirstWrite -1}}
	aes_mixColumns {
		buf_r {Type IO LastRead 21 FirstWrite 14}
		buf_offset {Type I LastRead 0 FirstWrite -1}}
	aes_addRoundKey_cpy {
		buf_r {Type IO LastRead 12 FirstWrite 11}
		buf_offset {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 12 FirstWrite -1}
		key_offset {Type I LastRead 0 FirstWrite -1}
		cpk {Type O LastRead 14 FirstWrite 11}
		cpk_offset {Type I LastRead 0 FirstWrite -1}}
	aes_addRoundKey {
		buf_r {Type IO LastRead 13 FirstWrite 12}
		buf_offset {Type I LastRead 0 FirstWrite -1}
		key {Type I LastRead 10 FirstWrite -1}
		key_offset {Type I LastRead 0 FirstWrite -1}
		key_offset_offset {Type I LastRead 0 FirstWrite -1}}
	aes_subBytes {
		buf_r {Type IO LastRead 13 FirstWrite 12}
		buf_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15109", "Max" : "21869"}
	, {"Name" : "Interval", "Min" : "15110", "Max" : "21870"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ctx_key { m_axi {  { m_axi_ctx_key_AWVALID VALID 1 1 }  { m_axi_ctx_key_AWREADY READY 0 1 }  { m_axi_ctx_key_AWADDR ADDR 1 32 }  { m_axi_ctx_key_AWID ID 1 1 }  { m_axi_ctx_key_AWLEN LEN 1 8 }  { m_axi_ctx_key_AWSIZE SIZE 1 3 }  { m_axi_ctx_key_AWBURST BURST 1 2 }  { m_axi_ctx_key_AWLOCK LOCK 1 2 }  { m_axi_ctx_key_AWCACHE CACHE 1 4 }  { m_axi_ctx_key_AWPROT PROT 1 3 }  { m_axi_ctx_key_AWQOS QOS 1 4 }  { m_axi_ctx_key_AWREGION REGION 1 4 }  { m_axi_ctx_key_AWUSER USER 1 1 }  { m_axi_ctx_key_WVALID VALID 1 1 }  { m_axi_ctx_key_WREADY READY 0 1 }  { m_axi_ctx_key_WDATA DATA 1 32 }  { m_axi_ctx_key_WSTRB STRB 1 4 }  { m_axi_ctx_key_WLAST LAST 1 1 }  { m_axi_ctx_key_WID ID 1 1 }  { m_axi_ctx_key_WUSER USER 1 1 }  { m_axi_ctx_key_ARVALID VALID 1 1 }  { m_axi_ctx_key_ARREADY READY 0 1 }  { m_axi_ctx_key_ARADDR ADDR 1 32 }  { m_axi_ctx_key_ARID ID 1 1 }  { m_axi_ctx_key_ARLEN LEN 1 8 }  { m_axi_ctx_key_ARSIZE SIZE 1 3 }  { m_axi_ctx_key_ARBURST BURST 1 2 }  { m_axi_ctx_key_ARLOCK LOCK 1 2 }  { m_axi_ctx_key_ARCACHE CACHE 1 4 }  { m_axi_ctx_key_ARPROT PROT 1 3 }  { m_axi_ctx_key_ARQOS QOS 1 4 }  { m_axi_ctx_key_ARREGION REGION 1 4 }  { m_axi_ctx_key_ARUSER USER 1 1 }  { m_axi_ctx_key_RVALID VALID 0 1 }  { m_axi_ctx_key_RREADY READY 1 1 }  { m_axi_ctx_key_RDATA DATA 0 32 }  { m_axi_ctx_key_RLAST LAST 0 1 }  { m_axi_ctx_key_RID ID 0 1 }  { m_axi_ctx_key_RUSER USER 0 1 }  { m_axi_ctx_key_RRESP RESP 0 2 }  { m_axi_ctx_key_BVALID VALID 0 1 }  { m_axi_ctx_key_BREADY READY 1 1 }  { m_axi_ctx_key_BRESP RESP 0 2 }  { m_axi_ctx_key_BID ID 0 1 }  { m_axi_ctx_key_BUSER USER 0 1 } } }
	ctx_enckey { m_axi {  { m_axi_ctx_enckey_AWVALID VALID 1 1 }  { m_axi_ctx_enckey_AWREADY READY 0 1 }  { m_axi_ctx_enckey_AWADDR ADDR 1 32 }  { m_axi_ctx_enckey_AWID ID 1 1 }  { m_axi_ctx_enckey_AWLEN LEN 1 8 }  { m_axi_ctx_enckey_AWSIZE SIZE 1 3 }  { m_axi_ctx_enckey_AWBURST BURST 1 2 }  { m_axi_ctx_enckey_AWLOCK LOCK 1 2 }  { m_axi_ctx_enckey_AWCACHE CACHE 1 4 }  { m_axi_ctx_enckey_AWPROT PROT 1 3 }  { m_axi_ctx_enckey_AWQOS QOS 1 4 }  { m_axi_ctx_enckey_AWREGION REGION 1 4 }  { m_axi_ctx_enckey_AWUSER USER 1 1 }  { m_axi_ctx_enckey_WVALID VALID 1 1 }  { m_axi_ctx_enckey_WREADY READY 0 1 }  { m_axi_ctx_enckey_WDATA DATA 1 32 }  { m_axi_ctx_enckey_WSTRB STRB 1 4 }  { m_axi_ctx_enckey_WLAST LAST 1 1 }  { m_axi_ctx_enckey_WID ID 1 1 }  { m_axi_ctx_enckey_WUSER USER 1 1 }  { m_axi_ctx_enckey_ARVALID VALID 1 1 }  { m_axi_ctx_enckey_ARREADY READY 0 1 }  { m_axi_ctx_enckey_ARADDR ADDR 1 32 }  { m_axi_ctx_enckey_ARID ID 1 1 }  { m_axi_ctx_enckey_ARLEN LEN 1 8 }  { m_axi_ctx_enckey_ARSIZE SIZE 1 3 }  { m_axi_ctx_enckey_ARBURST BURST 1 2 }  { m_axi_ctx_enckey_ARLOCK LOCK 1 2 }  { m_axi_ctx_enckey_ARCACHE CACHE 1 4 }  { m_axi_ctx_enckey_ARPROT PROT 1 3 }  { m_axi_ctx_enckey_ARQOS QOS 1 4 }  { m_axi_ctx_enckey_ARREGION REGION 1 4 }  { m_axi_ctx_enckey_ARUSER USER 1 1 }  { m_axi_ctx_enckey_RVALID VALID 0 1 }  { m_axi_ctx_enckey_RREADY READY 1 1 }  { m_axi_ctx_enckey_RDATA DATA 0 32 }  { m_axi_ctx_enckey_RLAST LAST 0 1 }  { m_axi_ctx_enckey_RID ID 0 1 }  { m_axi_ctx_enckey_RUSER USER 0 1 }  { m_axi_ctx_enckey_RRESP RESP 0 2 }  { m_axi_ctx_enckey_BVALID VALID 0 1 }  { m_axi_ctx_enckey_BREADY READY 1 1 }  { m_axi_ctx_enckey_BRESP RESP 0 2 }  { m_axi_ctx_enckey_BID ID 0 1 }  { m_axi_ctx_enckey_BUSER USER 0 1 } } }
	ctx_deckey { m_axi {  { m_axi_ctx_deckey_AWVALID VALID 1 1 }  { m_axi_ctx_deckey_AWREADY READY 0 1 }  { m_axi_ctx_deckey_AWADDR ADDR 1 32 }  { m_axi_ctx_deckey_AWID ID 1 1 }  { m_axi_ctx_deckey_AWLEN LEN 1 8 }  { m_axi_ctx_deckey_AWSIZE SIZE 1 3 }  { m_axi_ctx_deckey_AWBURST BURST 1 2 }  { m_axi_ctx_deckey_AWLOCK LOCK 1 2 }  { m_axi_ctx_deckey_AWCACHE CACHE 1 4 }  { m_axi_ctx_deckey_AWPROT PROT 1 3 }  { m_axi_ctx_deckey_AWQOS QOS 1 4 }  { m_axi_ctx_deckey_AWREGION REGION 1 4 }  { m_axi_ctx_deckey_AWUSER USER 1 1 }  { m_axi_ctx_deckey_WVALID VALID 1 1 }  { m_axi_ctx_deckey_WREADY READY 0 1 }  { m_axi_ctx_deckey_WDATA DATA 1 32 }  { m_axi_ctx_deckey_WSTRB STRB 1 4 }  { m_axi_ctx_deckey_WLAST LAST 1 1 }  { m_axi_ctx_deckey_WID ID 1 1 }  { m_axi_ctx_deckey_WUSER USER 1 1 }  { m_axi_ctx_deckey_ARVALID VALID 1 1 }  { m_axi_ctx_deckey_ARREADY READY 0 1 }  { m_axi_ctx_deckey_ARADDR ADDR 1 32 }  { m_axi_ctx_deckey_ARID ID 1 1 }  { m_axi_ctx_deckey_ARLEN LEN 1 8 }  { m_axi_ctx_deckey_ARSIZE SIZE 1 3 }  { m_axi_ctx_deckey_ARBURST BURST 1 2 }  { m_axi_ctx_deckey_ARLOCK LOCK 1 2 }  { m_axi_ctx_deckey_ARCACHE CACHE 1 4 }  { m_axi_ctx_deckey_ARPROT PROT 1 3 }  { m_axi_ctx_deckey_ARQOS QOS 1 4 }  { m_axi_ctx_deckey_ARREGION REGION 1 4 }  { m_axi_ctx_deckey_ARUSER USER 1 1 }  { m_axi_ctx_deckey_RVALID VALID 0 1 }  { m_axi_ctx_deckey_RREADY READY 1 1 }  { m_axi_ctx_deckey_RDATA DATA 0 32 }  { m_axi_ctx_deckey_RLAST LAST 0 1 }  { m_axi_ctx_deckey_RID ID 0 1 }  { m_axi_ctx_deckey_RUSER USER 0 1 }  { m_axi_ctx_deckey_RRESP RESP 0 2 }  { m_axi_ctx_deckey_BVALID VALID 0 1 }  { m_axi_ctx_deckey_BREADY READY 1 1 }  { m_axi_ctx_deckey_BRESP RESP 0 2 }  { m_axi_ctx_deckey_BID ID 0 1 }  { m_axi_ctx_deckey_BUSER USER 0 1 } } }
	buf_r { m_axi {  { m_axi_buf_r_AWVALID VALID 1 1 }  { m_axi_buf_r_AWREADY READY 0 1 }  { m_axi_buf_r_AWADDR ADDR 1 32 }  { m_axi_buf_r_AWID ID 1 1 }  { m_axi_buf_r_AWLEN LEN 1 8 }  { m_axi_buf_r_AWSIZE SIZE 1 3 }  { m_axi_buf_r_AWBURST BURST 1 2 }  { m_axi_buf_r_AWLOCK LOCK 1 2 }  { m_axi_buf_r_AWCACHE CACHE 1 4 }  { m_axi_buf_r_AWPROT PROT 1 3 }  { m_axi_buf_r_AWQOS QOS 1 4 }  { m_axi_buf_r_AWREGION REGION 1 4 }  { m_axi_buf_r_AWUSER USER 1 1 }  { m_axi_buf_r_WVALID VALID 1 1 }  { m_axi_buf_r_WREADY READY 0 1 }  { m_axi_buf_r_WDATA DATA 1 32 }  { m_axi_buf_r_WSTRB STRB 1 4 }  { m_axi_buf_r_WLAST LAST 1 1 }  { m_axi_buf_r_WID ID 1 1 }  { m_axi_buf_r_WUSER USER 1 1 }  { m_axi_buf_r_ARVALID VALID 1 1 }  { m_axi_buf_r_ARREADY READY 0 1 }  { m_axi_buf_r_ARADDR ADDR 1 32 }  { m_axi_buf_r_ARID ID 1 1 }  { m_axi_buf_r_ARLEN LEN 1 8 }  { m_axi_buf_r_ARSIZE SIZE 1 3 }  { m_axi_buf_r_ARBURST BURST 1 2 }  { m_axi_buf_r_ARLOCK LOCK 1 2 }  { m_axi_buf_r_ARCACHE CACHE 1 4 }  { m_axi_buf_r_ARPROT PROT 1 3 }  { m_axi_buf_r_ARQOS QOS 1 4 }  { m_axi_buf_r_ARREGION REGION 1 4 }  { m_axi_buf_r_ARUSER USER 1 1 }  { m_axi_buf_r_RVALID VALID 0 1 }  { m_axi_buf_r_RREADY READY 1 1 }  { m_axi_buf_r_RDATA DATA 0 32 }  { m_axi_buf_r_RLAST LAST 0 1 }  { m_axi_buf_r_RID ID 0 1 }  { m_axi_buf_r_RUSER USER 0 1 }  { m_axi_buf_r_RRESP RESP 0 2 }  { m_axi_buf_r_BVALID VALID 0 1 }  { m_axi_buf_r_BREADY READY 1 1 }  { m_axi_buf_r_BRESP RESP 0 2 }  { m_axi_buf_r_BID ID 0 1 }  { m_axi_buf_r_BUSER USER 0 1 } } }
	ctx_key_offset { ap_none {  { ctx_key_offset in_data 0 32 } } }
	ctx_enckey_offset { ap_none {  { ctx_enckey_offset in_data 0 32 } } }
	ctx_deckey_offset { ap_none {  { ctx_deckey_offset in_data 0 32 } } }
	k { bram {  { k_Addr_A mem_address 1 32 }  { k_EN_A mem_ce 1 1 }  { k_WEN_A mem_we 1 1 }  { k_Din_A mem_din 1 8 }  { k_Dout_A mem_dout 0 8 }  { k_Clk_A mem_clk 1 1 }  { k_Rst_A mem_rst 1 1 } } }
	buf_offset { ap_none {  { buf_offset in_data 0 32 } } }
}

set busDeadlockParameterList { 
	{ ctx_key { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ ctx_enckey { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ ctx_deckey { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ buf_r { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ ctx_key 1 }
	{ ctx_enckey 1 }
	{ ctx_deckey 1 }
	{ buf_r 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ ctx_key 1 }
	{ ctx_enckey 1 }
	{ ctx_deckey 1 }
	{ buf_r 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
