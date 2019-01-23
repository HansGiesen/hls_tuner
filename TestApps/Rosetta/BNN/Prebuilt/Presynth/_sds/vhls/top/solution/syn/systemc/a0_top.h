// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _a0_top_HH_
#define _a0_top_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "a0_bin_conv.h"
#include "a0_fp_conv.h"
#include "a0_bin_dense.h"
#include "a0_top_mac_muladd_15bgk.h"
#include "a0_top_kh_mem_V.h"
#include "a0_top_wt_mem_V_0.h"
#include "a0_top_dmem_V_0_0.h"

namespace ap_rtl {

struct a0_top : public sc_module {
    // Port declarations 26
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > wt_i_V_dout;
    sc_in< sc_logic > wt_i_V_empty_n;
    sc_out< sc_logic > wt_i_V_read;
    sc_in< sc_lv<64> > kh_i_V_dout;
    sc_in< sc_logic > kh_i_V_empty_n;
    sc_out< sc_logic > kh_i_V_read;
    sc_in< sc_lv<64> > dmem_i_V_dout;
    sc_in< sc_logic > dmem_i_V_empty_n;
    sc_out< sc_logic > dmem_i_V_read;
    sc_out< sc_lv<64> > dmem_o_V_din;
    sc_in< sc_logic > dmem_o_V_full_n;
    sc_out< sc_logic > dmem_o_V_write;
    sc_in< sc_lv<16> > n_inputs_V;
    sc_in< sc_lv<16> > n_outputs_V;
    sc_in< sc_lv<16> > input_words_V;
    sc_in< sc_lv<16> > output_words_V;
    sc_in< sc_lv<3> > layer_mode_V;
    sc_in< sc_lv<1> > dmem_mode_V;
    sc_in< sc_lv<2> > width_mode_V;
    sc_in< sc_lv<2> > norm_mode_V;


    // Module declarations
    a0_top(sc_module_name name);
    SC_HAS_PROCESS(a0_top);

