-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Tue Oct 30 17:29:58 2018
-- Host        : icgrid48 running 64-bit openSUSE Leap 42.3
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/local/tmp.HG4IAH4zV1/_sds/p0/ipi/pynq.srcs/sources_1/bd/pynq/ip/pynq_encrypt_1_0/pynq_encrypt_1_0_stub.vhdl
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
    m_axi_ctx_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_AWVALID : out STD_LOGIC;
    m_axi_ctx_AWREADY : in STD_LOGIC;
    m_axi_ctx_WDATA : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_ctx_WSTRB : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_ctx_WLAST : out STD_LOGIC;
    m_axi_ctx_WVALID : out STD_LOGIC;
    m_axi_ctx_WREADY : in STD_LOGIC;
    m_axi_ctx_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_BVALID : in STD_LOGIC;
    m_axi_ctx_BREADY : out STD_LOGIC;
    m_axi_ctx_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_ctx_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ctx_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ctx_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ctx_ARVALID : out STD_LOGIC;
    m_axi_ctx_ARREADY : in STD_LOGIC;
    m_axi_ctx_RDATA : in STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_ctx_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ctx_RLAST : in STD_LOGIC;
    m_axi_ctx_RVALID : in STD_LOGIC;
    m_axi_ctx_RREADY : out STD_LOGIC;
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
    ctx_offset : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,m_axi_ctx_AWADDR[31:0],m_axi_ctx_AWLEN[7:0],m_axi_ctx_AWSIZE[2:0],m_axi_ctx_AWBURST[1:0],m_axi_ctx_AWLOCK[1:0],m_axi_ctx_AWREGION[3:0],m_axi_ctx_AWCACHE[3:0],m_axi_ctx_AWPROT[2:0],m_axi_ctx_AWQOS[3:0],m_axi_ctx_AWVALID,m_axi_ctx_AWREADY,m_axi_ctx_WDATA[1023:0],m_axi_ctx_WSTRB[127:0],m_axi_ctx_WLAST,m_axi_ctx_WVALID,m_axi_ctx_WREADY,m_axi_ctx_BRESP[1:0],m_axi_ctx_BVALID,m_axi_ctx_BREADY,m_axi_ctx_ARADDR[31:0],m_axi_ctx_ARLEN[7:0],m_axi_ctx_ARSIZE[2:0],m_axi_ctx_ARBURST[1:0],m_axi_ctx_ARLOCK[1:0],m_axi_ctx_ARREGION[3:0],m_axi_ctx_ARCACHE[3:0],m_axi_ctx_ARPROT[2:0],m_axi_ctx_ARQOS[3:0],m_axi_ctx_ARVALID,m_axi_ctx_ARREADY,m_axi_ctx_RDATA[1023:0],m_axi_ctx_RRESP[1:0],m_axi_ctx_RLAST,m_axi_ctx_RVALID,m_axi_ctx_RREADY,m_axi_buf_r_AWADDR[31:0],m_axi_buf_r_AWLEN[7:0],m_axi_buf_r_AWSIZE[2:0],m_axi_buf_r_AWBURST[1:0],m_axi_buf_r_AWLOCK[1:0],m_axi_buf_r_AWREGION[3:0],m_axi_buf_r_AWCACHE[3:0],m_axi_buf_r_AWPROT[2:0],m_axi_buf_r_AWQOS[3:0],m_axi_buf_r_AWVALID,m_axi_buf_r_AWREADY,m_axi_buf_r_WDATA[31:0],m_axi_buf_r_WSTRB[3:0],m_axi_buf_r_WLAST,m_axi_buf_r_WVALID,m_axi_buf_r_WREADY,m_axi_buf_r_BRESP[1:0],m_axi_buf_r_BVALID,m_axi_buf_r_BREADY,m_axi_buf_r_ARADDR[31:0],m_axi_buf_r_ARLEN[7:0],m_axi_buf_r_ARSIZE[2:0],m_axi_buf_r_ARBURST[1:0],m_axi_buf_r_ARLOCK[1:0],m_axi_buf_r_ARREGION[3:0],m_axi_buf_r_ARCACHE[3:0],m_axi_buf_r_ARPROT[2:0],m_axi_buf_r_ARQOS[3:0],m_axi_buf_r_ARVALID,m_axi_buf_r_ARREADY,m_axi_buf_r_RDATA[31:0],m_axi_buf_r_RRESP[1:0],m_axi_buf_r_RLAST,m_axi_buf_r_RVALID,m_axi_buf_r_RREADY,ctx_offset[31:0],k_Clk_A,k_Rst_A,k_EN_A,k_WEN_A[0:0],k_Addr_A[31:0],k_Din_A[7:0],k_Dout_A[7:0],buf_offset[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "a0_encrypt,Vivado 2017.1_sdx";
begin
end;
