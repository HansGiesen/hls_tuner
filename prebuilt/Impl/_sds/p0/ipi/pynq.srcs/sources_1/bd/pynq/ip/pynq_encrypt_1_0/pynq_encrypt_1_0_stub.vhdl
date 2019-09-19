-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Mon Nov 19 14:29:41 2018
-- Host        : icgrid48 running 64-bit openSUSE Leap 42.3
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/local/tmp.tEdaivbEa4/_sds/p0/ipi/pynq.srcs/sources_1/bd/pynq/ip/pynq_encrypt_1_0/pynq_encrypt_1_0_stub.vhdl
-- Design      : pynq_encrypt_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pynq_encrypt_1_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    m_axi_ctx_key_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_key_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_key_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_key_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_key_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_key_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_key_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_key_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_key_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_key_AWVALID : out STD_LOGIC;
    m_axi_ctx_key_AWREADY : in STD_LOGIC;
    m_axi_ctx_key_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_key_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_key_WLAST : out STD_LOGIC;
    m_axi_ctx_key_WVALID : out STD_LOGIC;
    m_axi_ctx_key_WREADY : in STD_LOGIC;
    m_axi_ctx_key_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_key_BVALID : in STD_LOGIC;
    m_axi_ctx_key_BREADY : out STD_LOGIC;
    m_axi_ctx_key_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_key_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_key_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_key_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_key_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_key_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_key_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_key_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_key_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_key_ARVALID : out STD_LOGIC;
    m_axi_ctx_key_ARREADY : in STD_LOGIC;
    m_axi_ctx_key_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_key_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_key_RLAST : in STD_LOGIC;
    m_axi_ctx_key_RVALID : in STD_LOGIC;
    m_axi_ctx_key_RREADY : out STD_LOGIC;
    m_axi_ctx_enckey_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_enckey_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_enckey_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_enckey_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_enckey_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_enckey_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_enckey_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_enckey_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_enckey_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_enckey_AWVALID : out STD_LOGIC;
    m_axi_ctx_enckey_AWREADY : in STD_LOGIC;
    m_axi_ctx_enckey_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_enckey_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_enckey_WLAST : out STD_LOGIC;
    m_axi_ctx_enckey_WVALID : out STD_LOGIC;
    m_axi_ctx_enckey_WREADY : in STD_LOGIC;
    m_axi_ctx_enckey_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_enckey_BVALID : in STD_LOGIC;
    m_axi_ctx_enckey_BREADY : out STD_LOGIC;
    m_axi_ctx_enckey_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_enckey_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_enckey_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_enckey_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_enckey_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_enckey_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_enckey_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_enckey_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_enckey_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_enckey_ARVALID : out STD_LOGIC;
    m_axi_ctx_enckey_ARREADY : in STD_LOGIC;
    m_axi_ctx_enckey_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_enckey_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_enckey_RLAST : in STD_LOGIC;
    m_axi_ctx_enckey_RVALID : in STD_LOGIC;
    m_axi_ctx_enckey_RREADY : out STD_LOGIC;
    m_axi_ctx_deckey_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_deckey_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_deckey_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_deckey_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_deckey_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_deckey_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_deckey_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_deckey_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_deckey_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_deckey_AWVALID : out STD_LOGIC;
    m_axi_ctx_deckey_AWREADY : in STD_LOGIC;
    m_axi_ctx_deckey_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_deckey_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_deckey_WLAST : out STD_LOGIC;
    m_axi_ctx_deckey_WVALID : out STD_LOGIC;
    m_axi_ctx_deckey_WREADY : in STD_LOGIC;
    m_axi_ctx_deckey_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_deckey_BVALID : in STD_LOGIC;
    m_axi_ctx_deckey_BREADY : out STD_LOGIC;
    m_axi_ctx_deckey_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_deckey_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_deckey_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_deckey_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_deckey_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_deckey_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_deckey_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_deckey_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_deckey_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_deckey_ARVALID : out STD_LOGIC;
    m_axi_ctx_deckey_ARREADY : in STD_LOGIC;
    m_axi_ctx_deckey_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_deckey_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_deckey_RLAST : in STD_LOGIC;
    m_axi_ctx_deckey_RVALID : in STD_LOGIC;
    m_axi_ctx_deckey_RREADY : out STD_LOGIC;
    m_axi_buf_r_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_buf_r_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_AWVALID : out STD_LOGIC;
    m_axi_buf_r_AWREADY : in STD_LOGIC;
    m_axi_buf_r_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_WLAST : out STD_LOGIC;
    m_axi_buf_r_WVALID : out STD_LOGIC;
    m_axi_buf_r_WREADY : in STD_LOGIC;
    m_axi_buf_r_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_BVALID : in STD_LOGIC;
    m_axi_buf_r_BREADY : out STD_LOGIC;
    m_axi_buf_r_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_buf_r_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_buf_r_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_buf_r_ARVALID : out STD_LOGIC;
    m_axi_buf_r_ARREADY : in STD_LOGIC;
    m_axi_buf_r_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_buf_r_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buf_r_RLAST : in STD_LOGIC;
    m_axi_buf_r_RVALID : in STD_LOGIC;
    m_axi_buf_r_RREADY : out STD_LOGIC;
    ctx_key_offset : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctx_enckey_offset : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ctx_deckey_offset : in STD_LOGIC_VECTOR ( 31 downto 0 );
    k_Clk_A : out STD_LOGIC;
    k_Rst_A : out STD_LOGIC;
    k_EN_A : out STD_LOGIC;
    k_WEN_A : out STD_LOGIC_VECTOR ( 0 to 0 );
    k_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    k_Din_A : out STD_LOGIC_VECTOR ( 7 downto 0 );
    k_Dout_A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    buf_offset : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end pynq_encrypt_1_0;

