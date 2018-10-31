// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
// Date        : Tue Oct 30 17:29:41 2018
// Host        : icgrid48 running 64-bit openSUSE Leap 42.3
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
  ap_ready, m_axi_ctx_AWADDR, m_axi_ctx_AWLEN, m_axi_ctx_AWSIZE, m_axi_ctx_AWBURST, 
  m_axi_ctx_AWLOCK, m_axi_ctx_AWREGION, m_axi_ctx_AWCACHE, m_axi_ctx_AWPROT, 
  m_axi_ctx_AWQOS, m_axi_ctx_AWVALID, m_axi_ctx_AWREADY, m_axi_ctx_WDATA, m_axi_ctx_WSTRB, 
  m_axi_ctx_WLAST, m_axi_ctx_WVALID, m_axi_ctx_WREADY, m_axi_ctx_BRESP, m_axi_ctx_BVALID, 
  m_axi_ctx_BREADY, m_axi_ctx_ARADDR, m_axi_ctx_ARLEN, m_axi_ctx_ARSIZE, m_axi_ctx_ARBURST, 
  m_axi_ctx_ARLOCK, m_axi_ctx_ARREGION, m_axi_ctx_ARCACHE, m_axi_ctx_ARPROT, 
  m_axi_ctx_ARQOS, m_axi_ctx_ARVALID, m_axi_ctx_ARREADY, m_axi_ctx_RDATA, m_axi_ctx_RRESP, 
  m_axi_ctx_RLAST, m_axi_ctx_RVALID, m_axi_ctx_RREADY, m_axi_buf_r_AWADDR, 
  m_axi_buf_r_AWLEN, m_axi_buf_r_AWSIZE, m_axi_buf_r_AWBURST, m_axi_buf_r_AWLOCK, 
  m_axi_buf_r_AWREGION, m_axi_buf_r_AWCACHE, m_axi_buf_r_AWPROT, m_axi_buf_r_AWQOS, 
  m_axi_buf_r_AWVALID, m_axi_buf_r_AWREADY, m_axi_buf_r_WDATA, m_axi_buf_r_WSTRB, 
  m_axi_buf_r_WLAST, m_axi_buf_r_WVALID, m_axi_buf_r_WREADY, m_axi_buf_r_BRESP, 
  m_axi_buf_r_BVALID, m_axi_buf_r_BREADY, m_axi_buf_r_ARADDR, m_axi_buf_r_ARLEN, 
  m_axi_buf_r_ARSIZE, m_axi_buf_r_ARBURST, m_axi_buf_r_ARLOCK, m_axi_buf_r_ARREGION, 
  m_axi_buf_r_ARCACHE, m_axi_buf_r_ARPROT, m_axi_buf_r_ARQOS, m_axi_buf_r_ARVALID, 
  m_axi_buf_r_ARREADY, m_axi_buf_r_RDATA, m_axi_buf_r_RRESP, m_axi_buf_r_RLAST, 
  m_axi_buf_r_RVALID, m_axi_buf_r_RREADY, ctx_offset, k_Clk_A, k_Rst_A, k_EN_A, k_WEN_A, 
  k_Addr_A, k_Din_A, k_Dout_A, buf_offset)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,m_axi_ctx_AWADDR[31:0],m_axi_ctx_AWLEN[7:0],m_axi_ctx_AWSIZE[2:0],m_axi_ctx_AWBURST[1:0],m_axi_ctx_AWLOCK[1:0],m_axi_ctx_AWREGION[3:0],m_axi_ctx_AWCACHE[3:0],m_axi_ctx_AWPROT[2:0],m_axi_ctx_AWQOS[3:0],m_axi_ctx_AWVALID,m_axi_ctx_AWREADY,m_axi_ctx_WDATA[1023:0],m_axi_ctx_WSTRB[127:0],m_axi_ctx_WLAST,m_axi_ctx_WVALID,m_axi_ctx_WREADY,m_axi_ctx_BRESP[1:0],m_axi_ctx_BVALID,m_axi_ctx_BREADY,m_axi_ctx_ARADDR[31:0],m_axi_ctx_ARLEN[7:0],m_axi_ctx_ARSIZE[2:0],m_axi_ctx_ARBURST[1:0],m_axi_ctx_ARLOCK[1:0],m_axi_ctx_ARREGION[3:0],m_axi_ctx_ARCACHE[3:0],m_axi_ctx_ARPROT[2:0],m_axi_ctx_ARQOS[3:0],m_axi_ctx_ARVALID,m_axi_ctx_ARREADY,m_axi_ctx_RDATA[1023:0],m_axi_ctx_RRESP[1:0],m_axi_ctx_RLAST,m_axi_ctx_RVALID,m_axi_ctx_RREADY,m_axi_buf_r_AWADDR[31:0],m_axi_buf_r_AWLEN[7:0],m_axi_buf_r_AWSIZE[2:0],m_axi_buf_r_AWBURST[1:0],m_axi_buf_r_AWLOCK[1:0],m_axi_buf_r_AWREGION[3:0],m_axi_buf_r_AWCACHE[3:0],m_axi_buf_r_AWPROT[2:0],m_axi_buf_r_AWQOS[3:0],m_axi_buf_r_AWVALID,m_axi_buf_r_AWREADY,m_axi_buf_r_WDATA[31:0],m_axi_buf_r_WSTRB[3:0],m_axi_buf_r_WLAST,m_axi_buf_r_WVALID,m_axi_buf_r_WREADY,m_axi_buf_r_BRESP[1:0],m_axi_buf_r_BVALID,m_axi_buf_r_BREADY,m_axi_buf_r_ARADDR[31:0],m_axi_buf_r_ARLEN[7:0],m_axi_buf_r_ARSIZE[2:0],m_axi_buf_r_ARBURST[1:0],m_axi_buf_r_ARLOCK[1:0],m_axi_buf_r_ARREGION[3:0],m_axi_buf_r_ARCACHE[3:0],m_axi_buf_r_ARPROT[2:0],m_axi_buf_r_ARQOS[3:0],m_axi_buf_r_ARVALID,m_axi_buf_r_ARREADY,m_axi_buf_r_RDATA[31:0],m_axi_buf_r_RRESP[1:0],m_axi_buf_r_RLAST,m_axi_buf_r_RVALID,m_axi_buf_r_RREADY,ctx_offset[31:0],k_Clk_A,k_Rst_A,k_EN_A,k_WEN_A[0:0],k_Addr_A[31:0],k_Din_A[7:0],k_Dout_A[7:0],buf_offset[31:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]m_axi_ctx_AWADDR;
  output [7:0]m_axi_ctx_AWLEN;
  output [2:0]m_axi_ctx_AWSIZE;
  output [1:0]m_axi_ctx_AWBURST;
  output [1:0]m_axi_ctx_AWLOCK;
  output [3:0]m_axi_ctx_AWREGION;
  output [3:0]m_axi_ctx_AWCACHE;
  output [2:0]m_axi_ctx_AWPROT;
  output [3:0]m_axi_ctx_AWQOS;
  output m_axi_ctx_AWVALID;
  input m_axi_ctx_AWREADY;
  output [1023:0]m_axi_ctx_WDATA;
  output [127:0]m_axi_ctx_WSTRB;
  output m_axi_ctx_WLAST;
  output m_axi_ctx_WVALID;
  input m_axi_ctx_WREADY;
  input [1:0]m_axi_ctx_BRESP;
  input m_axi_ctx_BVALID;
  output m_axi_ctx_BREADY;
  output [31:0]m_axi_ctx_ARADDR;
  output [7:0]m_axi_ctx_ARLEN;
  output [2:0]m_axi_ctx_ARSIZE;
  output [1:0]m_axi_ctx_ARBURST;
  output [1:0]m_axi_ctx_ARLOCK;
  output [3:0]m_axi_ctx_ARREGION;
  output [3:0]m_axi_ctx_ARCACHE;
  output [2:0]m_axi_ctx_ARPROT;
  output [3:0]m_axi_ctx_ARQOS;
  output m_axi_ctx_ARVALID;
  input m_axi_ctx_ARREADY;
  input [1023:0]m_axi_ctx_RDATA;
  input [1:0]m_axi_ctx_RRESP;
  input m_axi_ctx_RLAST;
  input m_axi_ctx_RVALID;
  output m_axi_ctx_RREADY;
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
  input [31:0]ctx_offset;
  output k_Clk_A;
  output k_Rst_A;
  output k_EN_A;
  output [0:0]k_WEN_A;
  output [31:0]k_Addr_A;
  output [7:0]k_Din_A;
  input [7:0]k_Dout_A;
  input [31:0]buf_offset;
endmodule
