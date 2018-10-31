// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
// Date        : Wed Oct 31 14:56:26 2018
// Host        : icgrid46 running 64-bit openSUSE Leap 42.3
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pynq_encrypt_1_0_stub.v
// Design      : pynq_encrypt_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "a0_encrypt,Vivado 2017.1_sdx" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, m_axi_ctx_key_AWADDR, m_axi_ctx_key_AWLEN, m_axi_ctx_key_AWSIZE, 
  m_axi_ctx_key_AWBURST, m_axi_ctx_key_AWLOCK, m_axi_ctx_key_AWREGION, 
  m_axi_ctx_key_AWCACHE, m_axi_ctx_key_AWPROT, m_axi_ctx_key_AWQOS, 
  m_axi_ctx_key_AWVALID, m_axi_ctx_key_AWREADY, m_axi_ctx_key_WDATA, m_axi_ctx_key_WSTRB, 
  m_axi_ctx_key_WLAST, m_axi_ctx_key_WVALID, m_axi_ctx_key_WREADY, m_axi_ctx_key_BRESP, 
  m_axi_ctx_key_BVALID, m_axi_ctx_key_BREADY, m_axi_ctx_key_ARADDR, m_axi_ctx_key_ARLEN, 
  m_axi_ctx_key_ARSIZE, m_axi_ctx_key_ARBURST, m_axi_ctx_key_ARLOCK, 
  m_axi_ctx_key_ARREGION, m_axi_ctx_key_ARCACHE, m_axi_ctx_key_ARPROT, 
  m_axi_ctx_key_ARQOS, m_axi_ctx_key_ARVALID, m_axi_ctx_key_ARREADY, m_axi_ctx_key_RDATA, 
  m_axi_ctx_key_RRESP, m_axi_ctx_key_RLAST, m_axi_ctx_key_RVALID, m_axi_ctx_key_RREADY, 
  m_axi_ctx_enckey_AWADDR, m_axi_ctx_enckey_AWLEN, m_axi_ctx_enckey_AWSIZE, 
  m_axi_ctx_enckey_AWBURST, m_axi_ctx_enckey_AWLOCK, m_axi_ctx_enckey_AWREGION, 
  m_axi_ctx_enckey_AWCACHE, m_axi_ctx_enckey_AWPROT, m_axi_ctx_enckey_AWQOS, 
  m_axi_ctx_enckey_AWVALID, m_axi_ctx_enckey_AWREADY, m_axi_ctx_enckey_WDATA, 
  m_axi_ctx_enckey_WSTRB, m_axi_ctx_enckey_WLAST, m_axi_ctx_enckey_WVALID, 
  m_axi_ctx_enckey_WREADY, m_axi_ctx_enckey_BRESP, m_axi_ctx_enckey_BVALID, 
  m_axi_ctx_enckey_BREADY, m_axi_ctx_enckey_ARADDR, m_axi_ctx_enckey_ARLEN, 
  m_axi_ctx_enckey_ARSIZE, m_axi_ctx_enckey_ARBURST, m_axi_ctx_enckey_ARLOCK, 
  m_axi_ctx_enckey_ARREGION, m_axi_ctx_enckey_ARCACHE, m_axi_ctx_enckey_ARPROT, 
  m_axi_ctx_enckey_ARQOS, m_axi_ctx_enckey_ARVALID, m_axi_ctx_enckey_ARREADY, 
  m_axi_ctx_enckey_RDATA, m_axi_ctx_enckey_RRESP, m_axi_ctx_enckey_RLAST, 
  m_axi_ctx_enckey_RVALID, m_axi_ctx_enckey_RREADY, m_axi_ctx_deckey_AWADDR, 
  m_axi_ctx_deckey_AWLEN, m_axi_ctx_deckey_AWSIZE, m_axi_ctx_deckey_AWBURST, 
  m_axi_ctx_deckey_AWLOCK, m_axi_ctx_deckey_AWREGION, m_axi_ctx_deckey_AWCACHE, 
  m_axi_ctx_deckey_AWPROT, m_axi_ctx_deckey_AWQOS, m_axi_ctx_deckey_AWVALID, 
  m_axi_ctx_deckey_AWREADY, m_axi_ctx_deckey_WDATA, m_axi_ctx_deckey_WSTRB, 
  m_axi_ctx_deckey_WLAST, m_axi_ctx_deckey_WVALID, m_axi_ctx_deckey_WREADY, 
  m_axi_ctx_deckey_BRESP, m_axi_ctx_deckey_BVALID, m_axi_ctx_deckey_BREADY, 
  m_axi_ctx_deckey_ARADDR, m_axi_ctx_deckey_ARLEN, m_axi_ctx_deckey_ARSIZE, 
  m_axi_ctx_deckey_ARBURST, m_axi_ctx_deckey_ARLOCK, m_axi_ctx_deckey_ARREGION, 
  m_axi_ctx_deckey_ARCACHE, m_axi_ctx_deckey_ARPROT, m_axi_ctx_deckey_ARQOS, 
  m_axi_ctx_deckey_ARVALID, m_axi_ctx_deckey_ARREADY, m_axi_ctx_deckey_RDATA, 
  m_axi_ctx_deckey_RRESP, m_axi_ctx_deckey_RLAST, m_axi_ctx_deckey_RVALID, 
  m_axi_ctx_deckey_RREADY, m_axi_buf_r_AWADDR, m_axi_buf_r_AWLEN, m_axi_buf_r_AWSIZE, 
  m_axi_buf_r_AWBURST, m_axi_buf_r_AWLOCK, m_axi_buf_r_AWREGION, m_axi_buf_r_AWCACHE, 
  m_axi_buf_r_AWPROT, m_axi_buf_r_AWQOS, m_axi_buf_r_AWVALID, m_axi_buf_r_AWREADY, 
  m_axi_buf_r_WDATA, m_axi_buf_r_WSTRB, m_axi_buf_r_WLAST, m_axi_buf_r_WVALID, 
  m_axi_buf_r_WREADY, m_axi_buf_r_BRESP, m_axi_buf_r_BVALID, m_axi_buf_r_BREADY, 
  m_axi_buf_r_ARADDR, m_axi_buf_r_ARLEN, m_axi_buf_r_ARSIZE, m_axi_buf_r_ARBURST, 
  m_axi_buf_r_ARLOCK, m_axi_buf_r_ARREGION, m_axi_buf_r_ARCACHE, m_axi_buf_r_ARPROT, 
  m_axi_buf_r_ARQOS, m_axi_buf_r_ARVALID, m_axi_buf_r_ARREADY, m_axi_buf_r_RDATA, 
  m_axi_buf_r_RRESP, m_axi_buf_r_RLAST, m_axi_buf_r_RVALID, m_axi_buf_r_RREADY, 
  ctx_key_offset, ctx_enckey_offset, ctx_deckey_offset, k_Clk_A, k_Rst_A, k_EN_A, k_WEN_A, 
  k_Addr_A, k_Din_A, k_Dout_A, buf_offset)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,m_axi_ctx_key_AWADDR[31:0],m_axi_ctx_key_AWLEN[7:0],m_axi_ctx_key_AWSIZE[2:0],m_axi_ctx_key_AWBURST[1:0],m_axi_ctx_key_AWLOCK[1:0],m_axi_ctx_key_AWREGION[3:0],m_axi_ctx_key_AWCACHE[3:0],m_axi_ctx_key_AWPROT[2:0],m_axi_ctx_key_AWQOS[3:0],m_axi_ctx_key_AWVALID,m_axi_ctx_key_AWREADY,m_axi_ctx_key_WDATA[31:0],m_axi_ctx_key_WSTRB[3:0],m_axi_ctx_key_WLAST,m_axi_ctx_key_WVALID,m_axi_ctx_key_WREADY,m_axi_ctx_key_BRESP[1:0],m_axi_ctx_key_BVALID,m_axi_ctx_key_BREADY,m_axi_ctx_key_ARADDR[31:0],m_axi_ctx_key_ARLEN[7:0],m_axi_ctx_key_ARSIZE[2:0],m_axi_ctx_key_ARBURST[1:0],m_axi_ctx_key_ARLOCK[1:0],m_axi_ctx_key_ARREGION[3:0],m_axi_ctx_key_ARCACHE[3:0],m_axi_ctx_key_ARPROT[2:0],m_axi_ctx_key_ARQOS[3:0],m_axi_ctx_key_ARVALID,m_axi_ctx_key_ARREADY,m_axi_ctx_key_RDATA[31:0],m_axi_ctx_key_RRESP[1:0],m_axi_ctx_key_RLAST,m_axi_ctx_key_RVALID,m_axi_ctx_key_RREADY,m_axi_ctx_enckey_AWADDR[31:0],m_axi_ctx_enckey_AWLEN[7:0],m_axi_ctx_enckey_AWSIZE[2:0],m_axi_ctx_enckey_AWBURST[1:0],m_axi_ctx_enckey_AWLOCK[1:0],m_axi_ctx_enckey_AWREGION[3:0],m_axi_ctx_enckey_AWCACHE[3:0],m_axi_ctx_enckey_AWPROT[2:0],m_axi_ctx_enckey_AWQOS[3:0],m_axi_ctx_enckey_AWVALID,m_axi_ctx_enckey_AWREADY,m_axi_ctx_enckey_WDATA[31:0],m_axi_ctx_enckey_WSTRB[3:0],m_axi_ctx_enckey_WLAST,m_axi_ctx_enckey_WVALID,m_axi_ctx_enckey_WREADY,m_axi_ctx_enckey_BRESP[1:0],m_axi_ctx_enckey_BVALID,m_axi_ctx_enckey_BREADY,m_axi_ctx_enckey_ARADDR[31:0],m_axi_ctx_enckey_ARLEN[7:0],m_axi_ctx_enckey_ARSIZE[2:0],m_axi_ctx_enckey_ARBURST[1:0],m_axi_ctx_enckey_ARLOCK[1:0],m_axi_ctx_enckey_ARREGION[3:0],m_axi_ctx_enckey_ARCACHE[3:0],m_axi_ctx_enckey_ARPROT[2:0],m_axi_ctx_enckey_ARQOS[3:0],m_axi_ctx_enckey_ARVALID,m_axi_ctx_enckey_ARREADY,m_axi_ctx_enckey_RDATA[31:0],m_axi_ctx_enckey_RRESP[1:0],m_axi_ctx_enckey_RLAST,m_axi_ctx_enckey_RVALID,m_axi_ctx_enckey_RREADY,m_axi_ctx_deckey_AWADDR[31:0],m_axi_ctx_deckey_AWLEN[7:0],m_axi_ctx_deckey_AWSIZE[2:0],m_axi_ctx_deckey_AWBURST[1:0],m_axi_ctx_deckey_AWLOCK[1:0],m_axi_ctx_deckey_AWREGION[3:0],m_axi_ctx_deckey_AWCACHE[3:0],m_axi_ctx_deckey_AWPROT[2:0],m_axi_ctx_deckey_AWQOS[3:0],m_axi_ctx_deckey_AWVALID,m_axi_ctx_deckey_AWREADY,m_axi_ctx_deckey_WDATA[31:0],m_axi_ctx_deckey_WSTRB[3:0],m_axi_ctx_deckey_WLAST,m_axi_ctx_deckey_WVALID,m_axi_ctx_deckey_WREADY,m_axi_ctx_deckey_BRESP[1:0],m_axi_ctx_deckey_BVALID,m_axi_ctx_deckey_BREADY,m_axi_ctx_deckey_ARADDR[31:0],m_axi_ctx_deckey_ARLEN[7:0],m_axi_ctx_deckey_ARSIZE[2:0],m_axi_ctx_deckey_ARBURST[1:0],m_axi_ctx_deckey_ARLOCK[1:0],m_axi_ctx_deckey_ARREGION[3:0],m_axi_ctx_deckey_ARCACHE[3:0],m_axi_ctx_deckey_ARPROT[2:0],m_axi_ctx_deckey_ARQOS[3:0],m_axi_ctx_deckey_ARVALID,m_axi_ctx_deckey_ARREADY,m_axi_ctx_deckey_RDATA[31:0],m_axi_ctx_deckey_RRESP[1:0],m_axi_ctx_deckey_RLAST,m_axi_ctx_deckey_RVALID,m_axi_ctx_deckey_RREADY,m_axi_buf_r_AWADDR[31:0],m_axi_buf_r_AWLEN[7:0],m_axi_buf_r_AWSIZE[2:0],m_axi_buf_r_AWBURST[1:0],m_axi_buf_r_AWLOCK[1:0],m_axi_buf_r_AWREGION[3:0],m_axi_buf_r_AWCACHE[3:0],m_axi_buf_r_AWPROT[2:0],m_axi_buf_r_AWQOS[3:0],m_axi_buf_r_AWVALID,m_axi_buf_r_AWREADY,m_axi_buf_r_WDATA[31:0],m_axi_buf_r_WSTRB[3:0],m_axi_buf_r_WLAST,m_axi_buf_r_WVALID,m_axi_buf_r_WREADY,m_axi_buf_r_BRESP[1:0],m_axi_buf_r_BVALID,m_axi_buf_r_BREADY,m_axi_buf_r_ARADDR[31:0],m_axi_buf_r_ARLEN[7:0],m_axi_buf_r_ARSIZE[2:0],m_axi_buf_r_ARBURST[1:0],m_axi_buf_r_ARLOCK[1:0],m_axi_buf_r_ARREGION[3:0],m_axi_buf_r_ARCACHE[3:0],m_axi_buf_r_ARPROT[2:0],m_axi_buf_r_ARQOS[3:0],m_axi_buf_r_ARVALID,m_axi_buf_r_ARREADY,m_axi_buf_r_RDATA[31:0],m_axi_buf_r_RRESP[1:0],m_axi_buf_r_RLAST,m_axi_buf_r_RVALID,m_axi_buf_r_RREADY,ctx_key_offset[31:0],ctx_enckey_offset[31:0],ctx_deckey_offset[31:0],k_Clk_A,k_Rst_A,k_EN_A,k_WEN_A[0:0],k_Addr_A[31:0],k_Din_A[7:0],k_Dout_A[7:0],buf_offset[31:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]m_axi_ctx_key_AWADDR;
  output [7:0]m_axi_ctx_key_AWLEN;
  output [2:0]m_axi_ctx_key_AWSIZE;
  output [1:0]m_axi_ctx_key_AWBURST;
  output [1:0]m_axi_ctx_key_AWLOCK;
  output [3:0]m_axi_ctx_key_AWREGION;
  output [3:0]m_axi_ctx_key_AWCACHE;
  output [2:0]m_axi_ctx_key_AWPROT;
  output [3:0]m_axi_ctx_key_AWQOS;
  output m_axi_ctx_key_AWVALID;
  input m_axi_ctx_key_AWREADY;
  output [31:0]m_axi_ctx_key_WDATA;
  output [3:0]m_axi_ctx_key_WSTRB;
  output m_axi_ctx_key_WLAST;
  output m_axi_ctx_key_WVALID;
  input m_axi_ctx_key_WREADY;
  input [1:0]m_axi_ctx_key_BRESP;
  input m_axi_ctx_key_BVALID;
  output m_axi_ctx_key_BREADY;
  output [31:0]m_axi_ctx_key_ARADDR;
  output [7:0]m_axi_ctx_key_ARLEN;
  output [2:0]m_axi_ctx_key_ARSIZE;
  output [1:0]m_axi_ctx_key_ARBURST;
  output [1:0]m_axi_ctx_key_ARLOCK;
  output [3:0]m_axi_ctx_key_ARREGION;
  output [3:0]m_axi_ctx_key_ARCACHE;
  output [2:0]m_axi_ctx_key_ARPROT;
  output [3:0]m_axi_ctx_key_ARQOS;
  output m_axi_ctx_key_ARVALID;
  input m_axi_ctx_key_ARREADY;
  input [31:0]m_axi_ctx_key_RDATA;
  input [1:0]m_axi_ctx_key_RRESP;
  input m_axi_ctx_key_RLAST;
  input m_axi_ctx_key_RVALID;
  output m_axi_ctx_key_RREADY;
  output [31:0]m_axi_ctx_enckey_AWADDR;
  output [7:0]m_axi_ctx_enckey_AWLEN;
  output [2:0]m_axi_ctx_enckey_AWSIZE;
  output [1:0]m_axi_ctx_enckey_AWBURST;
  output [1:0]m_axi_ctx_enckey_AWLOCK;
  output [3:0]m_axi_ctx_enckey_AWREGION;
  output [3:0]m_axi_ctx_enckey_AWCACHE;
  output [2:0]m_axi_ctx_enckey_AWPROT;
  output [3:0]m_axi_ctx_enckey_AWQOS;
  output m_axi_ctx_enckey_AWVALID;
  input m_axi_ctx_enckey_AWREADY;
  output [31:0]m_axi_ctx_enckey_WDATA;
  output [3:0]m_axi_ctx_enckey_WSTRB;
  output m_axi_ctx_enckey_WLAST;
  output m_axi_ctx_enckey_WVALID;
  input m_axi_ctx_enckey_WREADY;
  input [1:0]m_axi_ctx_enckey_BRESP;
  input m_axi_ctx_enckey_BVALID;
  output m_axi_ctx_enckey_BREADY;
  output [31:0]m_axi_ctx_enckey_ARADDR;
  output [7:0]m_axi_ctx_enckey_ARLEN;
  output [2:0]m_axi_ctx_enckey_ARSIZE;
  output [1:0]m_axi_ctx_enckey_ARBURST;
  output [1:0]m_axi_ctx_enckey_ARLOCK;
  output [3:0]m_axi_ctx_enckey_ARREGION;
  output [3:0]m_axi_ctx_enckey_ARCACHE;
  output [2:0]m_axi_ctx_enckey_ARPROT;
  output [3:0]m_axi_ctx_enckey_ARQOS;
  output m_axi_ctx_enckey_ARVALID;
  input m_axi_ctx_enckey_ARREADY;
  input [31:0]m_axi_ctx_enckey_RDATA;
  input [1:0]m_axi_ctx_enckey_RRESP;
  input m_axi_ctx_enckey_RLAST;
  input m_axi_ctx_enckey_RVALID;
  output m_axi_ctx_enckey_RREADY;
  output [31:0]m_axi_ctx_deckey_AWADDR;
  output [7:0]m_axi_ctx_deckey_AWLEN;
  output [2:0]m_axi_ctx_deckey_AWSIZE;
  output [1:0]m_axi_ctx_deckey_AWBURST;
  output [1:0]m_axi_ctx_deckey_AWLOCK;
  output [3:0]m_axi_ctx_deckey_AWREGION;
  output [3:0]m_axi_ctx_deckey_AWCACHE;
  output [2:0]m_axi_ctx_deckey_AWPROT;
  output [3:0]m_axi_ctx_deckey_AWQOS;
  output m_axi_ctx_deckey_AWVALID;
  input m_axi_ctx_deckey_AWREADY;
  output [31:0]m_axi_ctx_deckey_WDATA;
  output [3:0]m_axi_ctx_deckey_WSTRB;
  output m_axi_ctx_deckey_WLAST;
  output m_axi_ctx_deckey_WVALID;
  input m_axi_ctx_deckey_WREADY;
  input [1:0]m_axi_ctx_deckey_BRESP;
  input m_axi_ctx_deckey_BVALID;
  output m_axi_ctx_deckey_BREADY;
  output [31:0]m_axi_ctx_deckey_ARADDR;
  output [7:0]m_axi_ctx_deckey_ARLEN;
  output [2:0]m_axi_ctx_deckey_ARSIZE;
  output [1:0]m_axi_ctx_deckey_ARBURST;
  output [1:0]m_axi_ctx_deckey_ARLOCK;
  output [3:0]m_axi_ctx_deckey_ARREGION;
  output [3:0]m_axi_ctx_deckey_ARCACHE;
  output [2:0]m_axi_ctx_deckey_ARPROT;
  output [3:0]m_axi_ctx_deckey_ARQOS;
  output m_axi_ctx_deckey_ARVALID;
  input m_axi_ctx_deckey_ARREADY;
  input [31:0]m_axi_ctx_deckey_RDATA;
  input [1:0]m_axi_ctx_deckey_RRESP;
  input m_axi_ctx_deckey_RLAST;
  input m_axi_ctx_deckey_RVALID;
  output m_axi_ctx_deckey_RREADY;
  output [31:0]m_axi_buf_r_AWADDR;
  output [7:0]m_axi_buf_r_AWLEN;
  output [2:0]m_axi_buf_r_AWSIZE;
  output [1:0]m_axi_buf_r_AWBURST;
  output [1:0]m_axi_buf_r_AWLOCK;
  output [3:0]m_axi_buf_r_AWREGION;
  output [3:0]m_axi_buf_r_AWCACHE;
  output [2:0]m_axi_buf_r_AWPROT;
  output [3:0]m_axi_buf_r_AWQOS;
  output m_axi_buf_r_AWVALID;
  input m_axi_buf_r_AWREADY;
  output [31:0]m_axi_buf_r_WDATA;
  output [3:0]m_axi_buf_r_WSTRB;
  output m_axi_buf_r_WLAST;
  output m_axi_buf_r_WVALID;
  input m_axi_buf_r_WREADY;
  input [1:0]m_axi_buf_r_BRESP;
  input m_axi_buf_r_BVALID;
  output m_axi_buf_r_BREADY;
  output [31:0]m_axi_buf_r_ARADDR;
  output [7:0]m_axi_buf_r_ARLEN;
  output [2:0]m_axi_buf_r_ARSIZE;
  output [1:0]m_axi_buf_r_ARBURST;
  output [1:0]m_axi_buf_r_ARLOCK;
  output [3:0]m_axi_buf_r_ARREGION;
  output [3:0]m_axi_buf_r_ARCACHE;
  output [2:0]m_axi_buf_r_ARPROT;
  output [3:0]m_axi_buf_r_ARQOS;
  output m_axi_buf_r_ARVALID;
  input m_axi_buf_r_ARREADY;
  input [31:0]m_axi_buf_r_RDATA;
  input [1:0]m_axi_buf_r_RRESP;
  input m_axi_buf_r_RLAST;
  input m_axi_buf_r_RVALID;
  output m_axi_buf_r_RREADY;
  input [31:0]ctx_key_offset;
  input [31:0]ctx_enckey_offset;
  input [31:0]ctx_deckey_offset;
  output k_Clk_A;
  output k_Rst_A;
  output k_EN_A;
  output [0:0]k_WEN_A;
  output [31:0]k_Addr_A;
  output [7:0]k_Din_A;
  input [7:0]k_Dout_A;
  input [31:0]buf_offset;
endmodule