architecture stub of pynq_encrypt_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,m_axi_ctx_key_AWADDR[31:0],m_axi_ctx_key_AWLEN[7:0],m_axi_ctx_key_AWSIZE[2:0],m_axi_ctx_key_AWBURST[1:0],m_axi_ctx_key_AWLOCK[1:0],m_axi_ctx_key_AWREGION[3:0],m_axi_ctx_key_AWCACHE[3:0],m_axi_ctx_key_AWPROT[2:0],m_axi_ctx_key_AWQOS[3:0],m_axi_ctx_key_AWVALID,m_axi_ctx_key_AWREADY,m_axi_ctx_key_WDATA[31:0],m_axi_ctx_key_WSTRB[3:0],m_axi_ctx_key_WLAST,m_axi_ctx_key_WVALID,m_axi_ctx_key_WREADY,m_axi_ctx_key_BRESP[1:0],m_axi_ctx_key_BVALID,m_axi_ctx_key_BREADY,m_axi_ctx_key_ARADDR[31:0],m_axi_ctx_key_ARLEN[7:0],m_axi_ctx_key_ARSIZE[2:0],m_axi_ctx_key_ARBURST[1:0],m_axi_ctx_key_ARLOCK[1:0],m_axi_ctx_key_ARREGION[3:0],m_axi_ctx_key_ARCACHE[3:0],m_axi_ctx_key_ARPROT[2:0],m_axi_ctx_key_ARQOS[3:0],m_axi_ctx_key_ARVALID,m_axi_ctx_key_ARREADY,m_axi_ctx_key_RDATA[31:0],m_axi_ctx_key_RRESP[1:0],m_axi_ctx_key_RLAST,m_axi_ctx_key_RVALID,m_axi_ctx_key_RREADY,m_axi_ctx_enckey_AWADDR[31:0],m_axi_ctx_enckey_AWLEN[7:0],m_axi_ctx_enckey_AWSIZE[2:0],m_axi_ctx_enckey_AWBURST[1:0],m_axi_ctx_enckey_AWLOCK[1:0],m_axi_ctx_enckey_AWREGION[3:0],m_axi_ctx_enckey_AWCACHE[3:0],m_axi_ctx_enckey_AWPROT[2:0],m_axi_ctx_enckey_AWQOS[3:0],m_axi_ctx_enckey_AWVALID,m_axi_ctx_enckey_AWREADY,m_axi_ctx_enckey_WDATA[31:0],m_axi_ctx_enckey_WSTRB[3:0],m_axi_ctx_enckey_WLAST,m_axi_ctx_enckey_WVALID,m_axi_ctx_enckey_WREADY,m_axi_ctx_enckey_BRESP[1:0],m_axi_ctx_enckey_BVALID,m_axi_ctx_enckey_BREADY,m_axi_ctx_enckey_ARADDR[31:0],m_axi_ctx_enckey_ARLEN[7:0],m_axi_ctx_enckey_ARSIZE[2:0],m_axi_ctx_enckey_ARBURST[1:0],m_axi_ctx_enckey_ARLOCK[1:0],m_axi_ctx_enckey_ARREGION[3:0],m_axi_ctx_enckey_ARCACHE[3:0],m_axi_ctx_enckey_ARPROT[2:0],m_axi_ctx_enckey_ARQOS[3:0],m_axi_ctx_enckey_ARVALID,m_axi_ctx_enckey_ARREADY,m_axi_ctx_enckey_RDATA[31:0],m_axi_ctx_enckey_RRESP[1:0],m_axi_ctx_enckey_RLAST,m_axi_ctx_enckey_RVALID,m_axi_ctx_enckey_RREADY,m_axi_ctx_deckey_AWADDR[31:0],m_axi_ctx_deckey_AWLEN[7:0],m_axi_ctx_deckey_AWSIZE[2:0],m_axi_ctx_deckey_AWBURST[1:0],m_axi_ctx_deckey_AWLOCK[1:0],m_axi_ctx_deckey_AWREGION[3:0],m_axi_ctx_deckey_AWCACHE[3:0],m_axi_ctx_deckey_AWPROT[2:0],m_axi_ctx_deckey_AWQOS[3:0],m_axi_ctx_deckey_AWVALID,m_axi_ctx_deckey_AWREADY,m_axi_ctx_deckey_WDATA[31:0],m_axi_ctx_deckey_WSTRB[3:0],m_axi_ctx_deckey_WLAST,m_axi_ctx_deckey_WVALID,m_axi_ctx_deckey_WREADY,m_axi_ctx_deckey_BRESP[1:0],m_axi_ctx_deckey_BVALID,m_axi_ctx_deckey_BREADY,m_axi_ctx_deckey_ARADDR[31:0],m_axi_ctx_deckey_ARLEN[7:0],m_axi_ctx_deckey_ARSIZE[2:0],m_axi_ctx_deckey_ARBURST[1:0],m_axi_ctx_deckey_ARLOCK[1:0],m_axi_ctx_deckey_ARREGION[3:0],m_axi_ctx_deckey_ARCACHE[3:0],m_axi_ctx_deckey_ARPROT[2:0],m_axi_ctx_deckey_ARQOS[3:0],m_axi_ctx_deckey_ARVALID,m_axi_ctx_deckey_ARREADY,m_axi_ctx_deckey_RDATA[31:0],m_axi_ctx_deckey_RRESP[1:0],m_axi_ctx_deckey_RLAST,m_axi_ctx_deckey_RVALID,m_axi_ctx_deckey_RREADY,m_axi_buf_r_AWADDR[31:0],m_axi_buf_r_AWLEN[7:0],m_axi_buf_r_AWSIZE[2:0],m_axi_buf_r_AWBURST[1:0],m_axi_buf_r_AWLOCK[1:0],m_axi_buf_r_AWREGION[3:0],m_axi_buf_r_AWCACHE[3:0],m_axi_buf_r_AWPROT[2:0],m_axi_buf_r_AWQOS[3:0],m_axi_buf_r_AWVALID,m_axi_buf_r_AWREADY,m_axi_buf_r_WDATA[31:0],m_axi_buf_r_WSTRB[3:0],m_axi_buf_r_WLAST,m_axi_buf_r_WVALID,m_axi_buf_r_WREADY,m_axi_buf_r_BRESP[1:0],m_axi_buf_r_BVALID,m_axi_buf_r_BREADY,m_axi_buf_r_ARADDR[31:0],m_axi_buf_r_ARLEN[7:0],m_axi_buf_r_ARSIZE[2:0],m_axi_buf_r_ARBURST[1:0],m_axi_buf_r_ARLOCK[1:0],m_axi_buf_r_ARREGION[3:0],m_axi_buf_r_ARCACHE[3:0],m_axi_buf_r_ARPROT[2:0],m_axi_buf_r_ARQOS[3:0],m_axi_buf_r_ARVALID,m_axi_buf_r_ARREADY,m_axi_buf_r_RDATA[31:0],m_axi_buf_r_RRESP[1:0],m_axi_buf_r_RLAST,m_axi_buf_r_RVALID,m_axi_buf_r_RREADY,ctx_key_offset[31:0],ctx_enckey_offset[31:0],ctx_deckey_offset[31:0],k_Clk_A,k_Rst_A,k_EN_A,k_WEN_A[0:0],k_Addr_A[31:0],k_Din_A[7:0],k_Dout_A[7:0],buf_offset[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "a0_encrypt,Vivado 2017.1_sdx";
begin
end;
