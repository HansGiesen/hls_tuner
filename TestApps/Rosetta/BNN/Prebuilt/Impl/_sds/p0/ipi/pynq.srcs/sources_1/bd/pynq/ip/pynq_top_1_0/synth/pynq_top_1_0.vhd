-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: xilinx.com:hls:top:1.0
-- IP Revision: 1901041557

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pynq_top_1_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    wt_i_V_dout : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    wt_i_V_empty_n : IN STD_LOGIC;
    wt_i_V_read : OUT STD_LOGIC;
    kh_i_V_dout : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    kh_i_V_empty_n : IN STD_LOGIC;
    kh_i_V_read : OUT STD_LOGIC;
    dmem_i_V_dout : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    dmem_i_V_empty_n : IN STD_LOGIC;
    dmem_i_V_read : OUT STD_LOGIC;
    dmem_o_V_din : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    dmem_o_V_full_n : IN STD_LOGIC;
    dmem_o_V_write : OUT STD_LOGIC;
    n_inputs_V : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    n_outputs_V : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    input_words_V : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    output_words_V : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    layer_mode_V : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    dmem_mode_V : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    width_mode_V : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    norm_mode_V : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END pynq_top_1_0;

ARCHITECTURE pynq_top_1_0_arch OF pynq_top_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pynq_top_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT a0_top IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      ap_start : IN STD_LOGIC;
      ap_done : OUT STD_LOGIC;
      ap_idle : OUT STD_LOGIC;
      ap_ready : OUT STD_LOGIC;
      wt_i_V_dout : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      wt_i_V_empty_n : IN STD_LOGIC;
      wt_i_V_read : OUT STD_LOGIC;
      kh_i_V_dout : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      kh_i_V_empty_n : IN STD_LOGIC;
      kh_i_V_read : OUT STD_LOGIC;
      dmem_i_V_dout : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      dmem_i_V_empty_n : IN STD_LOGIC;
      dmem_i_V_read : OUT STD_LOGIC;
      dmem_o_V_din : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      dmem_o_V_full_n : IN STD_LOGIC;
      dmem_o_V_write : OUT STD_LOGIC;
      n_inputs_V : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      n_outputs_V : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      input_words_V : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      output_words_V : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      layer_mode_V : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      dmem_mode_V : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      width_mode_V : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      norm_mode_V : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT a0_top;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF pynq_top_1_0_arch: ARCHITECTURE IS "a0_top,Vivado 2017.1_sdx";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF pynq_top_1_0_arch : ARCHITECTURE IS "pynq_top_1_0,a0_top,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF pynq_top_1_0_arch: ARCHITECTURE IS "pynq_top_1_0,a0_top,{x_ipProduct=Vivado 2017.1_sdx,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=1901041557,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF ap_start: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  ATTRIBUTE X_INTERFACE_INFO OF ap_done: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  ATTRIBUTE X_INTERFACE_INFO OF ap_idle: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  ATTRIBUTE X_INTERFACE_INFO OF ap_ready: SIGNAL IS "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  ATTRIBUTE X_INTERFACE_INFO OF wt_i_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 wt_i_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF wt_i_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 wt_i_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_INFO OF wt_i_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 wt_i_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF kh_i_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 kh_i_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF kh_i_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 kh_i_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_INFO OF kh_i_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 kh_i_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF dmem_i_V_dout: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 dmem_i_V RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF dmem_i_V_empty_n: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 dmem_i_V EMPTY_N";
  ATTRIBUTE X_INTERFACE_INFO OF dmem_i_V_read: SIGNAL IS "xilinx.com:interface:acc_fifo_read:1.0 dmem_i_V RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF dmem_o_V_din: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 dmem_o_V WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF dmem_o_V_full_n: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 dmem_o_V FULL_N";
  ATTRIBUTE X_INTERFACE_INFO OF dmem_o_V_write: SIGNAL IS "xilinx.com:interface:acc_fifo_write:1.0 dmem_o_V WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF n_inputs_V: SIGNAL IS "xilinx.com:signal:data:1.0 n_inputs_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF n_outputs_V: SIGNAL IS "xilinx.com:signal:data:1.0 n_outputs_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF input_words_V: SIGNAL IS "xilinx.com:signal:data:1.0 input_words_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF output_words_V: SIGNAL IS "xilinx.com:signal:data:1.0 output_words_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF layer_mode_V: SIGNAL IS "xilinx.com:signal:data:1.0 layer_mode_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF dmem_mode_V: SIGNAL IS "xilinx.com:signal:data:1.0 dmem_mode_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF width_mode_V: SIGNAL IS "xilinx.com:signal:data:1.0 width_mode_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF norm_mode_V: SIGNAL IS "xilinx.com:signal:data:1.0 norm_mode_V DATA";
BEGIN
  U0 : a0_top
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      wt_i_V_dout => wt_i_V_dout,
      wt_i_V_empty_n => wt_i_V_empty_n,
      wt_i_V_read => wt_i_V_read,
      kh_i_V_dout => kh_i_V_dout,
      kh_i_V_empty_n => kh_i_V_empty_n,
      kh_i_V_read => kh_i_V_read,
      dmem_i_V_dout => dmem_i_V_dout,
      dmem_i_V_empty_n => dmem_i_V_empty_n,
      dmem_i_V_read => dmem_i_V_read,
      dmem_o_V_din => dmem_o_V_din,
      dmem_o_V_full_n => dmem_o_V_full_n,
      dmem_o_V_write => dmem_o_V_write,
      n_inputs_V => n_inputs_V,
      n_outputs_V => n_outputs_V,
      input_words_V => input_words_V,
      output_words_V => output_words_V,
      layer_mode_V => layer_mode_V,
      dmem_mode_V => dmem_mode_V,
      width_mode_V => width_mode_V,
      norm_mode_V => norm_mode_V
    );
END pynq_top_1_0_arch;