    ~a0_top();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    a0_top_kh_mem_V* kh_mem_V_U;
    a0_top_wt_mem_V_0* wt_mem_V_0_U;
    a0_top_wt_mem_V_0* wt_mem_V_1_U;
    a0_top_dmem_V_0_0* dmem_V_0_0_U;
    a0_top_dmem_V_0_0* dmem_V_0_1_U;
    a0_top_dmem_V_0_0* dmem_V_1_0_U;
    a0_top_dmem_V_0_0* dmem_V_1_1_U;
    a0_bin_conv* grp_bin_conv_fu_599;
    a0_fp_conv* grp_fp_conv_fu_629;
    a0_bin_dense* grp_bin_dense_fu_653;
    a0_top_mac_muladd_15bgk<1,1,15,5,10,20>* top_mac_muladd_15bgk_U371;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > kh_index_V;
    sc_signal< sc_lv<16> > o_index_V;
    sc_signal< sc_lv<6> > kh_mem_V_address0;
    sc_signal< sc_logic > kh_mem_V_ce0;
    sc_signal< sc_logic > kh_mem_V_we0;
    sc_signal< sc_lv<64> > kh_mem_V_q0;
    sc_signal< sc_lv<12> > wt_mem_V_0_address0;
    sc_signal< sc_logic > wt_mem_V_0_ce0;
    sc_signal< sc_logic > wt_mem_V_0_we0;
    sc_signal< sc_lv<64> > wt_mem_V_0_q0;
    sc_signal< sc_lv<12> > wt_mem_V_1_address0;
    sc_signal< sc_logic > wt_mem_V_1_ce0;
    sc_signal< sc_logic > wt_mem_V_1_we0;
    sc_signal< sc_lv<64> > wt_mem_V_1_q0;
    sc_signal< sc_lv<10> > dmem_V_0_0_address0;
    sc_signal< sc_logic > dmem_V_0_0_ce0;
    sc_signal< sc_logic > dmem_V_0_0_we0;
    sc_signal< sc_lv<64> > dmem_V_0_0_d0;
    sc_signal< sc_lv<64> > dmem_V_0_0_q0;
    sc_signal< sc_lv<10> > dmem_V_0_1_address0;
    sc_signal< sc_logic > dmem_V_0_1_ce0;
    sc_signal< sc_logic > dmem_V_0_1_we0;
    sc_signal< sc_lv<64> > dmem_V_0_1_d0;
    sc_signal< sc_lv<64> > dmem_V_0_1_q0;
    sc_signal< sc_lv<10> > dmem_V_1_0_address0;
    sc_signal< sc_logic > dmem_V_1_0_ce0;
    sc_signal< sc_logic > dmem_V_1_0_we0;
    sc_signal< sc_lv<64> > dmem_V_1_0_d0;
    sc_signal< sc_lv<64> > dmem_V_1_0_q0;
    sc_signal< sc_lv<10> > dmem_V_1_1_address0;
    sc_signal< sc_logic > dmem_V_1_1_ce0;
    sc_signal< sc_logic > dmem_V_1_1_we0;
    sc_signal< sc_lv<64> > dmem_V_1_1_d0;
    sc_signal< sc_lv<64> > dmem_V_1_1_q0;
    sc_signal< sc_logic > wt_i_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_logic > kh_i_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_lv<1> > tmp_7_reg_1554;
    sc_signal< sc_logic > dmem_i_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_1_reg_1477;
    sc_signal< sc_lv<1> > tmp_4_reg_1486;
    sc_signal< sc_logic > dmem_o_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter2;
    sc_signal< bool > ap_block_pp3_stage0;
    sc_signal< sc_lv<1> > brmerge1_reg_1599;
    sc_signal< sc_lv<16> > p_1_reg_499;
    sc_signal< sc_lv<10> > p_2_reg_510;
    sc_signal< sc_lv<16> > p_4_reg_521;
    sc_signal< sc_lv<13> > p_5_reg_532;
    sc_signal< sc_lv<7> > p_6_reg_543;
    sc_signal< sc_lv<16> > p_0590_2_reg_566;
    sc_signal< sc_lv<10> > p_0586_2_reg_577;
    sc_signal< sc_lv<16> > p_8_reg_588;
    sc_signal< sc_lv<16> > reg_699;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > dmem_mode_V_read_read_fu_200_p2;
    sc_signal< sc_lv<2> > layer_type_V_fu_705_p4;
    sc_signal< sc_lv<2> > layer_type_V_reg_1449;
    sc_signal< sc_lv<1> > d_o_idx_V_fu_746_p2;
    sc_signal< sc_lv<1> > d_o_idx_V_reg_1457;
    sc_signal< sc_lv<16> > tmp_cast1_fu_760_p1;
    sc_signal< sc_lv<16> > tmp_cast1_reg_1466;
    sc_signal< sc_lv<5> > words_per_image_V_fu_768_p2;
    sc_signal< sc_lv<5> > words_per_image_V_reg_1471;
    sc_signal< sc_lv<1> > tmp_1_fu_774_p2;
    sc_signal< sc_lv<11> > tmp_2_cast_fu_780_p1;
    sc_signal< sc_lv<11> > tmp_2_cast_reg_1481;
    sc_signal< sc_lv<1> > tmp_4_fu_784_p2;
    sc_signal< sc_lv<1> > exitcond_fu_790_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_predicate_op114_read_state3;
    sc_signal< bool > ap_predicate_op129_read_state3;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<16> > i_V_2_fu_795_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<10> > r_V_10_fu_801_p1;
    sc_signal< sc_lv<10> > r_V_10_reg_1499;
    sc_signal< sc_lv<15> > r_V_6_reg_1504;
    sc_signal< sc_lv<1> > tmp_32_fu_815_p1;
    sc_signal< sc_lv<1> > tmp_32_reg_1509;
    sc_signal< sc_lv<1> > tmp_31_reg_1513;
    sc_signal< sc_lv<17> > r_V_3_fu_854_p2;
    sc_signal< sc_lv<17> > r_V_3_reg_1517;
    sc_signal< sc_lv<1> > tmp_29_fu_860_p1;
    sc_signal< sc_lv<1> > tmp_29_reg_1522;
    sc_signal< sc_lv<16> > p_s_fu_885_p3;
    sc_signal< sc_lv<10> > p_s_45_fu_893_p3;
    sc_signal< sc_lv<1> > tmp_5_fu_922_p2;
    sc_signal< bool > ap_block_state5_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<13> > i_V_fu_928_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<12> > r_V_reg_1545;
    sc_signal< sc_lv<1> > tmp_30_fu_944_p1;
    sc_signal< sc_lv<1> > tmp_30_reg_1550;
    sc_signal< sc_lv<1> > tmp_7_fu_953_p2;
    sc_signal< bool > ap_block_state8_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state9_pp2_stage0_iter1;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<7> > i_V_1_fu_959_p2;
    sc_signal< sc_lv<7> > i_V_1_reg_1558;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< sc_lv<1> > tmp_16_fu_974_p2;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > grp_bin_dense_fu_653_ap_done;
    sc_signal< bool > ap_predicate_op202_call_state11;
    sc_signal< sc_logic > grp_fp_conv_fu_629_ap_done;
    sc_signal< bool > ap_block_state11_on_subcall_done;
    sc_signal< sc_lv<10> > i_V_3_fu_979_p2;
    sc_signal< sc_lv<10> > i_V_3_reg_1567;
    sc_signal< sc_lv<2> > off_V_fu_1000_p1;
    sc_signal< sc_lv<2> > off_V_reg_1577;
    sc_signal< sc_lv<1> > this_assign_1_fu_1004_p2;
    sc_signal< sc_lv<1> > this_assign_1_reg_1584;
    sc_signal< sc_lv<20> > rhs_V_1_cast_fu_1046_p1;
    sc_signal< sc_lv<20> > rhs_V_1_cast_reg_1589;
    sc_signal< sc_lv<11> > tmp_31_cast_fu_1050_p1;
    sc_signal< sc_lv<11> > tmp_31_cast_reg_1594;
    sc_signal< sc_lv<1> > brmerge1_fu_1078_p2;
    sc_signal< sc_lv<16> > nc_V_fu_1185_p3;
    sc_signal< sc_lv<16> > nc_V_reg_1603;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > exitcond1_fu_1217_p2;
    sc_signal< sc_logic > ap_CS_fsm_pp3_stage0;
    sc_signal< bool > ap_block_state15_pp3_stage0_iter0;
    sc_signal< bool > ap_block_state16_pp3_stage0_iter1;
    sc_signal< bool > ap_block_state17_pp3_stage0_iter2;
    sc_signal< bool > ap_block_pp3_stage0_11001;
    sc_signal< sc_lv<16> > i_V_4_fu_1222_p2;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter0;
    sc_signal< sc_lv<1> > tmp_37_fu_1253_p1;
    sc_signal< sc_lv<1> > tmp_37_reg_1622;
    sc_signal< sc_lv<1> > tmp_36_fu_1275_p1;
    sc_signal< sc_lv<1> > tmp_36_reg_1649;
    sc_signal< sc_lv<16> > p_0590_2_49_fu_1300_p3;
    sc_signal< sc_lv<10> > p_3_fu_1308_p3;
    sc_signal< sc_lv<64> > newSel8_fu_1346_p3;
    sc_signal< sc_lv<64> > newSel8_reg_1686;
    sc_signal< sc_lv<64> > newSel5_fu_1383_p3;
    sc_signal< sc_lv<64> > newSel5_reg_1691;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state5;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state8;
    sc_signal< bool > ap_block_pp3_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp3_exit_iter0_state15;
    sc_signal< sc_logic > ap_enable_reg_pp3_iter1;
    sc_signal< sc_logic > grp_bin_conv_fu_599_ap_start;
    sc_signal< sc_logic > grp_bin_conv_fu_599_ap_done;
    sc_signal< sc_logic > grp_bin_conv_fu_599_ap_idle;
    sc_signal< sc_logic > grp_bin_conv_fu_599_ap_ready;
    sc_signal< sc_lv<12> > grp_bin_conv_fu_599_wt_mem_0_V_address0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_wt_mem_0_V_ce0;
    sc_signal< sc_lv<12> > grp_bin_conv_fu_599_wt_mem_1_V_address0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_wt_mem_1_V_ce0;
    sc_signal< sc_lv<10> > grp_bin_conv_fu_599_dmem_0_0_V_address0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_dmem_0_0_V_ce0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_dmem_0_0_V_we0;
    sc_signal< sc_lv<64> > grp_bin_conv_fu_599_dmem_0_0_V_d0;
    sc_signal< sc_lv<10> > grp_bin_conv_fu_599_dmem_0_1_V_address0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_dmem_0_1_V_ce0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_dmem_0_1_V_we0;
    sc_signal< sc_lv<64> > grp_bin_conv_fu_599_dmem_0_1_V_d0;
    sc_signal< sc_lv<10> > grp_bin_conv_fu_599_dmem_1_0_V_address0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_dmem_1_0_V_ce0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_dmem_1_0_V_we0;
    sc_signal< sc_lv<64> > grp_bin_conv_fu_599_dmem_1_0_V_d0;
    sc_signal< sc_lv<10> > grp_bin_conv_fu_599_dmem_1_1_V_address0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_dmem_1_1_V_ce0;
    sc_signal< sc_logic > grp_bin_conv_fu_599_dmem_1_1_V_we0;
    sc_signal< sc_lv<64> > grp_bin_conv_fu_599_dmem_1_1_V_d0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_ap_start;
    sc_signal< sc_logic > grp_fp_conv_fu_629_ap_idle;
    sc_signal< sc_logic > grp_fp_conv_fu_629_ap_ready;
    sc_signal< sc_lv<12> > grp_fp_conv_fu_629_wt_mem_0_V_address0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_wt_mem_0_V_ce0;
    sc_signal< sc_lv<12> > grp_fp_conv_fu_629_wt_mem_1_V_address0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_wt_mem_1_V_ce0;
    sc_signal< sc_lv<6> > grp_fp_conv_fu_629_kh_mem_V_address0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_kh_mem_V_ce0;
    sc_signal< sc_lv<10> > grp_fp_conv_fu_629_dmem_0_0_V_address0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_dmem_0_0_V_ce0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_dmem_0_0_V_we0;
    sc_signal< sc_lv<64> > grp_fp_conv_fu_629_dmem_0_0_V_d0;
    sc_signal< sc_lv<10> > grp_fp_conv_fu_629_dmem_0_1_V_address0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_dmem_0_1_V_ce0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_dmem_0_1_V_we0;
    sc_signal< sc_lv<64> > grp_fp_conv_fu_629_dmem_0_1_V_d0;
    sc_signal< sc_lv<10> > grp_fp_conv_fu_629_dmem_1_0_V_address0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_dmem_1_0_V_ce0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_dmem_1_0_V_we0;
    sc_signal< sc_lv<64> > grp_fp_conv_fu_629_dmem_1_0_V_d0;
    sc_signal< sc_lv<10> > grp_fp_conv_fu_629_dmem_1_1_V_address0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_dmem_1_1_V_ce0;
    sc_signal< sc_logic > grp_fp_conv_fu_629_dmem_1_1_V_we0;
    sc_signal< sc_lv<64> > grp_fp_conv_fu_629_dmem_1_1_V_d0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_ap_start;
    sc_signal< sc_logic > grp_bin_dense_fu_653_ap_idle;
    sc_signal< sc_logic > grp_bin_dense_fu_653_ap_ready;
    sc_signal< sc_lv<12> > grp_bin_dense_fu_653_wt_mem_0_V_address0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_wt_mem_0_V_ce0;
    sc_signal< sc_lv<12> > grp_bin_dense_fu_653_wt_mem_1_V_address0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_wt_mem_1_V_ce0;
    sc_signal< sc_lv<6> > grp_bin_dense_fu_653_kh_mem_V_address0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_kh_mem_V_ce0;
    sc_signal< sc_lv<10> > grp_bin_dense_fu_653_dmem_0_0_V_address0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_dmem_0_0_V_ce0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_dmem_0_0_V_we0;
    sc_signal< sc_lv<64> > grp_bin_dense_fu_653_dmem_0_0_V_d0;
    sc_signal< sc_lv<10> > grp_bin_dense_fu_653_dmem_0_1_V_address0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_dmem_0_1_V_ce0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_dmem_0_1_V_we0;
    sc_signal< sc_lv<64> > grp_bin_dense_fu_653_dmem_0_1_V_d0;
    sc_signal< sc_lv<10> > grp_bin_dense_fu_653_dmem_1_0_V_address0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_dmem_1_0_V_ce0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_dmem_1_0_V_we0;
    sc_signal< sc_lv<64> > grp_bin_dense_fu_653_dmem_1_0_V_d0;
    sc_signal< sc_lv<10> > grp_bin_dense_fu_653_dmem_1_1_V_address0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_dmem_1_1_V_ce0;
    sc_signal< sc_logic > grp_bin_dense_fu_653_dmem_1_1_V_we0;
    sc_signal< sc_lv<64> > grp_bin_dense_fu_653_dmem_1_1_V_d0;
    sc_signal< sc_lv<1> > tmp_27_fu_719_p1;
    sc_signal< sc_lv<1> > p_9_reg_488;
    sc_signal< sc_lv<1> > tmp_26_fu_715_p1;
    sc_signal< sc_lv<7> > p_6_phi_fu_547_p4;
    sc_signal< sc_lv<10> > p_7_reg_555;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_reg_grp_bin_conv_fu_599_ap_start;
    sc_signal< sc_logic > ap_reg_grp_fp_conv_fu_629_ap_start;
    sc_signal< sc_logic > ap_reg_grp_bin_dense_fu_653_ap_start;
    sc_signal< sc_lv<32> > tmp_10_fu_901_p1;
    sc_signal< sc_lv<32> > tmp_2_fu_908_p1;
    sc_signal< sc_lv<32> > tmp_3_fu_915_p1;
    sc_signal< sc_lv<32> > tmp_9_fu_948_p1;
    sc_signal< sc_lv<32> > tmp_12_fu_965_p1;
    sc_signal< sc_lv<32> > tmp_i_fu_995_p1;
    sc_signal< sc_lv<32> > tmp_24_fu_1246_p1;
    sc_signal< sc_lv<32> > tmp_23_fu_1267_p1;
    sc_signal< bool > ap_block_pp3_stage0_01001;
    sc_signal< sc_lv<16> > p_Result_s_fu_724_p1;
    sc_signal< sc_lv<16> > tmp_13_fu_1010_p2;
    sc_signal< sc_lv<16> > tmp_18_fu_1193_p2;
    sc_signal< sc_lv<16> > grp_fu_688_p2;
    sc_signal< sc_lv<16> > tmp_19_fu_1205_p2;
    sc_signal< sc_lv<3> > tmp_s_fu_752_p3;
    sc_signal< sc_lv<5> > tmp_cast_fu_764_p1;
    sc_signal< sc_lv<15> > r_V_s_fu_827_p4;
    sc_signal< sc_lv<16> > r_V_11_fu_837_p1;
    sc_signal< sc_lv<16> > r_V_2_fu_841_p2;
    sc_signal< sc_lv<17> > rhs_V_fu_850_p1;
    sc_signal< sc_lv<17> > lhs_V_fu_846_p1;
    sc_signal< sc_lv<10> > img_off_V_fu_864_p2;
    sc_signal< sc_lv<11> > tmp_28_cast_fu_870_p1;
    sc_signal< sc_lv<1> > tmp_20_fu_874_p2;
    sc_signal< sc_lv<16> > img_idx_V_fu_879_p2;
    sc_signal< sc_lv<16> > tmp_25_cast_fu_970_p1;
    sc_signal< sc_lv<14> > r_V_8_fu_985_p4;
    sc_signal< sc_lv<3> > sf_fu_1026_p4;
    sc_signal< sc_lv<1> > tmp_21_fu_1021_p2;
    sc_signal< sc_lv<5> > tmp_fu_1035_p1;
    sc_signal< sc_lv<5> > words_per_out_V_fu_1039_p3;
    sc_signal< sc_lv<1> > tmp_62_not_fu_1054_p2;
    sc_signal< sc_lv<1> > brmerge_fu_1059_p2;
    sc_signal< sc_lv<1> > tmp_35_fu_1065_p3;
    sc_signal< sc_lv<1> > brmerge_not_fu_1072_p2;
    sc_signal< sc_lv<1> > tmp_45_i_fu_1084_p2;
    sc_signal< sc_lv<1> > tmp_46_i_fu_1093_p2;
    sc_signal< sc_lv<1> > sel_tmp1_fu_1133_p2;
    sc_signal< sc_lv<1> > sel_tmp6_demorgan_fu_1145_p2;
    sc_signal< sc_lv<1> > tmp_47_i_fu_1108_p2;
    sc_signal< sc_lv<1> > sel_tmp6_fu_1151_p2;
    sc_signal< sc_lv<1> > sel_tmp7_fu_1157_p2;
    sc_signal< sc_lv<16> > loc_V_2_fu_1113_p4;
    sc_signal< sc_lv<16> > loc_V_1_fu_1098_p4;
    sc_signal< sc_lv<1> > sel_tmp2_fu_1139_p2;
    sc_signal< sc_lv<16> > loc_V_fu_1089_p1;
    sc_signal< sc_lv<16> > loc_V_3_fu_1123_p4;
    sc_signal< sc_lv<1> > or_cond_fu_1171_p2;
    sc_signal< sc_lv<16> > newSel_fu_1163_p3;
    sc_signal< sc_lv<16> > newSel1_fu_1177_p3;
    sc_signal< sc_lv<15> > r_V_1_fu_1228_p4;
    sc_signal< sc_lv<20> > grp_fu_1390_p3;
    sc_signal< sc_lv<15> > r_V_7_fu_1257_p4;
    sc_signal< sc_lv<10> > img_off_V_1_fu_1279_p2;
    sc_signal< sc_lv<11> > tmp_37_cast_fu_1285_p1;
    sc_signal< sc_lv<1> > tmp_25_fu_1289_p2;
    sc_signal< sc_lv<16> > img_idx_V_1_fu_1294_p2;
    sc_signal< sc_lv<1> > sel_tmp4_fu_1316_p2;
    sc_signal< sc_lv<1> > sel_tmp8_fu_1326_p2;
    sc_signal< sc_lv<1> > sel_tmp5_fu_1321_p2;
    sc_signal< sc_lv<64> > newSel6_fu_1330_p3;
    sc_signal< sc_lv<64> > newSel7_fu_1338_p3;
    sc_signal< sc_lv<1> > sel_tmp9_fu_1353_p2;
    sc_signal< sc_lv<1> > sel_tmp3_fu_1363_p2;
    sc_signal< sc_lv<1> > sel_tmp_fu_1358_p2;
    sc_signal< sc_lv<64> > newSel3_fu_1367_p3;
    sc_signal< sc_lv<64> > newSel4_fu_1375_p3;
    sc_signal< sc_lv<15> > grp_fu_1390_p0;
    sc_signal< sc_lv<5> > grp_fu_1390_p1;
    sc_signal< sc_lv<10> > grp_fu_1390_p2;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    sc_signal< sc_logic > ap_idle_pp3;
    sc_signal< sc_logic > ap_enable_pp3;
    sc_signal< sc_lv<20> > grp_fu_1390_p00;
    sc_signal< sc_lv<20> > grp_fu_1390_p20;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_pp0_stage0;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_pp1_stage0;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_pp2_stage0;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<13> ap_ST_fsm_state14;
    static const sc_lv<13> ap_ST_fsm_pp3_stage0;
    static const sc_lv<13> ap_ST_fsm_state18;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<13> ap_const_lv13_124A;
    static const sc_lv<13> ap_const_lv13_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_2F;
    static const sc_lv<32> ap_const_lv32_30;
    static const sc_lv<32> ap_const_lv32_3F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_pp3_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_pp3_stage0();
    void thread_ap_block_pp3_stage0_01001();
    void thread_ap_block_pp3_stage0_11001();
    void thread_ap_block_pp3_stage0_subdone();
    void thread_ap_block_state11_on_subcall_done();
    void thread_ap_block_state15_pp3_stage0_iter0();
    void thread_ap_block_state16_pp3_stage0_iter1();
    void thread_ap_block_state17_pp3_stage0_iter2();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state5_pp1_stage0_iter0();
    void thread_ap_block_state6_pp1_stage0_iter1();
    void thread_ap_block_state8_pp2_stage0_iter0();
    void thread_ap_block_state9_pp2_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state5();
    void thread_ap_condition_pp2_exit_iter0_state8();
    void thread_ap_condition_pp3_exit_iter0_state15();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_enable_pp3();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_idle_pp3();
    void thread_ap_predicate_op114_read_state3();
    void thread_ap_predicate_op129_read_state3();
    void thread_ap_predicate_op202_call_state11();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_brmerge1_fu_1078_p2();
    void thread_brmerge_fu_1059_p2();
    void thread_brmerge_not_fu_1072_p2();
    void thread_d_o_idx_V_fu_746_p2();
    void thread_dmem_V_0_0_address0();
    void thread_dmem_V_0_0_ce0();
    void thread_dmem_V_0_0_d0();
    void thread_dmem_V_0_0_we0();
    void thread_dmem_V_0_1_address0();
    void thread_dmem_V_0_1_ce0();
    void thread_dmem_V_0_1_d0();
    void thread_dmem_V_0_1_we0();
    void thread_dmem_V_1_0_address0();
    void thread_dmem_V_1_0_ce0();
    void thread_dmem_V_1_0_d0();
    void thread_dmem_V_1_0_we0();
    void thread_dmem_V_1_1_address0();
    void thread_dmem_V_1_1_ce0();
    void thread_dmem_V_1_1_d0();
    void thread_dmem_V_1_1_we0();
    void thread_dmem_i_V_blk_n();
    void thread_dmem_i_V_read();
    void thread_dmem_mode_V_read_read_fu_200_p2();
    void thread_dmem_o_V_blk_n();
    void thread_dmem_o_V_din();
    void thread_dmem_o_V_write();
    void thread_exitcond1_fu_1217_p2();
    void thread_exitcond_fu_790_p2();
    void thread_grp_bin_conv_fu_599_ap_start();
    void thread_grp_bin_dense_fu_653_ap_start();
    void thread_grp_fp_conv_fu_629_ap_start();
    void thread_grp_fu_1390_p0();
    void thread_grp_fu_1390_p00();
    void thread_grp_fu_1390_p1();
    void thread_grp_fu_1390_p2();
    void thread_grp_fu_1390_p20();
    void thread_grp_fu_688_p2();
    void thread_i_V_1_fu_959_p2();
    void thread_i_V_2_fu_795_p2();
    void thread_i_V_3_fu_979_p2();
    void thread_i_V_4_fu_1222_p2();
    void thread_i_V_fu_928_p2();
    void thread_img_idx_V_1_fu_1294_p2();
    void thread_img_idx_V_fu_879_p2();
    void thread_img_off_V_1_fu_1279_p2();
    void thread_img_off_V_fu_864_p2();
    void thread_kh_i_V_blk_n();
    void thread_kh_i_V_read();
    void thread_kh_mem_V_address0();
    void thread_kh_mem_V_ce0();
    void thread_kh_mem_V_we0();
    void thread_layer_type_V_fu_705_p4();
    void thread_lhs_V_fu_846_p1();
    void thread_loc_V_1_fu_1098_p4();
    void thread_loc_V_2_fu_1113_p4();
    void thread_loc_V_3_fu_1123_p4();
    void thread_loc_V_fu_1089_p1();
    void thread_nc_V_fu_1185_p3();
    void thread_newSel1_fu_1177_p3();
    void thread_newSel3_fu_1367_p3();
    void thread_newSel4_fu_1375_p3();
    void thread_newSel5_fu_1383_p3();
    void thread_newSel6_fu_1330_p3();
    void thread_newSel7_fu_1338_p3();
    void thread_newSel8_fu_1346_p3();
    void thread_newSel_fu_1163_p3();
    void thread_off_V_fu_1000_p1();
    void thread_or_cond_fu_1171_p2();
    void thread_p_0590_2_49_fu_1300_p3();
    void thread_p_3_fu_1308_p3();
    void thread_p_6_phi_fu_547_p4();
    void thread_p_Result_s_fu_724_p1();
    void thread_p_s_45_fu_893_p3();
    void thread_p_s_fu_885_p3();
    void thread_r_V_10_fu_801_p1();
    void thread_r_V_11_fu_837_p1();
    void thread_r_V_1_fu_1228_p4();
    void thread_r_V_2_fu_841_p2();
    void thread_r_V_3_fu_854_p2();
    void thread_r_V_7_fu_1257_p4();
    void thread_r_V_8_fu_985_p4();
    void thread_r_V_s_fu_827_p4();
    void thread_rhs_V_1_cast_fu_1046_p1();
    void thread_rhs_V_fu_850_p1();
    void thread_sel_tmp1_fu_1133_p2();
    void thread_sel_tmp2_fu_1139_p2();
    void thread_sel_tmp3_fu_1363_p2();
    void thread_sel_tmp4_fu_1316_p2();
    void thread_sel_tmp5_fu_1321_p2();
    void thread_sel_tmp6_demorgan_fu_1145_p2();
    void thread_sel_tmp6_fu_1151_p2();
    void thread_sel_tmp7_fu_1157_p2();
    void thread_sel_tmp8_fu_1326_p2();
    void thread_sel_tmp9_fu_1353_p2();
    void thread_sel_tmp_fu_1358_p2();
    void thread_sf_fu_1026_p4();
    void thread_this_assign_1_fu_1004_p2();
    void thread_tmp_10_fu_901_p1();
    void thread_tmp_12_fu_965_p1();
    void thread_tmp_13_fu_1010_p2();
    void thread_tmp_16_fu_974_p2();
    void thread_tmp_18_fu_1193_p2();
    void thread_tmp_19_fu_1205_p2();
    void thread_tmp_1_fu_774_p2();
    void thread_tmp_20_fu_874_p2();
    void thread_tmp_21_fu_1021_p2();
    void thread_tmp_23_fu_1267_p1();
    void thread_tmp_24_fu_1246_p1();
    void thread_tmp_25_cast_fu_970_p1();
    void thread_tmp_25_fu_1289_p2();
    void thread_tmp_26_fu_715_p1();
    void thread_tmp_27_fu_719_p1();
    void thread_tmp_28_cast_fu_870_p1();
    void thread_tmp_29_fu_860_p1();
    void thread_tmp_2_cast_fu_780_p1();
    void thread_tmp_2_fu_908_p1();
    void thread_tmp_30_fu_944_p1();
    void thread_tmp_31_cast_fu_1050_p1();
    void thread_tmp_32_fu_815_p1();
    void thread_tmp_35_fu_1065_p3();
    void thread_tmp_36_fu_1275_p1();
    void thread_tmp_37_cast_fu_1285_p1();
    void thread_tmp_37_fu_1253_p1();
    void thread_tmp_3_fu_915_p1();
    void thread_tmp_45_i_fu_1084_p2();
    void thread_tmp_46_i_fu_1093_p2();
    void thread_tmp_47_i_fu_1108_p2();
    void thread_tmp_4_fu_784_p2();
    void thread_tmp_5_fu_922_p2();
    void thread_tmp_62_not_fu_1054_p2();
    void thread_tmp_7_fu_953_p2();
    void thread_tmp_9_fu_948_p1();
    void thread_tmp_cast1_fu_760_p1();
    void thread_tmp_cast_fu_764_p1();
    void thread_tmp_fu_1035_p1();
    void thread_tmp_i_fu_995_p1();
    void thread_tmp_s_fu_752_p3();
    void thread_words_per_image_V_fu_768_p2();
    void thread_words_per_out_V_fu_1039_p3();
    void thread_wt_i_V_blk_n();
    void thread_wt_i_V_read();
    void thread_wt_mem_V_0_address0();
    void thread_wt_mem_V_0_ce0();
    void thread_wt_mem_V_0_we0();
    void thread_wt_mem_V_1_address0();
    void thread_wt_mem_V_1_ce0();
    void thread_wt_mem_V_1_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
