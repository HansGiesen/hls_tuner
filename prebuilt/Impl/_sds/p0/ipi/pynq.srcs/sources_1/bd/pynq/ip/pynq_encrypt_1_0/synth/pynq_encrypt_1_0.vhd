-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:encrypt:1.0
-- IP Revision: 1811191415

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pynq_encrypt_1_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_ctx_key_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_key_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_ctx_key_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_key_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_key_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_key_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_key_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_key_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_key_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_key_AWVALID : OUT STD_LOGIC;
    m_axi_ctx_key_AWREADY : IN STD_LOGIC;
    m_axi_ctx_key_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_key_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_key_WLAST : OUT STD_LOGIC;
    m_axi_ctx_key_WVALID : OUT STD_LOGIC;
    m_axi_ctx_key_WREADY : IN STD_LOGIC;
    m_axi_ctx_key_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_key_BVALID : IN STD_LOGIC;
    m_axi_ctx_key_BREADY : OUT STD_LOGIC;
    m_axi_ctx_key_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_key_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_ctx_key_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_key_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_key_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_key_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_key_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_key_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_key_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_key_ARVALID : OUT STD_LOGIC;
    m_axi_ctx_key_ARREADY : IN STD_LOGIC;
    m_axi_ctx_key_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_key_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_key_RLAST : IN STD_LOGIC;
    m_axi_ctx_key_RVALID : IN STD_LOGIC;
    m_axi_ctx_key_RREADY : OUT STD_LOGIC;
    m_axi_ctx_enckey_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_enckey_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_ctx_enckey_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_enckey_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_enckey_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_enckey_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_enckey_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_enckey_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_enckey_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_enckey_AWVALID : OUT STD_LOGIC;
    m_axi_ctx_enckey_AWREADY : IN STD_LOGIC;
    m_axi_ctx_enckey_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_enckey_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_enckey_WLAST : OUT STD_LOGIC;
    m_axi_ctx_enckey_WVALID : OUT STD_LOGIC;
    m_axi_ctx_enckey_WREADY : IN STD_LOGIC;
    m_axi_ctx_enckey_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_enckey_BVALID : IN STD_LOGIC;
    m_axi_ctx_enckey_BREADY : OUT STD_LOGIC;
    m_axi_ctx_enckey_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_enckey_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_ctx_enckey_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_enckey_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_enckey_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_enckey_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_enckey_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_enckey_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_enckey_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_enckey_ARVALID : OUT STD_LOGIC;
    m_axi_ctx_enckey_ARREADY : IN STD_LOGIC;
    m_axi_ctx_enckey_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_enckey_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_enckey_RLAST : IN STD_LOGIC;
    m_axi_ctx_enckey_RVALID : IN STD_LOGIC;
    m_axi_ctx_enckey_RREADY : OUT STD_LOGIC;
    m_axi_ctx_deckey_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_deckey_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_ctx_deckey_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_deckey_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_deckey_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_deckey_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_deckey_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_deckey_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_deckey_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_deckey_AWVALID : OUT STD_LOGIC;
    m_axi_ctx_deckey_AWREADY : IN STD_LOGIC;
    m_axi_ctx_deckey_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_deckey_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_deckey_WLAST : OUT STD_LOGIC;
    m_axi_ctx_deckey_WVALID : OUT STD_LOGIC;
    m_axi_ctx_deckey_WREADY : IN STD_LOGIC;
    m_axi_ctx_deckey_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_deckey_BVALID : IN STD_LOGIC;
    m_axi_ctx_deckey_BREADY : OUT STD_LOGIC;
    m_axi_ctx_deckey_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_deckey_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_ctx_deckey_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_deckey_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_deckey_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_deckey_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_deckey_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_deckey_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_ctx_deckey_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_ctx_deckey_ARVALID : OUT STD_LOGIC;
    m_axi_ctx_deckey_ARREADY : IN STD_LOGIC;
    m_axi_ctx_deckey_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_ctx_deckey_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_ctx_deckey_RLAST : IN STD_LOGIC;
    m_axi_ctx_deckey_RVALID : IN STD_LOGIC;
    m_axi_ctx_deckey_RREADY : OUT STD_LOGIC;
    m_axi_buf_r_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_buf_r_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_buf_r_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_buf_r_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_buf_r_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_buf_r_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_buf_r_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_buf_r_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_buf_r_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_buf_r_AWVALID : OUT STD_LOGIC;
    m_axi_buf_r_AWREADY : IN STD_LOGIC;
    m_axi_buf_r_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_buf_r_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_buf_r_WLAST : OUT STD_LOGIC;
    m_axi_buf_r_WVALID : OUT STD_LOGIC;
    m_axi_buf_r_WREADY : IN STD_LOGIC;
    m_axi_buf_r_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_buf_r_BVALID : IN STD_LOGIC;
    m_axi_buf_r_BREADY : OUT STD_LOGIC;
    m_axi_buf_r_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_buf_r_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_buf_r_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_buf_r_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_buf_r_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_buf_r_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_buf_r_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_buf_r_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_buf_r_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_buf_r_ARVALID : OUT STD_LOGIC;
    m_axi_buf_r_ARREADY : IN STD_LOGIC;
    m_axi_buf_r_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_buf_r_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_buf_r_RLAST : IN STD_LOGIC;
    m_axi_buf_r_RVALID : IN STD_LOGIC;
    m_axi_buf_r_RREADY : OUT STD_LOGIC;
    ctx_key_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ctx_enckey_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ctx_deckey_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    k_Clk_A : OUT STD_LOGIC;
    k_Rst_A : OUT STD_LOGIC;
    k_EN_A : OUT STD_LOGIC;
    k_WEN_A : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    k_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    k_Din_A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    k_Dout_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    buf_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END pynq_encrypt_1_0;

