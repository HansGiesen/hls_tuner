// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module a0_aes_addRoundKey_cpy (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_buf_r_AWVALID,
        m_axi_buf_r_AWREADY,
        m_axi_buf_r_AWADDR,
        m_axi_buf_r_AWID,
        m_axi_buf_r_AWLEN,
        m_axi_buf_r_AWSIZE,
        m_axi_buf_r_AWBURST,
        m_axi_buf_r_AWLOCK,
        m_axi_buf_r_AWCACHE,
        m_axi_buf_r_AWPROT,
        m_axi_buf_r_AWQOS,
        m_axi_buf_r_AWREGION,
        m_axi_buf_r_AWUSER,
        m_axi_buf_r_WVALID,
        m_axi_buf_r_WREADY,
        m_axi_buf_r_WDATA,
        m_axi_buf_r_WSTRB,
        m_axi_buf_r_WLAST,
        m_axi_buf_r_WID,
        m_axi_buf_r_WUSER,
        m_axi_buf_r_ARVALID,
        m_axi_buf_r_ARREADY,
        m_axi_buf_r_ARADDR,
        m_axi_buf_r_ARID,
        m_axi_buf_r_ARLEN,
        m_axi_buf_r_ARSIZE,
        m_axi_buf_r_ARBURST,
        m_axi_buf_r_ARLOCK,
        m_axi_buf_r_ARCACHE,
        m_axi_buf_r_ARPROT,
        m_axi_buf_r_ARQOS,
        m_axi_buf_r_ARREGION,
        m_axi_buf_r_ARUSER,
        m_axi_buf_r_RVALID,
        m_axi_buf_r_RREADY,
        m_axi_buf_r_RDATA,
        m_axi_buf_r_RLAST,
        m_axi_buf_r_RID,
        m_axi_buf_r_RUSER,
        m_axi_buf_r_RRESP,
        m_axi_buf_r_BVALID,
        m_axi_buf_r_BREADY,
        m_axi_buf_r_BRESP,
        m_axi_buf_r_BID,
        m_axi_buf_r_BUSER,
        buf_offset,
        m_axi_key_AWVALID,
        m_axi_key_AWREADY,
        m_axi_key_AWADDR,
        m_axi_key_AWID,
        m_axi_key_AWLEN,
        m_axi_key_AWSIZE,
        m_axi_key_AWBURST,
        m_axi_key_AWLOCK,
        m_axi_key_AWCACHE,
        m_axi_key_AWPROT,
        m_axi_key_AWQOS,
        m_axi_key_AWREGION,
        m_axi_key_AWUSER,
        m_axi_key_WVALID,
        m_axi_key_WREADY,
        m_axi_key_WDATA,
        m_axi_key_WSTRB,
        m_axi_key_WLAST,
        m_axi_key_WID,
        m_axi_key_WUSER,
        m_axi_key_ARVALID,
        m_axi_key_ARREADY,
        m_axi_key_ARADDR,
        m_axi_key_ARID,
        m_axi_key_ARLEN,
        m_axi_key_ARSIZE,
        m_axi_key_ARBURST,
        m_axi_key_ARLOCK,
        m_axi_key_ARCACHE,
        m_axi_key_ARPROT,
        m_axi_key_ARQOS,
        m_axi_key_ARREGION,
        m_axi_key_ARUSER,
        m_axi_key_RVALID,
        m_axi_key_RREADY,
        m_axi_key_RDATA,
        m_axi_key_RLAST,
        m_axi_key_RID,
        m_axi_key_RUSER,
        m_axi_key_RRESP,
        m_axi_key_BVALID,
        m_axi_key_BREADY,
        m_axi_key_BRESP,
        m_axi_key_BID,
        m_axi_key_BUSER,
        key_offset,
        m_axi_cpk_AWVALID,
        m_axi_cpk_AWREADY,
        m_axi_cpk_AWADDR,
        m_axi_cpk_AWID,
        m_axi_cpk_AWLEN,
        m_axi_cpk_AWSIZE,
        m_axi_cpk_AWBURST,
        m_axi_cpk_AWLOCK,
        m_axi_cpk_AWCACHE,
        m_axi_cpk_AWPROT,
        m_axi_cpk_AWQOS,
        m_axi_cpk_AWREGION,
        m_axi_cpk_AWUSER,
        m_axi_cpk_WVALID,
        m_axi_cpk_WREADY,
        m_axi_cpk_WDATA,
        m_axi_cpk_WSTRB,
        m_axi_cpk_WLAST,
        m_axi_cpk_WID,
        m_axi_cpk_WUSER,
        m_axi_cpk_ARVALID,
        m_axi_cpk_ARREADY,
        m_axi_cpk_ARADDR,
        m_axi_cpk_ARID,
        m_axi_cpk_ARLEN,
        m_axi_cpk_ARSIZE,
        m_axi_cpk_ARBURST,
        m_axi_cpk_ARLOCK,
        m_axi_cpk_ARCACHE,
        m_axi_cpk_ARPROT,
        m_axi_cpk_ARQOS,
        m_axi_cpk_ARREGION,
        m_axi_cpk_ARUSER,
        m_axi_cpk_RVALID,
        m_axi_cpk_RREADY,
        m_axi_cpk_RDATA,
        m_axi_cpk_RLAST,
        m_axi_cpk_RID,
        m_axi_cpk_RUSER,
        m_axi_cpk_RRESP,
        m_axi_cpk_BVALID,
        m_axi_cpk_BREADY,
        m_axi_cpk_BRESP,
        m_axi_cpk_BID,
        m_axi_cpk_BUSER,
        cpk_offset
);

parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_buf_r_AWVALID;
input   m_axi_buf_r_AWREADY;
output  [31:0] m_axi_buf_r_AWADDR;
output  [0:0] m_axi_buf_r_AWID;
output  [31:0] m_axi_buf_r_AWLEN;
output  [2:0] m_axi_buf_r_AWSIZE;
output  [1:0] m_axi_buf_r_AWBURST;
output  [1:0] m_axi_buf_r_AWLOCK;
output  [3:0] m_axi_buf_r_AWCACHE;
output  [2:0] m_axi_buf_r_AWPROT;
output  [3:0] m_axi_buf_r_AWQOS;
output  [3:0] m_axi_buf_r_AWREGION;
output  [0:0] m_axi_buf_r_AWUSER;
output   m_axi_buf_r_WVALID;
input   m_axi_buf_r_WREADY;
output  [7:0] m_axi_buf_r_WDATA;
output  [0:0] m_axi_buf_r_WSTRB;
output   m_axi_buf_r_WLAST;
output  [0:0] m_axi_buf_r_WID;
output  [0:0] m_axi_buf_r_WUSER;
output   m_axi_buf_r_ARVALID;
input   m_axi_buf_r_ARREADY;
output  [31:0] m_axi_buf_r_ARADDR;
output  [0:0] m_axi_buf_r_ARID;
output  [31:0] m_axi_buf_r_ARLEN;
output  [2:0] m_axi_buf_r_ARSIZE;
output  [1:0] m_axi_buf_r_ARBURST;
output  [1:0] m_axi_buf_r_ARLOCK;
output  [3:0] m_axi_buf_r_ARCACHE;
output  [2:0] m_axi_buf_r_ARPROT;
output  [3:0] m_axi_buf_r_ARQOS;
output  [3:0] m_axi_buf_r_ARREGION;
output  [0:0] m_axi_buf_r_ARUSER;
input   m_axi_buf_r_RVALID;
output   m_axi_buf_r_RREADY;
input  [7:0] m_axi_buf_r_RDATA;
input   m_axi_buf_r_RLAST;
input  [0:0] m_axi_buf_r_RID;
input  [0:0] m_axi_buf_r_RUSER;
input  [1:0] m_axi_buf_r_RRESP;
input   m_axi_buf_r_BVALID;
output   m_axi_buf_r_BREADY;
input  [1:0] m_axi_buf_r_BRESP;
input  [0:0] m_axi_buf_r_BID;
input  [0:0] m_axi_buf_r_BUSER;
input  [31:0] buf_offset;
output   m_axi_key_AWVALID;
input   m_axi_key_AWREADY;
output  [31:0] m_axi_key_AWADDR;
output  [0:0] m_axi_key_AWID;
output  [31:0] m_axi_key_AWLEN;
output  [2:0] m_axi_key_AWSIZE;
output  [1:0] m_axi_key_AWBURST;
output  [1:0] m_axi_key_AWLOCK;
output  [3:0] m_axi_key_AWCACHE;
output  [2:0] m_axi_key_AWPROT;
output  [3:0] m_axi_key_AWQOS;
output  [3:0] m_axi_key_AWREGION;
output  [0:0] m_axi_key_AWUSER;
output   m_axi_key_WVALID;
input   m_axi_key_WREADY;
output  [7:0] m_axi_key_WDATA;
output  [0:0] m_axi_key_WSTRB;
output   m_axi_key_WLAST;
output  [0:0] m_axi_key_WID;
output  [0:0] m_axi_key_WUSER;
output   m_axi_key_ARVALID;
input   m_axi_key_ARREADY;
output  [31:0] m_axi_key_ARADDR;
output  [0:0] m_axi_key_ARID;
output  [31:0] m_axi_key_ARLEN;
output  [2:0] m_axi_key_ARSIZE;
output  [1:0] m_axi_key_ARBURST;
output  [1:0] m_axi_key_ARLOCK;
output  [3:0] m_axi_key_ARCACHE;
output  [2:0] m_axi_key_ARPROT;
output  [3:0] m_axi_key_ARQOS;
output  [3:0] m_axi_key_ARREGION;
output  [0:0] m_axi_key_ARUSER;
input   m_axi_key_RVALID;
output   m_axi_key_RREADY;
input  [7:0] m_axi_key_RDATA;
input   m_axi_key_RLAST;
input  [0:0] m_axi_key_RID;
input  [0:0] m_axi_key_RUSER;
input  [1:0] m_axi_key_RRESP;
input   m_axi_key_BVALID;
output   m_axi_key_BREADY;
input  [1:0] m_axi_key_BRESP;
input  [0:0] m_axi_key_BID;
input  [0:0] m_axi_key_BUSER;
input  [31:0] key_offset;
output   m_axi_cpk_AWVALID;
input   m_axi_cpk_AWREADY;
output  [31:0] m_axi_cpk_AWADDR;
output  [0:0] m_axi_cpk_AWID;
output  [31:0] m_axi_cpk_AWLEN;
output  [2:0] m_axi_cpk_AWSIZE;
output  [1:0] m_axi_cpk_AWBURST;
output  [1:0] m_axi_cpk_AWLOCK;
output  [3:0] m_axi_cpk_AWCACHE;
output  [2:0] m_axi_cpk_AWPROT;
output  [3:0] m_axi_cpk_AWQOS;
output  [3:0] m_axi_cpk_AWREGION;
output  [0:0] m_axi_cpk_AWUSER;
output   m_axi_cpk_WVALID;
input   m_axi_cpk_WREADY;
output  [7:0] m_axi_cpk_WDATA;
output  [0:0] m_axi_cpk_WSTRB;
output   m_axi_cpk_WLAST;
output  [0:0] m_axi_cpk_WID;
output  [0:0] m_axi_cpk_WUSER;
output   m_axi_cpk_ARVALID;
input   m_axi_cpk_ARREADY;
output  [31:0] m_axi_cpk_ARADDR;
output  [0:0] m_axi_cpk_ARID;
output  [31:0] m_axi_cpk_ARLEN;
output  [2:0] m_axi_cpk_ARSIZE;
output  [1:0] m_axi_cpk_ARBURST;
output  [1:0] m_axi_cpk_ARLOCK;
output  [3:0] m_axi_cpk_ARCACHE;
output  [2:0] m_axi_cpk_ARPROT;
output  [3:0] m_axi_cpk_ARQOS;
output  [3:0] m_axi_cpk_ARREGION;
output  [0:0] m_axi_cpk_ARUSER;
input   m_axi_cpk_RVALID;
output   m_axi_cpk_RREADY;
input  [7:0] m_axi_cpk_RDATA;
input   m_axi_cpk_RLAST;
input  [0:0] m_axi_cpk_RID;
input  [0:0] m_axi_cpk_RUSER;
input  [1:0] m_axi_cpk_RRESP;
input   m_axi_cpk_BVALID;
output   m_axi_cpk_BREADY;
input  [1:0] m_axi_cpk_BRESP;
input  [0:0] m_axi_cpk_BID;
input  [0:0] m_axi_cpk_BUSER;
input  [31:0] cpk_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_buf_r_AWVALID;
reg m_axi_buf_r_WVALID;
reg m_axi_buf_r_ARVALID;
reg m_axi_buf_r_RREADY;
reg m_axi_buf_r_BREADY;
reg m_axi_key_ARVALID;
reg[31:0] m_axi_key_ARADDR;
reg m_axi_key_RREADY;
reg m_axi_cpk_AWVALID;
reg[31:0] m_axi_cpk_AWADDR;
reg m_axi_cpk_WVALID;
reg[7:0] m_axi_cpk_WDATA;
reg m_axi_cpk_BREADY;

