// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
// Date        : Fri Jan  4 16:34:23 2019
// Host        : icgrid62 running 64-bit openSUSE Leap 42.3
// Command     : write_verilog -force -mode synth_stub
//               /var/tmp/tmp.ad3h9wxxaq/_sds/p0/ipi/pynq.srcs/sources_1/bd/pynq/ip/pynq_top_1_0/pynq_top_1_0_stub.v
// Design      : pynq_top_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "a0_top,Vivado 2017.1_sdx" *)
module pynq_top_1_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, wt_i_V_dout, wt_i_V_empty_n, wt_i_V_read, kh_i_V_dout, kh_i_V_empty_n, kh_i_V_read, 
  dmem_i_V_dout, dmem_i_V_empty_n, dmem_i_V_read, dmem_o_V_din, dmem_o_V_full_n, 
  dmem_o_V_write, n_inputs_V, n_outputs_V, input_words_V, output_words_V, layer_mode_V, 
  dmem_mode_V, width_mode_V, norm_mode_V)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,wt_i_V_dout[63:0],wt_i_V_empty_n,wt_i_V_read,kh_i_V_dout[63:0],kh_i_V_empty_n,kh_i_V_read,dmem_i_V_dout[63:0],dmem_i_V_empty_n,dmem_i_V_read,dmem_o_V_din[63:0],dmem_o_V_full_n,dmem_o_V_write,n_inputs_V[15:0],n_outputs_V[15:0],input_words_V[15:0],output_words_V[15:0],layer_mode_V[2:0],dmem_mode_V[0:0],width_mode_V[1:0],norm_mode_V[1:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [63:0]wt_i_V_dout;
  input wt_i_V_empty_n;
  output wt_i_V_read;
  input [63:0]kh_i_V_dout;
  input kh_i_V_empty_n;
  output kh_i_V_read;
  input [63:0]dmem_i_V_dout;
  input dmem_i_V_empty_n;
  output dmem_i_V_read;
  output [63:0]dmem_o_V_din;
  input dmem_o_V_full_n;
  output dmem_o_V_write;
  input [15:0]n_inputs_V;
  input [15:0]n_outputs_V;
  input [15:0]input_words_V;
  input [15:0]output_words_V;
  input [2:0]layer_mode_V;
  input [0:0]dmem_mode_V;
  input [1:0]width_mode_V;
  input [1:0]norm_mode_V;
endmodule
