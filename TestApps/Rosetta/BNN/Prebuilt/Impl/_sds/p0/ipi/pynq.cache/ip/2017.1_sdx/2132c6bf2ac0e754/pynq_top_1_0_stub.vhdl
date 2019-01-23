-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
-- Date        : Fri Jan  4 16:34:12 2019
-- Host        : icgrid62 running 64-bit openSUSE Leap 42.3
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pynq_top_1_0_stub.vhdl
-- Design      : pynq_top_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    wt_i_V_dout : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wt_i_V_empty_n : in STD_LOGIC;
    wt_i_V_read : out STD_LOGIC;
    kh_i_V_dout : in STD_LOGIC_VECTOR ( 63 downto 0 );
    kh_i_V_empty_n : in STD_LOGIC;
    kh_i_V_read : out STD_LOGIC;
    dmem_i_V_dout : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dmem_i_V_empty_n : in STD_LOGIC;
    dmem_i_V_read : out STD_LOGIC;
    dmem_o_V_din : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dmem_o_V_full_n : in STD_LOGIC;
    dmem_o_V_write : out STD_LOGIC;
    n_inputs_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    n_outputs_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    input_words_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_words_V : in STD_LOGIC_VECTOR ( 15 downto 0 );
    layer_mode_V : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dmem_mode_V : in STD_LOGIC_VECTOR ( 0 to 0 );
    width_mode_V : in STD_LOGIC_VECTOR ( 1 downto 0 );
    norm_mode_V : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,wt_i_V_dout[63:0],wt_i_V_empty_n,wt_i_V_read,kh_i_V_dout[63:0],kh_i_V_empty_n,kh_i_V_read,dmem_i_V_dout[63:0],dmem_i_V_empty_n,dmem_i_V_read,dmem_o_V_din[63:0],dmem_o_V_full_n,dmem_o_V_write,n_inputs_V[15:0],n_outputs_V[15:0],input_words_V[15:0],output_words_V[15:0],layer_mode_V[2:0],dmem_mode_V[0:0],width_mode_V[1:0],norm_mode_V[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "a0_top,Vivado 2017.1_sdx";
begin
end;
