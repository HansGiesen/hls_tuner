// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1_sdx (lin64) Build 1915620 Thu Jun 22 17:54:59 MDT 2017
// Date        : Mon Nov 19 14:25:52 2018
// Host        : icgrid48 running 64-bit openSUSE Leap 42.3
// Command     : write_verilog -force -mode synth_stub
//               /scratch/local/tmp.tEdaivbEa4/_sds/p0/ipi/pynq.srcs/sources_1/bd/pynq/ip/pynq_sds_irq_const_0/pynq_sds_irq_const_0_stub.v
// Design      : pynq_sds_irq_const_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_3_xlconstant,Vivado 2017.1_sdx" *)
module pynq_sds_irq_const_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[0:0]" */;
  output [0:0]dout;
endmodule