ARCHITECTURE pynq_encrypt_1_0_arch OF pynq_encrypt_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pynq_encrypt_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT a0_encrypt IS
    GENERIC (
      C_M_AXI_CTX_KEY_ID_WIDTH : INTEGER;
      C_M_AXI_CTX_KEY_ADDR_WIDTH : INTEGER;
      C_M_AXI_CTX_KEY_DATA_WIDTH : INTEGER;
      C_M_AXI_CTX_KEY_AWUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_KEY_ARUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_KEY_WUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_KEY_RUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_KEY_BUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_KEY_USER_VALUE : INTEGER;
      C_M_AXI_CTX_KEY_PROT_VALUE : INTEGER;
      C_M_AXI_CTX_KEY_CACHE_VALUE : INTEGER;
      C_M_AXI_CTX_ENCKEY_ID_WIDTH : INTEGER;
      C_M_AXI_CTX_ENCKEY_ADDR_WIDTH : INTEGER;
      C_M_AXI_CTX_ENCKEY_DATA_WIDTH : INTEGER;
      C_M_AXI_CTX_ENCKEY_AWUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_ENCKEY_ARUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_ENCKEY_WUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_ENCKEY_RUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_ENCKEY_BUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_ENCKEY_USER_VALUE : INTEGER;
      C_M_AXI_CTX_ENCKEY_PROT_VALUE : INTEGER;
      C_M_AXI_CTX_ENCKEY_CACHE_VALUE : INTEGER;
      C_M_AXI_CTX_DECKEY_ID_WIDTH : INTEGER;
      C_M_AXI_CTX_DECKEY_ADDR_WIDTH : INTEGER;
      C_M_AXI_CTX_DECKEY_DATA_WIDTH : INTEGER;
      C_M_AXI_CTX_DECKEY_AWUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_DECKEY_ARUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_DECKEY_WUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_DECKEY_RUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_DECKEY_BUSER_WIDTH : INTEGER;
      C_M_AXI_CTX_DECKEY_USER_VALUE : INTEGER;
      C_M_AXI_CTX_DECKEY_PROT_VALUE : INTEGER;
      C_M_AXI_CTX_DECKEY_CACHE_VALUE : INTEGER;
      C_M_AXI_BUF_R_ID_WIDTH : INTEGER;
      C_M_AXI_BUF_R_ADDR_WIDTH : INTEGER;
      C_M_AXI_BUF_R_DATA_WIDTH : INTEGER;
      C_M_AXI_BUF_R_AWUSER_WIDTH : INTEGER;
      C_M_AXI_BUF_R_ARUSER_WIDTH : INTEGER;
      C_M_AXI_BUF_R_WUSER_WIDTH : INTEGER;
      C_M_AXI_BUF_R_RUSER_WIDTH : INTEGER;
      C_M_AXI_BUF_R_BUSER_WIDTH : INTEGER;
      C_M_AXI_BUF_R_USER_VALUE : INTEGER;
      C_M_AXI_BUF_R_PROT_VALUE : INTEGER;
      C_M_AXI_BUF_R_CACHE_VALUE : INTEGER
    );
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      m_axi_ctx_key_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_key_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_ctx_key_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_key_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_key_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_key_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_key_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_key_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_key_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_key_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_AWVALID : OUT STD_LOGIC;
      m_axi_ctx_key_AWREADY : IN STD_LOGIC;
      m_axi_ctx_key_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_key_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_key_WLAST : OUT STD_LOGIC;
      m_axi_ctx_key_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_WVALID : OUT STD_LOGIC;
      m_axi_ctx_key_WREADY : IN STD_LOGIC;
      m_axi_ctx_key_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_key_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_BVALID : IN STD_LOGIC;
      m_axi_ctx_key_BREADY : OUT STD_LOGIC;
      m_axi_ctx_key_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_key_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_ctx_key_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_key_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_key_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_key_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_key_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_key_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_key_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_key_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_ARVALID : OUT STD_LOGIC;
      m_axi_ctx_key_ARREADY : IN STD_LOGIC;
      m_axi_ctx_key_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_key_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_key_RLAST : IN STD_LOGIC;
      m_axi_ctx_key_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_key_RVALID : IN STD_LOGIC;
      m_axi_ctx_key_RREADY : OUT STD_LOGIC;
      m_axi_ctx_enckey_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_enckey_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_ctx_enckey_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_enckey_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_enckey_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_enckey_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_enckey_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_enckey_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_enckey_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_enckey_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_AWVALID : OUT STD_LOGIC;
      m_axi_ctx_enckey_AWREADY : IN STD_LOGIC;
      m_axi_ctx_enckey_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_enckey_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_enckey_WLAST : OUT STD_LOGIC;
      m_axi_ctx_enckey_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_WVALID : OUT STD_LOGIC;
      m_axi_ctx_enckey_WREADY : IN STD_LOGIC;
      m_axi_ctx_enckey_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_enckey_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_BVALID : IN STD_LOGIC;
      m_axi_ctx_enckey_BREADY : OUT STD_LOGIC;
      m_axi_ctx_enckey_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_enckey_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_ctx_enckey_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_enckey_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_enckey_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_enckey_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_enckey_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_enckey_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_enckey_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_enckey_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_ARVALID : OUT STD_LOGIC;
      m_axi_ctx_enckey_ARREADY : IN STD_LOGIC;
      m_axi_ctx_enckey_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_enckey_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_enckey_RLAST : IN STD_LOGIC;
      m_axi_ctx_enckey_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_enckey_RVALID : IN STD_LOGIC;
      m_axi_ctx_enckey_RREADY : OUT STD_LOGIC;
      m_axi_ctx_deckey_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_deckey_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_ctx_deckey_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_deckey_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_deckey_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_deckey_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_deckey_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_deckey_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_deckey_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_deckey_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_AWVALID : OUT STD_LOGIC;
      m_axi_ctx_deckey_AWREADY : IN STD_LOGIC;
      m_axi_ctx_deckey_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_deckey_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_deckey_WLAST : OUT STD_LOGIC;
      m_axi_ctx_deckey_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_WVALID : OUT STD_LOGIC;
      m_axi_ctx_deckey_WREADY : IN STD_LOGIC;
      m_axi_ctx_deckey_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_deckey_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_BVALID : IN STD_LOGIC;
      m_axi_ctx_deckey_BREADY : OUT STD_LOGIC;
      m_axi_ctx_deckey_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_deckey_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_ctx_deckey_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_deckey_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_deckey_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_deckey_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_deckey_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_deckey_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_ctx_deckey_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_ctx_deckey_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_ARVALID : OUT STD_LOGIC;
      m_axi_ctx_deckey_ARREADY : IN STD_LOGIC;
      m_axi_ctx_deckey_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_ctx_deckey_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_ctx_deckey_RLAST : IN STD_LOGIC;
      m_axi_ctx_deckey_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_ctx_deckey_RVALID : IN STD_LOGIC;
      m_axi_ctx_deckey_RREADY : OUT STD_LOGIC;
      m_axi_buf_r_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_buf_r_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_buf_r_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_buf_r_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_buf_r_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_buf_r_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_buf_r_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_buf_r_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_buf_r_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_buf_r_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_AWVALID : OUT STD_LOGIC;
      m_axi_buf_r_AWREADY : IN STD_LOGIC;
      m_axi_buf_r_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_buf_r_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_buf_r_WLAST : OUT STD_LOGIC;
      m_axi_buf_r_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_WVALID : OUT STD_LOGIC;
      m_axi_buf_r_WREADY : IN STD_LOGIC;
      m_axi_buf_r_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_buf_r_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_BVALID : IN STD_LOGIC;
      m_axi_buf_r_BREADY : OUT STD_LOGIC;
      m_axi_buf_r_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_buf_r_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_buf_r_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_buf_r_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_buf_r_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_buf_r_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_buf_r_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_buf_r_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_buf_r_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_buf_r_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_ARVALID : OUT STD_LOGIC;
      m_axi_buf_r_ARREADY : IN STD_LOGIC;
      m_axi_buf_r_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_buf_r_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_buf_r_RLAST : IN STD_LOGIC;
      m_axi_buf_r_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_buf_r_RVALID : IN STD_LOGIC;
      m_axi_buf_r_RREADY : OUT STD_LOGIC;
      ctx_key_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ctx_enckey_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      ctx_deckey_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      k_Clk_A : OUT STD_LOGIC;
      k_Rst_A : OUT STD_LOGIC;
      k_EN_A : OUT STD_LOGIC;
      k_WEN_A : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      k_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      k_Din_A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      k_Dout_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      buf_offset : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT a0_encrypt;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF pynq_encrypt_1_0_arch: ARCHITECTURE IS "a0_encrypt,Vivado 2017.1_sdx";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF pynq_encrypt_1_0_arch : ARCHITECTURE IS "pynq_encrypt_1_0,a0_encrypt,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF pynq_encrypt_1_0_arch: ARCHITECTURE IS "pynq_encrypt_1_0,a0_encrypt,{x_ipProduct=Vivado 2017.1_sdx,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=encrypt,x_ipVersion=1.0,x_ipCoreRevision=1811191415,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_M_AXI_CTX_KEY_ID_WIDTH=1,C_M_AXI_CTX_KEY_ADDR_WIDTH=32,C_M_AXI_CTX_KEY_DATA_WIDTH=32,C_M_AXI_CTX_KEY_AWUSER_WIDTH=1,C_M_AXI_CTX_KEY_ARUSER_WIDTH=1,C_M_AXI_CTX_KEY_WUSER_WIDTH=1,C_M_AXI_CTX_KEY_RUSER_WIDTH=1,C_M_AXI_CTX_KEY_BUSER_WIDTH=1,C_M_AXI_CTX_KEY_USER_VALUE=0x00000000,C_M_AXI_CTX_KEY_PROT_VALU" & 
"E=000,C_M_AXI_CTX_KEY_CACHE_VALUE=0011,C_M_AXI_CTX_ENCKEY_ID_WIDTH=1,C_M_AXI_CTX_ENCKEY_ADDR_WIDTH=32,C_M_AXI_CTX_ENCKEY_DATA_WIDTH=32,C_M_AXI_CTX_ENCKEY_AWUSER_WIDTH=1,C_M_AXI_CTX_ENCKEY_ARUSER_WIDTH=1,C_M_AXI_CTX_ENCKEY_WUSER_WIDTH=1,C_M_AXI_CTX_ENCKEY_RUSER_WIDTH=1,C_M_AXI_CTX_ENCKEY_BUSER_WIDTH=1,C_M_AXI_CTX_ENCKEY_USER_VALUE=0x00000000,C_M_AXI_CTX_ENCKEY_PROT_VALUE=000,C_M_AXI_CTX_ENCKEY_CACHE_VALUE=0011,C_M_AXI_CTX_DECKEY_ID_WIDTH=1,C_M_AXI_CTX_DECKEY_ADDR_WIDTH=32,C_M_AXI_CTX_DECKEY_DATA_" & 
"WIDTH=32,C_M_AXI_CTX_DECKEY_AWUSER_WIDTH=1,C_M_AXI_CTX_DECKEY_ARUSER_WIDTH=1,C_M_AXI_CTX_DECKEY_WUSER_WIDTH=1,C_M_AXI_CTX_DECKEY_RUSER_WIDTH=1,C_M_AXI_CTX_DECKEY_BUSER_WIDTH=1,C_M_AXI_CTX_DECKEY_USER_VALUE=0x00000000,C_M_AXI_CTX_DECKEY_PROT_VALUE=000,C_M_AXI_CTX_DECKEY_CACHE_VALUE=0011,C_M_AXI_BUF_R_ID_WIDTH=1,C_M_AXI_BUF_R_ADDR_WIDTH=32,C_M_AXI_BUF_R_DATA_WIDTH=32,C_M_AXI_BUF_R_AWUSER_WIDTH=1,C_M_AXI_BUF_R_ARUSER_WIDTH=1,C_M_AXI_BUF_R_WUSER_WIDTH=1,C_M_AXI_BUF_R_RUSER_WIDTH=1,C_M_AXI_BUF_R_BUSE" & 
"R_WIDTH=1,C_M_AXI_BUF_R_USER_VALUE=0x00000000,C_M_AXI_BUF_R_PROT_VALUE=000,C_M_AXI_BUF_R_CACHE_VALUE=0011}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_key_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_key RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_enckey_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_enckey RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_ctx_deckey_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_ctx_deckey RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_buf_r_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_buf_r RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF ctx_key_offset: SIGNAL IS "xilinx.com:signal:data:1.0 ctx_key_offset DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ctx_enckey_offset: SIGNAL IS "xilinx.com:signal:data:1.0 ctx_enckey_offset DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ctx_deckey_offset: SIGNAL IS "xilinx.com:signal:data:1.0 ctx_deckey_offset DATA";
  ATTRIBUTE X_INTERFACE_INFO OF k_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 k_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF k_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 k_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF k_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 k_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF k_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 k_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF k_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 k_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF k_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 k_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF k_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 k_PORTA DOUT";
  ATTRIBUTE X_INTERFACE_INFO OF buf_offset: SIGNAL IS "xilinx.com:signal:data:1.0 buf_offset DATA";
BEGIN
  U0 : a0_encrypt
    GENERIC MAP (
      C_M_AXI_CTX_KEY_ID_WIDTH => 1,
      C_M_AXI_CTX_KEY_ADDR_WIDTH => 32,
      C_M_AXI_CTX_KEY_DATA_WIDTH => 32,
      C_M_AXI_CTX_KEY_AWUSER_WIDTH => 1,
      C_M_AXI_CTX_KEY_ARUSER_WIDTH => 1,
      C_M_AXI_CTX_KEY_WUSER_WIDTH => 1,
      C_M_AXI_CTX_KEY_RUSER_WIDTH => 1,
      C_M_AXI_CTX_KEY_BUSER_WIDTH => 1,
      C_M_AXI_CTX_KEY_USER_VALUE => 0,
      C_M_AXI_CTX_KEY_PROT_VALUE => 0,
      C_M_AXI_CTX_KEY_CACHE_VALUE => 3,
      C_M_AXI_CTX_ENCKEY_ID_WIDTH => 1,
      C_M_AXI_CTX_ENCKEY_ADDR_WIDTH => 32,
      C_M_AXI_CTX_ENCKEY_DATA_WIDTH => 32,
      C_M_AXI_CTX_ENCKEY_AWUSER_WIDTH => 1,
      C_M_AXI_CTX_ENCKEY_ARUSER_WIDTH => 1,
      C_M_AXI_CTX_ENCKEY_WUSER_WIDTH => 1,
      C_M_AXI_CTX_ENCKEY_RUSER_WIDTH => 1,
      C_M_AXI_CTX_ENCKEY_BUSER_WIDTH => 1,
      C_M_AXI_CTX_ENCKEY_USER_VALUE => 0,
      C_M_AXI_CTX_ENCKEY_PROT_VALUE => 0,
      C_M_AXI_CTX_ENCKEY_CACHE_VALUE => 3,
      C_M_AXI_CTX_DECKEY_ID_WIDTH => 1,
      C_M_AXI_CTX_DECKEY_ADDR_WIDTH => 32,
      C_M_AXI_CTX_DECKEY_DATA_WIDTH => 32,
      C_M_AXI_CTX_DECKEY_AWUSER_WIDTH => 1,
      C_M_AXI_CTX_DECKEY_ARUSER_WIDTH => 1,
      C_M_AXI_CTX_DECKEY_WUSER_WIDTH => 1,
      C_M_AXI_CTX_DECKEY_RUSER_WIDTH => 1,
      C_M_AXI_CTX_DECKEY_BUSER_WIDTH => 1,
      C_M_AXI_CTX_DECKEY_USER_VALUE => 0,
      C_M_AXI_CTX_DECKEY_PROT_VALUE => 0,
      C_M_AXI_CTX_DECKEY_CACHE_VALUE => 3,
      C_M_AXI_BUF_R_ID_WIDTH => 1,
      C_M_AXI_BUF_R_ADDR_WIDTH => 32,
      C_M_AXI_BUF_R_DATA_WIDTH => 32,
      C_M_AXI_BUF_R_AWUSER_WIDTH => 1,
      C_M_AXI_BUF_R_ARUSER_WIDTH => 1,
      C_M_AXI_BUF_R_WUSER_WIDTH => 1,
      C_M_AXI_BUF_R_RUSER_WIDTH => 1,
      C_M_AXI_BUF_R_BUSER_WIDTH => 1,
      C_M_AXI_BUF_R_USER_VALUE => 0,
      C_M_AXI_BUF_R_PROT_VALUE => 0,
      C_M_AXI_BUF_R_CACHE_VALUE => 3
    )
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      m_axi_ctx_key_AWADDR => m_axi_ctx_key_AWADDR,
      m_axi_ctx_key_AWLEN => m_axi_ctx_key_AWLEN,
      m_axi_ctx_key_AWSIZE => m_axi_ctx_key_AWSIZE,
      m_axi_ctx_key_AWBURST => m_axi_ctx_key_AWBURST,
      m_axi_ctx_key_AWLOCK => m_axi_ctx_key_AWLOCK,
      m_axi_ctx_key_AWREGION => m_axi_ctx_key_AWREGION,
      m_axi_ctx_key_AWCACHE => m_axi_ctx_key_AWCACHE,
      m_axi_ctx_key_AWPROT => m_axi_ctx_key_AWPROT,
      m_axi_ctx_key_AWQOS => m_axi_ctx_key_AWQOS,
      m_axi_ctx_key_AWVALID => m_axi_ctx_key_AWVALID,
      m_axi_ctx_key_AWREADY => m_axi_ctx_key_AWREADY,
      m_axi_ctx_key_WDATA => m_axi_ctx_key_WDATA,
      m_axi_ctx_key_WSTRB => m_axi_ctx_key_WSTRB,
      m_axi_ctx_key_WLAST => m_axi_ctx_key_WLAST,
      m_axi_ctx_key_WVALID => m_axi_ctx_key_WVALID,
      m_axi_ctx_key_WREADY => m_axi_ctx_key_WREADY,
      m_axi_ctx_key_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_key_BRESP => m_axi_ctx_key_BRESP,
      m_axi_ctx_key_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_key_BVALID => m_axi_ctx_key_BVALID,
      m_axi_ctx_key_BREADY => m_axi_ctx_key_BREADY,
      m_axi_ctx_key_ARADDR => m_axi_ctx_key_ARADDR,
      m_axi_ctx_key_ARLEN => m_axi_ctx_key_ARLEN,
      m_axi_ctx_key_ARSIZE => m_axi_ctx_key_ARSIZE,
      m_axi_ctx_key_ARBURST => m_axi_ctx_key_ARBURST,
      m_axi_ctx_key_ARLOCK => m_axi_ctx_key_ARLOCK,
      m_axi_ctx_key_ARREGION => m_axi_ctx_key_ARREGION,
      m_axi_ctx_key_ARCACHE => m_axi_ctx_key_ARCACHE,
      m_axi_ctx_key_ARPROT => m_axi_ctx_key_ARPROT,
      m_axi_ctx_key_ARQOS => m_axi_ctx_key_ARQOS,
      m_axi_ctx_key_ARVALID => m_axi_ctx_key_ARVALID,
      m_axi_ctx_key_ARREADY => m_axi_ctx_key_ARREADY,
      m_axi_ctx_key_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_key_RDATA => m_axi_ctx_key_RDATA,
      m_axi_ctx_key_RRESP => m_axi_ctx_key_RRESP,
      m_axi_ctx_key_RLAST => m_axi_ctx_key_RLAST,
      m_axi_ctx_key_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_key_RVALID => m_axi_ctx_key_RVALID,
      m_axi_ctx_key_RREADY => m_axi_ctx_key_RREADY,
      m_axi_ctx_enckey_AWADDR => m_axi_ctx_enckey_AWADDR,
      m_axi_ctx_enckey_AWLEN => m_axi_ctx_enckey_AWLEN,
      m_axi_ctx_enckey_AWSIZE => m_axi_ctx_enckey_AWSIZE,
      m_axi_ctx_enckey_AWBURST => m_axi_ctx_enckey_AWBURST,
      m_axi_ctx_enckey_AWLOCK => m_axi_ctx_enckey_AWLOCK,
      m_axi_ctx_enckey_AWREGION => m_axi_ctx_enckey_AWREGION,
      m_axi_ctx_enckey_AWCACHE => m_axi_ctx_enckey_AWCACHE,
      m_axi_ctx_enckey_AWPROT => m_axi_ctx_enckey_AWPROT,
      m_axi_ctx_enckey_AWQOS => m_axi_ctx_enckey_AWQOS,
      m_axi_ctx_enckey_AWVALID => m_axi_ctx_enckey_AWVALID,
      m_axi_ctx_enckey_AWREADY => m_axi_ctx_enckey_AWREADY,
      m_axi_ctx_enckey_WDATA => m_axi_ctx_enckey_WDATA,
      m_axi_ctx_enckey_WSTRB => m_axi_ctx_enckey_WSTRB,
      m_axi_ctx_enckey_WLAST => m_axi_ctx_enckey_WLAST,
      m_axi_ctx_enckey_WVALID => m_axi_ctx_enckey_WVALID,
      m_axi_ctx_enckey_WREADY => m_axi_ctx_enckey_WREADY,
      m_axi_ctx_enckey_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_enckey_BRESP => m_axi_ctx_enckey_BRESP,
      m_axi_ctx_enckey_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_enckey_BVALID => m_axi_ctx_enckey_BVALID,
      m_axi_ctx_enckey_BREADY => m_axi_ctx_enckey_BREADY,
      m_axi_ctx_enckey_ARADDR => m_axi_ctx_enckey_ARADDR,
      m_axi_ctx_enckey_ARLEN => m_axi_ctx_enckey_ARLEN,
      m_axi_ctx_enckey_ARSIZE => m_axi_ctx_enckey_ARSIZE,
      m_axi_ctx_enckey_ARBURST => m_axi_ctx_enckey_ARBURST,
      m_axi_ctx_enckey_ARLOCK => m_axi_ctx_enckey_ARLOCK,
      m_axi_ctx_enckey_ARREGION => m_axi_ctx_enckey_ARREGION,
      m_axi_ctx_enckey_ARCACHE => m_axi_ctx_enckey_ARCACHE,
      m_axi_ctx_enckey_ARPROT => m_axi_ctx_enckey_ARPROT,
      m_axi_ctx_enckey_ARQOS => m_axi_ctx_enckey_ARQOS,
      m_axi_ctx_enckey_ARVALID => m_axi_ctx_enckey_ARVALID,
      m_axi_ctx_enckey_ARREADY => m_axi_ctx_enckey_ARREADY,
      m_axi_ctx_enckey_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_enckey_RDATA => m_axi_ctx_enckey_RDATA,
      m_axi_ctx_enckey_RRESP => m_axi_ctx_enckey_RRESP,
      m_axi_ctx_enckey_RLAST => m_axi_ctx_enckey_RLAST,
      m_axi_ctx_enckey_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_enckey_RVALID => m_axi_ctx_enckey_RVALID,
      m_axi_ctx_enckey_RREADY => m_axi_ctx_enckey_RREADY,
      m_axi_ctx_deckey_AWADDR => m_axi_ctx_deckey_AWADDR,
      m_axi_ctx_deckey_AWLEN => m_axi_ctx_deckey_AWLEN,
      m_axi_ctx_deckey_AWSIZE => m_axi_ctx_deckey_AWSIZE,
      m_axi_ctx_deckey_AWBURST => m_axi_ctx_deckey_AWBURST,
      m_axi_ctx_deckey_AWLOCK => m_axi_ctx_deckey_AWLOCK,
      m_axi_ctx_deckey_AWREGION => m_axi_ctx_deckey_AWREGION,
      m_axi_ctx_deckey_AWCACHE => m_axi_ctx_deckey_AWCACHE,
      m_axi_ctx_deckey_AWPROT => m_axi_ctx_deckey_AWPROT,
      m_axi_ctx_deckey_AWQOS => m_axi_ctx_deckey_AWQOS,
      m_axi_ctx_deckey_AWVALID => m_axi_ctx_deckey_AWVALID,
      m_axi_ctx_deckey_AWREADY => m_axi_ctx_deckey_AWREADY,
      m_axi_ctx_deckey_WDATA => m_axi_ctx_deckey_WDATA,
      m_axi_ctx_deckey_WSTRB => m_axi_ctx_deckey_WSTRB,
      m_axi_ctx_deckey_WLAST => m_axi_ctx_deckey_WLAST,
      m_axi_ctx_deckey_WVALID => m_axi_ctx_deckey_WVALID,
      m_axi_ctx_deckey_WREADY => m_axi_ctx_deckey_WREADY,
      m_axi_ctx_deckey_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_deckey_BRESP => m_axi_ctx_deckey_BRESP,
      m_axi_ctx_deckey_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_deckey_BVALID => m_axi_ctx_deckey_BVALID,
      m_axi_ctx_deckey_BREADY => m_axi_ctx_deckey_BREADY,
      m_axi_ctx_deckey_ARADDR => m_axi_ctx_deckey_ARADDR,
      m_axi_ctx_deckey_ARLEN => m_axi_ctx_deckey_ARLEN,
      m_axi_ctx_deckey_ARSIZE => m_axi_ctx_deckey_ARSIZE,
      m_axi_ctx_deckey_ARBURST => m_axi_ctx_deckey_ARBURST,
      m_axi_ctx_deckey_ARLOCK => m_axi_ctx_deckey_ARLOCK,
      m_axi_ctx_deckey_ARREGION => m_axi_ctx_deckey_ARREGION,
      m_axi_ctx_deckey_ARCACHE => m_axi_ctx_deckey_ARCACHE,
      m_axi_ctx_deckey_ARPROT => m_axi_ctx_deckey_ARPROT,
      m_axi_ctx_deckey_ARQOS => m_axi_ctx_deckey_ARQOS,
      m_axi_ctx_deckey_ARVALID => m_axi_ctx_deckey_ARVALID,
      m_axi_ctx_deckey_ARREADY => m_axi_ctx_deckey_ARREADY,
      m_axi_ctx_deckey_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_deckey_RDATA => m_axi_ctx_deckey_RDATA,
      m_axi_ctx_deckey_RRESP => m_axi_ctx_deckey_RRESP,
      m_axi_ctx_deckey_RLAST => m_axi_ctx_deckey_RLAST,
      m_axi_ctx_deckey_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_ctx_deckey_RVALID => m_axi_ctx_deckey_RVALID,
      m_axi_ctx_deckey_RREADY => m_axi_ctx_deckey_RREADY,
      m_axi_buf_r_AWADDR => m_axi_buf_r_AWADDR,
      m_axi_buf_r_AWLEN => m_axi_buf_r_AWLEN,
      m_axi_buf_r_AWSIZE => m_axi_buf_r_AWSIZE,
      m_axi_buf_r_AWBURST => m_axi_buf_r_AWBURST,
      m_axi_buf_r_AWLOCK => m_axi_buf_r_AWLOCK,
      m_axi_buf_r_AWREGION => m_axi_buf_r_AWREGION,
      m_axi_buf_r_AWCACHE => m_axi_buf_r_AWCACHE,
      m_axi_buf_r_AWPROT => m_axi_buf_r_AWPROT,
      m_axi_buf_r_AWQOS => m_axi_buf_r_AWQOS,
      m_axi_buf_r_AWVALID => m_axi_buf_r_AWVALID,
      m_axi_buf_r_AWREADY => m_axi_buf_r_AWREADY,
      m_axi_buf_r_WDATA => m_axi_buf_r_WDATA,
      m_axi_buf_r_WSTRB => m_axi_buf_r_WSTRB,
      m_axi_buf_r_WLAST => m_axi_buf_r_WLAST,
      m_axi_buf_r_WVALID => m_axi_buf_r_WVALID,
      m_axi_buf_r_WREADY => m_axi_buf_r_WREADY,
      m_axi_buf_r_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_buf_r_BRESP => m_axi_buf_r_BRESP,
      m_axi_buf_r_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_buf_r_BVALID => m_axi_buf_r_BVALID,
      m_axi_buf_r_BREADY => m_axi_buf_r_BREADY,
      m_axi_buf_r_ARADDR => m_axi_buf_r_ARADDR,
      m_axi_buf_r_ARLEN => m_axi_buf_r_ARLEN,
      m_axi_buf_r_ARSIZE => m_axi_buf_r_ARSIZE,
      m_axi_buf_r_ARBURST => m_axi_buf_r_ARBURST,
      m_axi_buf_r_ARLOCK => m_axi_buf_r_ARLOCK,
      m_axi_buf_r_ARREGION => m_axi_buf_r_ARREGION,
      m_axi_buf_r_ARCACHE => m_axi_buf_r_ARCACHE,
      m_axi_buf_r_ARPROT => m_axi_buf_r_ARPROT,
      m_axi_buf_r_ARQOS => m_axi_buf_r_ARQOS,
      m_axi_buf_r_ARVALID => m_axi_buf_r_ARVALID,
      m_axi_buf_r_ARREADY => m_axi_buf_r_ARREADY,
      m_axi_buf_r_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_buf_r_RDATA => m_axi_buf_r_RDATA,
      m_axi_buf_r_RRESP => m_axi_buf_r_RRESP,
      m_axi_buf_r_RLAST => m_axi_buf_r_RLAST,
      m_axi_buf_r_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_buf_r_RVALID => m_axi_buf_r_RVALID,
      m_axi_buf_r_RREADY => m_axi_buf_r_RREADY,
      ctx_key_offset => ctx_key_offset,
      ctx_enckey_offset => ctx_enckey_offset,
      ctx_deckey_offset => ctx_deckey_offset,
      k_Clk_A => k_Clk_A,
      k_Rst_A => k_Rst_A,
      k_EN_A => k_EN_A,
      k_WEN_A => k_WEN_A,
      k_Addr_A => k_Addr_A,
      k_Din_A => k_Din_A,
      k_Dout_A => k_Dout_A,
      buf_offset => buf_offset
    );
END pynq_encrypt_1_0_arch;