(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    buf_r_blk_n_AR;
wire    ap_CS_fsm_state3;
reg    buf_r_blk_n_R;
wire    ap_CS_fsm_state10;
reg    buf_r_blk_n_AW;
wire    ap_CS_fsm_state11;
reg    buf_r_blk_n_W;
wire    ap_CS_fsm_state12;
reg    buf_r_blk_n_B;
wire    ap_CS_fsm_state17;
reg    key_blk_n_AR;
reg    key_blk_n_R;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state13;
reg    cpk_blk_n_AW;
reg    cpk_blk_n_W;
reg    cpk_blk_n_B;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state19;
wire   [4:0] i_10_fu_169_p2;
reg   [4:0] i_10_reg_275;
wire    ap_CS_fsm_state2;
reg   [31:0] key_addr_reg_283;
wire   [0:0] tmp_fu_179_p2;
reg   [31:0] cpk_addr_reg_289;
reg   [31:0] buf_addr_reg_295;
reg   [31:0] key_addr_1_reg_302;
reg   [31:0] cpk_addr_1_reg_308;
reg   [7:0] key_addr_read_reg_314;
reg    ap_block_state10;
reg   [7:0] buf_addr_read_reg_320;
wire   [7:0] tmp_33_fu_254_p2;
reg   [7:0] tmp_33_reg_325;
reg    ap_sig_ioackin_m_axi_cpk_AWREADY;
reg    ap_sig_ioackin_m_axi_buf_r_AWREADY;
reg    ap_block_state11_io;
reg   [7:0] key_addr_1_read_reg_330;
reg   [4:0] i_reg_158;
wire   [31:0] sum2_fu_189_p2;
wire   [31:0] sum6_fu_200_p2;
wire   [31:0] sum_fu_211_p2;
wire   [31:0] sum3_fu_232_p2;
wire   [31:0] sum7_fu_243_p2;
reg    ap_reg_ioackin_m_axi_key_ARREADY;
reg    ap_sig_ioackin_m_axi_key_ARREADY;
reg    ap_sig_ioackin_m_axi_buf_r_ARREADY;
reg    ap_block_state3_io;
reg    ap_reg_ioackin_m_axi_buf_r_ARREADY;
reg    ap_reg_ioackin_m_axi_buf_r_AWREADY;
reg    ap_block_state17;
reg    ap_reg_ioackin_m_axi_cpk_AWREADY;
reg    ap_reg_ioackin_m_axi_cpk_WREADY;
reg    ap_sig_ioackin_m_axi_cpk_WREADY;
reg    ap_sig_ioackin_m_axi_buf_r_WREADY;
reg    ap_block_state12_io;
reg    ap_reg_ioackin_m_axi_buf_r_WREADY;
wire  signed [7:0] i_10_cast_fu_175_p1;
wire   [31:0] tmp_s_fu_185_p1;
wire   [4:0] sum5_fu_222_p2;
wire   [31:0] sum5_cast_fu_228_p1;
reg   [18:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 19'd1;
#0 ap_reg_ioackin_m_axi_key_ARREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_buf_r_ARREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_buf_r_AWREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_cpk_AWREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_cpk_WREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_buf_r_WREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_buf_r_ARREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            if ((ap_block_state3_io == 1'b0)) begin
                ap_reg_ioackin_m_axi_buf_r_ARREADY <= 1'b0;
            end else if ((1'b1 == m_axi_buf_r_ARREADY)) begin
                ap_reg_ioackin_m_axi_buf_r_ARREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_buf_r_AWREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            if ((ap_block_state11_io == 1'b0)) begin
                ap_reg_ioackin_m_axi_buf_r_AWREADY <= 1'b0;
            end else if ((1'b1 == m_axi_buf_r_AWREADY)) begin
                ap_reg_ioackin_m_axi_buf_r_AWREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_buf_r_WREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            if ((ap_block_state12_io == 1'b0)) begin
                ap_reg_ioackin_m_axi_buf_r_WREADY <= 1'b0;
            end else if ((1'b1 == m_axi_buf_r_WREADY)) begin
                ap_reg_ioackin_m_axi_buf_r_WREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_cpk_AWREADY <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state11) & (ap_block_state11_io == 1'b0)) | ((1'b1 == ap_CS_fsm_state13) & ~((1'b0 == m_axi_key_RVALID) | (1'b0 == ap_sig_ioackin_m_axi_cpk_AWREADY))))) begin
            ap_reg_ioackin_m_axi_cpk_AWREADY <= 1'b0;
        end else if ((((1'b1 == ap_CS_fsm_state11) & (1'b1 == m_axi_cpk_AWREADY)) | ((1'b1 == ap_CS_fsm_state13) & (1'b1 == m_axi_cpk_AWREADY) & (m_axi_key_RVALID == 1'b1)))) begin
            ap_reg_ioackin_m_axi_cpk_AWREADY <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_cpk_WREADY <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state12) & (ap_block_state12_io == 1'b0)) | ((1'b1 == ap_CS_fsm_state14) & (ap_sig_ioackin_m_axi_cpk_WREADY == 1'b1)))) begin
            ap_reg_ioackin_m_axi_cpk_WREADY <= 1'b0;
        end else if ((((1'b1 == ap_CS_fsm_state12) & (1'b1 == m_axi_cpk_WREADY)) | ((1'b1 == ap_CS_fsm_state14) & (1'b1 == m_axi_cpk_WREADY)))) begin
            ap_reg_ioackin_m_axi_cpk_WREADY <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_key_ARREADY <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state3) & (ap_block_state3_io == 1'b0)) | ((1'b1 == ap_CS_fsm_state6) & (ap_sig_ioackin_m_axi_key_ARREADY == 1'b1)))) begin
            ap_reg_ioackin_m_axi_key_ARREADY <= 1'b0;
        end else if ((((1'b1 == ap_CS_fsm_state3) & (1'b1 == m_axi_key_ARREADY)) | ((1'b1 == ap_CS_fsm_state6) & (1'b1 == m_axi_key_ARREADY)))) begin
            ap_reg_ioackin_m_axi_key_ARREADY <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) & (m_axi_cpk_BVALID == 1'b1))) begin
        i_reg_158 <= i_10_reg_275;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_158 <= 5'd16;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & ~((1'b0 == m_axi_key_RVALID) | (1'b0 == m_axi_buf_r_RVALID)))) begin
        buf_addr_read_reg_320 <= m_axi_buf_r_RDATA;
        key_addr_read_reg_314 <= m_axi_key_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'd0 == tmp_fu_179_p2))) begin
        buf_addr_reg_295 <= sum_fu_211_p2;
        cpk_addr_1_reg_308 <= sum7_fu_243_p2;
        cpk_addr_reg_289 <= sum6_fu_200_p2;
        key_addr_1_reg_302 <= sum3_fu_232_p2;
        key_addr_reg_283 <= sum2_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_10_reg_275 <= i_10_fu_169_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & ~((1'b0 == m_axi_key_RVALID) | (1'b0 == ap_sig_ioackin_m_axi_cpk_AWREADY)))) begin
        key_addr_1_read_reg_330 <= m_axi_key_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) & (ap_block_state11_io == 1'b0))) begin
        tmp_33_reg_325 <= tmp_33_fu_254_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (tmp_fu_179_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_179_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_buf_r_ARREADY)) begin
        ap_sig_ioackin_m_axi_buf_r_ARREADY = m_axi_buf_r_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_buf_r_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_buf_r_AWREADY)) begin
        ap_sig_ioackin_m_axi_buf_r_AWREADY = m_axi_buf_r_AWREADY;
    end else begin
        ap_sig_ioackin_m_axi_buf_r_AWREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_buf_r_WREADY)) begin
        ap_sig_ioackin_m_axi_buf_r_WREADY = m_axi_buf_r_WREADY;
    end else begin
        ap_sig_ioackin_m_axi_buf_r_WREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_cpk_AWREADY)) begin
        ap_sig_ioackin_m_axi_cpk_AWREADY = m_axi_cpk_AWREADY;
    end else begin
        ap_sig_ioackin_m_axi_cpk_AWREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_cpk_WREADY)) begin
        ap_sig_ioackin_m_axi_cpk_WREADY = m_axi_cpk_WREADY;
    end else begin
        ap_sig_ioackin_m_axi_cpk_WREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_key_ARREADY)) begin
        ap_sig_ioackin_m_axi_key_ARREADY = m_axi_key_ARREADY;
    end else begin
        ap_sig_ioackin_m_axi_key_ARREADY = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        buf_r_blk_n_AR = m_axi_buf_r_ARREADY;
    end else begin
        buf_r_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        buf_r_blk_n_AW = m_axi_buf_r_AWREADY;
    end else begin
        buf_r_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        buf_r_blk_n_B = m_axi_buf_r_BVALID;
    end else begin
        buf_r_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        buf_r_blk_n_R = m_axi_buf_r_RVALID;
    end else begin
        buf_r_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        buf_r_blk_n_W = m_axi_buf_r_WREADY;
    end else begin
        buf_r_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13))) begin
        cpk_blk_n_AW = m_axi_cpk_AWREADY;
    end else begin
        cpk_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state19))) begin
        cpk_blk_n_B = m_axi_cpk_BVALID;
    end else begin
        cpk_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state14))) begin
        cpk_blk_n_W = m_axi_cpk_WREADY;
    end else begin
        cpk_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6))) begin
        key_blk_n_AR = m_axi_key_ARREADY;
    end else begin
        key_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13))) begin
        key_blk_n_R = m_axi_key_RVALID;
    end else begin
        key_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_reg_ioackin_m_axi_buf_r_ARREADY))) begin
        m_axi_buf_r_ARVALID = 1'b1;
    end else begin
        m_axi_buf_r_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_reg_ioackin_m_axi_buf_r_AWREADY))) begin
        m_axi_buf_r_AWVALID = 1'b1;
    end else begin
        m_axi_buf_r_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) & ~((1'b0 == m_axi_cpk_BVALID) | (1'b0 == m_axi_buf_r_BVALID)))) begin
        m_axi_buf_r_BREADY = 1'b1;
    end else begin
        m_axi_buf_r_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & ~((1'b0 == m_axi_key_RVALID) | (1'b0 == m_axi_buf_r_RVALID)))) begin
        m_axi_buf_r_RREADY = 1'b1;
    end else begin
        m_axi_buf_r_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_reg_ioackin_m_axi_buf_r_WREADY))) begin
        m_axi_buf_r_WVALID = 1'b1;
    end else begin
        m_axi_buf_r_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_cpk_AWREADY)) begin
        if (((1'b1 == ap_CS_fsm_state13) & (m_axi_key_RVALID == 1'b1))) begin
            m_axi_cpk_AWADDR = cpk_addr_1_reg_308;
        end else if ((1'b1 == ap_CS_fsm_state11)) begin
            m_axi_cpk_AWADDR = cpk_addr_reg_289;
        end else begin
            m_axi_cpk_AWADDR = 'bx;
        end
    end else begin
        m_axi_cpk_AWADDR = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state11) & (1'b0 == ap_reg_ioackin_m_axi_cpk_AWREADY)) | ((1'b1 == ap_CS_fsm_state13) & (1'b0 == ap_reg_ioackin_m_axi_cpk_AWREADY) & (m_axi_key_RVALID == 1'b1)))) begin
        m_axi_cpk_AWVALID = 1'b1;
    end else begin
        m_axi_cpk_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state19) & (m_axi_cpk_BVALID == 1'b1)) | ((1'b1 == ap_CS_fsm_state17) & ~((1'b0 == m_axi_cpk_BVALID) | (1'b0 == m_axi_buf_r_BVALID))))) begin
        m_axi_cpk_BREADY = 1'b1;
    end else begin
        m_axi_cpk_BREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_cpk_WREADY)) begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            m_axi_cpk_WDATA = key_addr_1_read_reg_330;
        end else if ((1'b1 == ap_CS_fsm_state12)) begin
            m_axi_cpk_WDATA = key_addr_read_reg_314;
        end else begin
            m_axi_cpk_WDATA = 'bx;
        end
    end else begin
        m_axi_cpk_WDATA = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state12) & (1'b0 == ap_reg_ioackin_m_axi_cpk_WREADY)) | ((1'b1 == ap_CS_fsm_state14) & (1'b0 == ap_reg_ioackin_m_axi_cpk_WREADY)))) begin
        m_axi_cpk_WVALID = 1'b1;
    end else begin
        m_axi_cpk_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_m_axi_key_ARREADY)) begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            m_axi_key_ARADDR = key_addr_1_reg_302;
        end else if ((1'b1 == ap_CS_fsm_state3)) begin
            m_axi_key_ARADDR = key_addr_reg_283;
        end else begin
            m_axi_key_ARADDR = 'bx;
        end
    end else begin
        m_axi_key_ARADDR = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (1'b0 == ap_reg_ioackin_m_axi_key_ARREADY)) | ((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_reg_ioackin_m_axi_key_ARREADY)))) begin
        m_axi_key_ARVALID = 1'b1;
    end else begin
        m_axi_key_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state10) & ~((1'b0 == m_axi_key_RVALID) | (1'b0 == m_axi_buf_r_RVALID))) | ((1'b1 == ap_CS_fsm_state13) & ~((1'b0 == m_axi_key_RVALID) | (1'b0 == ap_sig_ioackin_m_axi_cpk_AWREADY))))) begin
        m_axi_key_RREADY = 1'b1;
    end else begin
        m_axi_key_RREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_179_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (ap_block_state3_io == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (ap_sig_ioackin_m_axi_key_ARREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & ~((1'b0 == m_axi_key_RVALID) | (1'b0 == m_axi_buf_r_RVALID)))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (ap_block_state11_io == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (ap_block_state12_io == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & ~((1'b0 == m_axi_key_RVALID) | (1'b0 == ap_sig_ioackin_m_axi_cpk_AWREADY)))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (ap_sig_ioackin_m_axi_cpk_WREADY == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((1'b1 == ap_CS_fsm_state17) & ~((1'b0 == m_axi_cpk_BVALID) | (1'b0 == m_axi_buf_r_BVALID)))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b1 == ap_CS_fsm_state19) & (m_axi_cpk_BVALID == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_block_state10 = ((1'b0 == m_axi_key_RVALID) | (1'b0 == m_axi_buf_r_RVALID));
end

always @ (*) begin
    ap_block_state11_io = ((1'b0 == ap_sig_ioackin_m_axi_cpk_AWREADY) | (1'b0 == ap_sig_ioackin_m_axi_buf_r_AWREADY));
end

always @ (*) begin
    ap_block_state12_io = ((1'b0 == ap_sig_ioackin_m_axi_cpk_WREADY) | (1'b0 == ap_sig_ioackin_m_axi_buf_r_WREADY));
end

always @ (*) begin
    ap_block_state17 = ((1'b0 == m_axi_cpk_BVALID) | (1'b0 == m_axi_buf_r_BVALID));
end

always @ (*) begin
    ap_block_state3_io = ((1'b0 == ap_sig_ioackin_m_axi_key_ARREADY) | (1'b0 == ap_sig_ioackin_m_axi_buf_r_ARREADY));
end

assign i_10_cast_fu_175_p1 = $signed(i_10_fu_169_p2);

assign i_10_fu_169_p2 = ($signed(i_reg_158) + $signed(5'd31));

assign m_axi_buf_r_ARADDR = buf_addr_reg_295;

assign m_axi_buf_r_ARBURST = 2'd0;

assign m_axi_buf_r_ARCACHE = 4'd0;

assign m_axi_buf_r_ARID = 1'd0;

assign m_axi_buf_r_ARLEN = 32'd1;

assign m_axi_buf_r_ARLOCK = 2'd0;

assign m_axi_buf_r_ARPROT = 3'd0;

assign m_axi_buf_r_ARQOS = 4'd0;

assign m_axi_buf_r_ARREGION = 4'd0;

assign m_axi_buf_r_ARSIZE = 3'd0;

assign m_axi_buf_r_ARUSER = 1'd0;

assign m_axi_buf_r_AWADDR = buf_addr_reg_295;

assign m_axi_buf_r_AWBURST = 2'd0;

assign m_axi_buf_r_AWCACHE = 4'd0;

assign m_axi_buf_r_AWID = 1'd0;

assign m_axi_buf_r_AWLEN = 32'd1;

assign m_axi_buf_r_AWLOCK = 2'd0;

assign m_axi_buf_r_AWPROT = 3'd0;

assign m_axi_buf_r_AWQOS = 4'd0;

assign m_axi_buf_r_AWREGION = 4'd0;

assign m_axi_buf_r_AWSIZE = 3'd0;

assign m_axi_buf_r_AWUSER = 1'd0;

assign m_axi_buf_r_WDATA = tmp_33_reg_325;

assign m_axi_buf_r_WID = 1'd0;

assign m_axi_buf_r_WLAST = 1'b0;

assign m_axi_buf_r_WSTRB = 1'd1;

assign m_axi_buf_r_WUSER = 1'd0;

assign m_axi_cpk_ARADDR = 32'd0;

assign m_axi_cpk_ARBURST = 2'd0;

assign m_axi_cpk_ARCACHE = 4'd0;

assign m_axi_cpk_ARID = 1'd0;

assign m_axi_cpk_ARLEN = 32'd0;

assign m_axi_cpk_ARLOCK = 2'd0;

assign m_axi_cpk_ARPROT = 3'd0;

assign m_axi_cpk_ARQOS = 4'd0;

assign m_axi_cpk_ARREGION = 4'd0;

assign m_axi_cpk_ARSIZE = 3'd0;

assign m_axi_cpk_ARUSER = 1'd0;

assign m_axi_cpk_ARVALID = 1'b0;

assign m_axi_cpk_AWBURST = 2'd0;

assign m_axi_cpk_AWCACHE = 4'd0;

assign m_axi_cpk_AWID = 1'd0;

assign m_axi_cpk_AWLEN = 32'd1;

assign m_axi_cpk_AWLOCK = 2'd0;

assign m_axi_cpk_AWPROT = 3'd0;

assign m_axi_cpk_AWQOS = 4'd0;

assign m_axi_cpk_AWREGION = 4'd0;

assign m_axi_cpk_AWSIZE = 3'd0;

assign m_axi_cpk_AWUSER = 1'd0;

assign m_axi_cpk_RREADY = 1'b0;

assign m_axi_cpk_WID = 1'd0;

assign m_axi_cpk_WLAST = 1'b0;

assign m_axi_cpk_WSTRB = 1'd1;

assign m_axi_cpk_WUSER = 1'd0;

assign m_axi_key_ARBURST = 2'd0;

assign m_axi_key_ARCACHE = 4'd0;

assign m_axi_key_ARID = 1'd0;

assign m_axi_key_ARLEN = 32'd1;

assign m_axi_key_ARLOCK = 2'd0;

assign m_axi_key_ARPROT = 3'd0;

assign m_axi_key_ARQOS = 4'd0;

assign m_axi_key_ARREGION = 4'd0;

assign m_axi_key_ARSIZE = 3'd0;

assign m_axi_key_ARUSER = 1'd0;

assign m_axi_key_AWADDR = 32'd0;

assign m_axi_key_AWBURST = 2'd0;

assign m_axi_key_AWCACHE = 4'd0;

assign m_axi_key_AWID = 1'd0;

assign m_axi_key_AWLEN = 32'd0;

assign m_axi_key_AWLOCK = 2'd0;

assign m_axi_key_AWPROT = 3'd0;

assign m_axi_key_AWQOS = 4'd0;

assign m_axi_key_AWREGION = 4'd0;

assign m_axi_key_AWSIZE = 3'd0;

assign m_axi_key_AWUSER = 1'd0;

assign m_axi_key_AWVALID = 1'b0;

assign m_axi_key_BREADY = 1'b0;

assign m_axi_key_WDATA = 8'd0;

assign m_axi_key_WID = 1'd0;

assign m_axi_key_WLAST = 1'b0;

assign m_axi_key_WSTRB = 1'd0;

assign m_axi_key_WUSER = 1'd0;

assign m_axi_key_WVALID = 1'b0;

assign sum2_fu_189_p2 = (tmp_s_fu_185_p1 + key_offset);

assign sum3_fu_232_p2 = (sum5_cast_fu_228_p1 + key_offset);

assign sum5_cast_fu_228_p1 = sum5_fu_222_p2;

assign sum5_fu_222_p2 = (i_reg_158 + 5'd15);

assign sum6_fu_200_p2 = (tmp_s_fu_185_p1 + cpk_offset);

assign sum7_fu_243_p2 = (sum5_cast_fu_228_p1 + cpk_offset);

assign sum_fu_211_p2 = (tmp_s_fu_185_p1 + buf_offset);

assign tmp_33_fu_254_p2 = (buf_addr_read_reg_320 ^ key_addr_read_reg_314);

assign tmp_fu_179_p2 = ((i_reg_158 == 5'd0) ? 1'b1 : 1'b0);

assign tmp_s_fu_185_p1 = $unsigned(i_10_cast_fu_175_p1);

endmodule //a0_aes_addRoundKey_cpy