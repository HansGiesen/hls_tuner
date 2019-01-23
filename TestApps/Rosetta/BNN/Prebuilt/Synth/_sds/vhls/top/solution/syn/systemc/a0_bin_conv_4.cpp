#include "a0_bin_conv.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void a0_bin_conv::thread_fixed_buffer_41_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_41_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_41_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_41_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_41_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_41_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_41_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_41_V_address1 = fixed_buffer_41_V_a_2_reg_60026.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_41_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_41_V_address1 = fixed_buffer_41_V_a_1_reg_59554.read();
    } else {
        fixed_buffer_41_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_41_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_41_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_41_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_41_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_41_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_41_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_41_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_41_V_d1 = fixed_temp_V_41_reg_18327.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_41_V_d1 = tmp_359_40_fu_41989_p2.read();
    } else {
        fixed_buffer_41_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_41_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_41_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_41_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_41_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_41_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_41_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_42_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_42_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_42_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_42_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_42_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_42_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_42_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_42_V_address1 = fixed_buffer_42_V_a_2_reg_60031.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_42_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_42_V_address1 = fixed_buffer_42_V_a_1_reg_59565.read();
    } else {
        fixed_buffer_42_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_42_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_42_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_42_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_42_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_42_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_42_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_42_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_42_V_d1 = fixed_temp_V_42_reg_18316.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_42_V_d1 = tmp_359_41_fu_41999_p2.read();
    } else {
        fixed_buffer_42_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_42_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_42_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_42_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_42_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_42_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_42_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_43_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_43_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_43_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_43_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_43_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_43_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_43_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_43_V_address1 = fixed_buffer_43_V_a_2_reg_60036.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_43_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_43_V_address1 = fixed_buffer_43_V_a_1_reg_59576.read();
    } else {
        fixed_buffer_43_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_43_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_43_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_43_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_43_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_43_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_43_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_43_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_43_V_d1 = fixed_temp_V_43_reg_18305.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_43_V_d1 = tmp_359_42_fu_42009_p2.read();
    } else {
        fixed_buffer_43_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_43_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_43_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_43_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_43_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_43_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_43_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_44_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_44_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_44_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_44_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_44_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_44_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_44_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_44_V_address1 = fixed_buffer_44_V_a_2_reg_60041.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_44_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_44_V_address1 = fixed_buffer_44_V_a_1_reg_59587.read();
    } else {
        fixed_buffer_44_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_44_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_44_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_44_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_44_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_44_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_44_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_44_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_44_V_d1 = fixed_temp_V_44_reg_18294.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_44_V_d1 = tmp_359_43_fu_42019_p2.read();
    } else {
        fixed_buffer_44_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_44_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_44_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_44_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_44_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_44_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_44_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_45_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_45_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_45_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_45_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_45_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_45_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_45_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_45_V_address1 = fixed_buffer_45_V_a_2_reg_60046.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_45_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_45_V_address1 = fixed_buffer_45_V_a_1_reg_59598.read();
    } else {
        fixed_buffer_45_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_45_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_45_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_45_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_45_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_45_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_45_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_45_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_45_V_d1 = fixed_temp_V_45_reg_18283.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_45_V_d1 = tmp_359_44_fu_42029_p2.read();
    } else {
        fixed_buffer_45_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_45_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_45_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_45_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_45_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_45_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_45_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_46_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_46_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_46_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_46_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_46_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_46_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_46_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_46_V_address1 = fixed_buffer_46_V_a_2_reg_60051.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_46_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_46_V_address1 = fixed_buffer_46_V_a_1_reg_59609.read();
    } else {
        fixed_buffer_46_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_46_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_46_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_46_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_46_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_46_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_46_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_46_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_46_V_d1 = fixed_temp_V_46_reg_18272.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_46_V_d1 = tmp_359_45_fu_42039_p2.read();
    } else {
        fixed_buffer_46_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_46_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_46_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_46_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_46_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_46_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_46_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_47_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_47_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_47_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_47_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_47_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_47_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_47_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_47_V_address1 = fixed_buffer_47_V_a_2_reg_60056.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_47_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_47_V_address1 = fixed_buffer_47_V_a_1_reg_59620.read();
    } else {
        fixed_buffer_47_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_47_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_47_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_47_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_47_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_47_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_47_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_47_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_47_V_d1 = fixed_temp_V_47_reg_18261.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_47_V_d1 = tmp_359_46_fu_42049_p2.read();
    } else {
        fixed_buffer_47_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_47_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_47_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_47_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_47_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_47_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_47_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_48_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_48_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_48_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_48_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_48_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_48_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_48_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_48_V_address1 = fixed_buffer_48_V_a_2_reg_60061.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_48_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_48_V_address1 = fixed_buffer_48_V_a_1_reg_59631.read();
    } else {
        fixed_buffer_48_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_48_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_48_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_48_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_48_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_48_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_48_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_48_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_48_V_d1 = fixed_temp_V_48_reg_18250.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_48_V_d1 = tmp_359_47_fu_42059_p2.read();
    } else {
        fixed_buffer_48_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_48_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_48_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_48_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_48_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_48_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_48_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_49_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_49_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_49_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_49_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_49_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_49_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_49_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_49_V_address1 = fixed_buffer_49_V_a_2_reg_60066.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_49_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_49_V_address1 = fixed_buffer_49_V_a_1_reg_59642.read();
    } else {
        fixed_buffer_49_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_49_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_49_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_49_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_49_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_49_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_49_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_49_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_49_V_d1 = fixed_temp_V_49_reg_18239.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_49_V_d1 = tmp_359_48_fu_42069_p2.read();
    } else {
        fixed_buffer_49_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_49_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_49_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_49_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_49_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_49_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_49_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_4_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_4_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_4_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_4_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_4_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_4_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_4_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_4_V_address1 = fixed_buffer_4_V_ad_2_reg_59841.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_4_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_4_V_address1 = fixed_buffer_4_V_ad_1_reg_59147.read();
    } else {
        fixed_buffer_4_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_4_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_4_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_4_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_4_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_4_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_4_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_4_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_4_V_d1 = fixed_temp_V_4_reg_18734.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_4_V_d1 = tmp_359_4_fu_41619_p2.read();
    } else {
        fixed_buffer_4_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_4_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_4_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_4_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_4_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_4_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_4_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_50_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_50_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_50_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_50_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_50_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_50_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_50_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_50_V_address1 = fixed_buffer_50_V_a_2_reg_60071.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_50_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_50_V_address1 = fixed_buffer_50_V_a_1_reg_59653.read();
    } else {
        fixed_buffer_50_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_50_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_50_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_50_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_50_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_50_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_50_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_50_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_50_V_d1 = fixed_temp_V_50_reg_18228.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_50_V_d1 = tmp_359_49_fu_42079_p2.read();
    } else {
        fixed_buffer_50_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_50_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_50_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_50_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_50_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_50_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_50_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_51_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_51_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_51_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_51_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_51_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_51_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_51_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_51_V_address1 = fixed_buffer_51_V_a_2_reg_60076.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_51_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_51_V_address1 = fixed_buffer_51_V_a_1_reg_59664.read();
    } else {
        fixed_buffer_51_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_51_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_51_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_51_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_51_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_51_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_51_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_51_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_51_V_d1 = fixed_temp_V_51_reg_18217.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_51_V_d1 = tmp_359_50_fu_42089_p2.read();
    } else {
        fixed_buffer_51_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_51_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_51_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_51_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_51_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_51_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_51_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_52_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_52_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_52_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_52_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_52_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_52_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_52_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_52_V_address1 = fixed_buffer_52_V_a_2_reg_60081.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_52_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_52_V_address1 = fixed_buffer_52_V_a_1_reg_59675.read();
    } else {
        fixed_buffer_52_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_52_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_52_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_52_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_52_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_52_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_52_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_52_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_52_V_d1 = fixed_temp_V_52_reg_18206.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_52_V_d1 = tmp_359_51_fu_42099_p2.read();
    } else {
        fixed_buffer_52_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_52_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_52_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_52_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_52_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_52_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_52_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_53_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_53_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_53_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_53_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_53_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_53_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_53_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_53_V_address1 = fixed_buffer_53_V_a_2_reg_60086.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_53_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_53_V_address1 = fixed_buffer_53_V_a_1_reg_59686.read();
    } else {
        fixed_buffer_53_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_53_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_53_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_53_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_53_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_53_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_53_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_53_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_53_V_d1 = fixed_temp_V_53_reg_18195.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_53_V_d1 = tmp_359_52_fu_42109_p2.read();
    } else {
        fixed_buffer_53_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_53_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_53_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_53_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_53_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_53_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_53_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_54_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_54_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_54_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_54_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_54_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_54_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_54_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_54_V_address1 = fixed_buffer_54_V_a_2_reg_60091.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_54_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_54_V_address1 = fixed_buffer_54_V_a_1_reg_59697.read();
    } else {
        fixed_buffer_54_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_54_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_54_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_54_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_54_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_54_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_54_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_54_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_54_V_d1 = fixed_temp_V_54_reg_18184.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_54_V_d1 = tmp_359_53_fu_42119_p2.read();
    } else {
        fixed_buffer_54_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_54_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_54_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_54_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_54_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_54_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_54_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_55_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_55_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_55_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_55_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_55_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_55_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_55_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_55_V_address1 = fixed_buffer_55_V_a_2_reg_60096.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_55_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_55_V_address1 = fixed_buffer_55_V_a_1_reg_59708.read();
    } else {
        fixed_buffer_55_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_55_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_55_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_55_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_55_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_55_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_55_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_55_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_55_V_d1 = fixed_temp_V_55_reg_18173.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_55_V_d1 = tmp_359_54_fu_42129_p2.read();
    } else {
        fixed_buffer_55_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_55_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_55_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_55_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_55_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_55_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_55_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_56_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_56_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_56_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_56_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_56_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_56_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_56_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_56_V_address1 = fixed_buffer_56_V_a_2_reg_60101.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_56_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_56_V_address1 = fixed_buffer_56_V_a_1_reg_59719.read();
    } else {
        fixed_buffer_56_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_56_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_56_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_56_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_56_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_56_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_56_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_56_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_56_V_d1 = fixed_temp_V_56_reg_18162.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_56_V_d1 = tmp_359_55_fu_42139_p2.read();
    } else {
        fixed_buffer_56_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_56_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_56_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_56_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_56_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_56_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_56_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_57_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_57_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_57_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_57_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_57_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_57_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_57_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_57_V_address1 = fixed_buffer_57_V_a_2_reg_60106.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_57_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_57_V_address1 = fixed_buffer_57_V_a_1_reg_59730.read();
    } else {
        fixed_buffer_57_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_57_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_57_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_57_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_57_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_57_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_57_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_57_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_57_V_d1 = fixed_temp_V_57_reg_18151.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_57_V_d1 = tmp_359_56_fu_42149_p2.read();
    } else {
        fixed_buffer_57_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_57_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_57_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_57_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_57_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_57_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_57_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_58_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_58_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_58_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_58_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_58_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_58_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_58_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_58_V_address1 = fixed_buffer_58_V_a_2_reg_60111.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_58_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_58_V_address1 = fixed_buffer_58_V_a_1_reg_59741.read();
    } else {
        fixed_buffer_58_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_58_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_58_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_58_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_58_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_58_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_58_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_58_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_58_V_d1 = fixed_temp_V_58_reg_18140.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_58_V_d1 = tmp_359_57_fu_42159_p2.read();
    } else {
        fixed_buffer_58_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_58_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_58_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_58_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_58_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_58_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_58_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_59_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_59_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_59_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_59_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_59_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_59_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_59_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_59_V_address1 = fixed_buffer_59_V_a_2_reg_60116.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_59_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_59_V_address1 = fixed_buffer_59_V_a_1_reg_59752.read();
    } else {
        fixed_buffer_59_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_59_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_59_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_59_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_59_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_59_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_59_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_59_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_59_V_d1 = fixed_temp_V_59_reg_18129.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_59_V_d1 = tmp_359_58_fu_42169_p2.read();
    } else {
        fixed_buffer_59_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_59_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_59_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_59_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_59_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_59_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_59_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_5_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_5_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_5_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_5_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_5_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_5_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_5_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_5_V_address1 = fixed_buffer_5_V_ad_2_reg_59846.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_5_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_5_V_address1 = fixed_buffer_5_V_ad_1_reg_59158.read();
    } else {
        fixed_buffer_5_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_5_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_5_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_5_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_5_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_5_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_5_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_5_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_5_V_d1 = fixed_temp_V_5_reg_18723.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_5_V_d1 = tmp_359_5_fu_41629_p2.read();
    } else {
        fixed_buffer_5_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_5_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_5_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_5_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_5_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_5_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_5_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_60_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_60_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_60_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_60_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_60_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_60_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_60_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_60_V_address1 = fixed_buffer_60_V_a_2_reg_60121.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_60_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_60_V_address1 = fixed_buffer_60_V_a_1_reg_59763.read();
    } else {
        fixed_buffer_60_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_60_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_60_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_60_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_60_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_60_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_60_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_60_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_60_V_d1 = fixed_temp_V_60_reg_18118.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_60_V_d1 = tmp_359_59_fu_42179_p2.read();
    } else {
        fixed_buffer_60_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_60_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_60_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_60_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_60_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_60_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_60_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_61_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_61_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_61_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_61_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_61_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_61_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_61_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_61_V_address1 = fixed_buffer_61_V_a_2_reg_60126.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_61_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_61_V_address1 = fixed_buffer_61_V_a_1_reg_59774.read();
    } else {
        fixed_buffer_61_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_61_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_61_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_61_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_61_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_61_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_61_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_61_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_61_V_d1 = fixed_temp_V_61_reg_18107.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_61_V_d1 = tmp_359_60_fu_42189_p2.read();
    } else {
        fixed_buffer_61_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_61_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_61_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_61_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_61_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_61_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_61_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_62_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_62_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_62_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_62_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_62_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_62_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_62_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_62_V_address1 = fixed_buffer_62_V_a_2_reg_60131.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_62_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_62_V_address1 = fixed_buffer_62_V_a_1_reg_59785.read();
    } else {
        fixed_buffer_62_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_62_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_62_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_62_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_62_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_62_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_62_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_62_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_62_V_d1 = fixed_temp_V_62_reg_18096.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_62_V_d1 = tmp_359_61_fu_42199_p2.read();
    } else {
        fixed_buffer_62_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_62_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_62_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_62_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_62_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_62_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_62_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_63_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_63_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_63_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_63_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_63_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_63_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_63_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_63_V_address1 = fixed_buffer_63_V_a_2_reg_60136.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_63_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_63_V_address1 = fixed_buffer_63_V_a_1_reg_59796.read();
    } else {
        fixed_buffer_63_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_63_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_63_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_63_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_63_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_63_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_63_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_63_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_63_V_d1 = fixed_temp_V_s_reg_18085.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_63_V_d1 = tmp_359_62_fu_42209_p2.read();
    } else {
        fixed_buffer_63_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_63_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_63_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_63_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_63_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_63_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_63_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_6_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_6_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_6_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_6_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_6_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_6_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_6_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_6_V_address1 = fixed_buffer_6_V_ad_2_reg_59851.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_6_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_6_V_address1 = fixed_buffer_6_V_ad_1_reg_59169.read();
    } else {
        fixed_buffer_6_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_6_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_6_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_6_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_6_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_6_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_6_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_6_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_6_V_d1 = fixed_temp_V_6_reg_18712.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_6_V_d1 = tmp_359_6_fu_41639_p2.read();
    } else {
        fixed_buffer_6_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_6_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_6_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_6_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_6_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_6_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_6_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_7_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_7_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_7_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_7_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_7_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_7_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_7_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_7_V_address1 = fixed_buffer_7_V_ad_2_reg_59856.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_7_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_7_V_address1 = fixed_buffer_7_V_ad_1_reg_59180.read();
    } else {
        fixed_buffer_7_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_7_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_7_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_7_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_7_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_7_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_7_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_7_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_7_V_d1 = fixed_temp_V_7_reg_18701.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_7_V_d1 = tmp_359_7_fu_41649_p2.read();
    } else {
        fixed_buffer_7_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_7_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_7_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_7_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_7_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_7_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_7_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_8_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_8_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_8_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_8_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_8_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_8_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_8_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_8_V_address1 = fixed_buffer_8_V_ad_2_reg_59861.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_8_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_8_V_address1 = fixed_buffer_8_V_ad_1_reg_59191.read();
    } else {
        fixed_buffer_8_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_8_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_8_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_8_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_8_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_8_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_8_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_8_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_8_V_d1 = fixed_temp_V_8_reg_18690.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_8_V_d1 = tmp_359_8_fu_41659_p2.read();
    } else {
        fixed_buffer_8_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_8_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_8_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_8_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_8_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_8_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_8_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_9_V_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_9_V_address0 =  (sc_lv<5>) (tmp_131_fu_43038_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp1_stage0.read(), ap_const_boolean_0))) {
        fixed_buffer_9_V_address0 =  (sc_lv<5>) (tmp_139_fu_42570_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read()))) {
        fixed_buffer_9_V_address0 =  (sc_lv<5>) (tmp_154_cast_fu_40612_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        fixed_buffer_9_V_address0 =  (sc_lv<5>) (tmp_113_fu_19952_p1.read());
    } else {
        fixed_buffer_9_V_address0 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_9_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_9_V_address1 = fixed_buffer_9_V_ad_2_reg_59866.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        fixed_buffer_9_V_address1 =  (sc_lv<5>) (tmp_126_fu_42232_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_9_V_address1 = fixed_buffer_9_V_ad_1_reg_59202.read();
    } else {
        fixed_buffer_9_V_address1 =  (sc_lv<5>) ("XXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_9_V_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp1_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp1_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp1_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
          esl_seteq<1,1,1>(ap_block_pp2_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read())) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter5.read())))) {
        fixed_buffer_9_V_ce0 = ap_const_logic_1;
    } else {
        fixed_buffer_9_V_ce0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_9_V_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read())))) {
        fixed_buffer_9_V_ce1 = ap_const_logic_1;
    } else {
        fixed_buffer_9_V_ce1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_9_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read())) {
        fixed_buffer_9_V_d1 = fixed_temp_V_9_reg_18679.read();
    } else if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()))) {
        fixed_buffer_9_V_d1 = tmp_359_9_fu_41669_p2.read();
    } else {
        fixed_buffer_9_V_d1 =  (sc_lv<12>) ("XXXXXXXXXXXX");
    }
}

void a0_bin_conv::thread_fixed_buffer_9_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_107_fu_19940_p2.read(), ap_const_lv1_0))) {
        fixed_buffer_9_V_we0 = ap_const_logic_1;
    } else {
        fixed_buffer_9_V_we0 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_buffer_9_V_we1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state16.read()) || 
         (esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter6.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter5_first_wrd_reg_51897.read())))) {
        fixed_buffer_9_V_we1 = ap_const_logic_1;
    } else {
        fixed_buffer_9_V_we1 = ap_const_logic_0;
    }
}

void a0_bin_conv::thread_fixed_temp_0_V_1_fu_42643_p2() {
    fixed_temp_0_V_1_fu_42643_p2 = (!fixed_buffer_0_V_q0.read().is_01() || !fixed_temp_V_reg_18778.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_0_V_q0.read()) + sc_biguint<12>(fixed_temp_V_reg_18778.read()));
}

void a0_bin_conv::thread_fixed_temp_10_V_1_fu_42703_p2() {
    fixed_temp_10_V_1_fu_42703_p2 = (!fixed_buffer_10_V_q0.read().is_01() || !fixed_temp_V_10_reg_18668.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_10_V_q0.read()) + sc_biguint<12>(fixed_temp_V_10_reg_18668.read()));
}

void a0_bin_conv::thread_fixed_temp_11_V_1_fu_42709_p2() {
    fixed_temp_11_V_1_fu_42709_p2 = (!fixed_buffer_11_V_q0.read().is_01() || !fixed_temp_V_11_reg_18657.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_11_V_q0.read()) + sc_biguint<12>(fixed_temp_V_11_reg_18657.read()));
}

void a0_bin_conv::thread_fixed_temp_12_V_1_fu_42715_p2() {
    fixed_temp_12_V_1_fu_42715_p2 = (!fixed_buffer_12_V_q0.read().is_01() || !fixed_temp_V_12_reg_18646.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_12_V_q0.read()) + sc_biguint<12>(fixed_temp_V_12_reg_18646.read()));
}

void a0_bin_conv::thread_fixed_temp_13_V_1_fu_42721_p2() {
    fixed_temp_13_V_1_fu_42721_p2 = (!fixed_buffer_13_V_q0.read().is_01() || !fixed_temp_V_13_reg_18635.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_13_V_q0.read()) + sc_biguint<12>(fixed_temp_V_13_reg_18635.read()));
}

void a0_bin_conv::thread_fixed_temp_14_V_1_fu_42727_p2() {
    fixed_temp_14_V_1_fu_42727_p2 = (!fixed_buffer_14_V_q0.read().is_01() || !fixed_temp_V_14_reg_18624.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_14_V_q0.read()) + sc_biguint<12>(fixed_temp_V_14_reg_18624.read()));
}

void a0_bin_conv::thread_fixed_temp_15_V_1_fu_42733_p2() {
    fixed_temp_15_V_1_fu_42733_p2 = (!fixed_buffer_15_V_q0.read().is_01() || !fixed_temp_V_15_reg_18613.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_15_V_q0.read()) + sc_biguint<12>(fixed_temp_V_15_reg_18613.read()));
}

void a0_bin_conv::thread_fixed_temp_16_V_1_fu_42739_p2() {
    fixed_temp_16_V_1_fu_42739_p2 = (!fixed_buffer_16_V_q0.read().is_01() || !fixed_temp_V_16_reg_18602.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_16_V_q0.read()) + sc_biguint<12>(fixed_temp_V_16_reg_18602.read()));
}

void a0_bin_conv::thread_fixed_temp_17_V_1_fu_42745_p2() {
    fixed_temp_17_V_1_fu_42745_p2 = (!fixed_buffer_17_V_q0.read().is_01() || !fixed_temp_V_17_reg_18591.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_17_V_q0.read()) + sc_biguint<12>(fixed_temp_V_17_reg_18591.read()));
}

void a0_bin_conv::thread_fixed_temp_18_V_1_fu_42751_p2() {
    fixed_temp_18_V_1_fu_42751_p2 = (!fixed_buffer_18_V_q0.read().is_01() || !fixed_temp_V_18_reg_18580.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_18_V_q0.read()) + sc_biguint<12>(fixed_temp_V_18_reg_18580.read()));
}

void a0_bin_conv::thread_fixed_temp_19_V_1_fu_42757_p2() {
    fixed_temp_19_V_1_fu_42757_p2 = (!fixed_buffer_19_V_q0.read().is_01() || !fixed_temp_V_19_reg_18569.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_19_V_q0.read()) + sc_biguint<12>(fixed_temp_V_19_reg_18569.read()));
}

void a0_bin_conv::thread_fixed_temp_1_V_1_fu_42649_p2() {
    fixed_temp_1_V_1_fu_42649_p2 = (!fixed_buffer_1_V_q0.read().is_01() || !fixed_temp_V_1_reg_18767.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_1_V_q0.read()) + sc_biguint<12>(fixed_temp_V_1_reg_18767.read()));
}

void a0_bin_conv::thread_fixed_temp_20_V_1_fu_42763_p2() {
    fixed_temp_20_V_1_fu_42763_p2 = (!fixed_buffer_20_V_q0.read().is_01() || !fixed_temp_V_20_reg_18558.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_20_V_q0.read()) + sc_biguint<12>(fixed_temp_V_20_reg_18558.read()));
}

void a0_bin_conv::thread_fixed_temp_21_V_1_fu_42769_p2() {
    fixed_temp_21_V_1_fu_42769_p2 = (!fixed_buffer_21_V_q0.read().is_01() || !fixed_temp_V_21_reg_18547.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_21_V_q0.read()) + sc_biguint<12>(fixed_temp_V_21_reg_18547.read()));
}

void a0_bin_conv::thread_fixed_temp_22_V_1_fu_42775_p2() {
    fixed_temp_22_V_1_fu_42775_p2 = (!fixed_buffer_22_V_q0.read().is_01() || !fixed_temp_V_22_reg_18536.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_22_V_q0.read()) + sc_biguint<12>(fixed_temp_V_22_reg_18536.read()));
}

void a0_bin_conv::thread_fixed_temp_23_V_1_fu_42781_p2() {
    fixed_temp_23_V_1_fu_42781_p2 = (!fixed_buffer_23_V_q0.read().is_01() || !fixed_temp_V_23_reg_18525.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_23_V_q0.read()) + sc_biguint<12>(fixed_temp_V_23_reg_18525.read()));
}

void a0_bin_conv::thread_fixed_temp_24_V_1_fu_42787_p2() {
    fixed_temp_24_V_1_fu_42787_p2 = (!fixed_buffer_24_V_q0.read().is_01() || !fixed_temp_V_24_reg_18514.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_24_V_q0.read()) + sc_biguint<12>(fixed_temp_V_24_reg_18514.read()));
}

void a0_bin_conv::thread_fixed_temp_25_V_1_fu_42793_p2() {
    fixed_temp_25_V_1_fu_42793_p2 = (!fixed_buffer_25_V_q0.read().is_01() || !fixed_temp_V_25_reg_18503.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_25_V_q0.read()) + sc_biguint<12>(fixed_temp_V_25_reg_18503.read()));
}

void a0_bin_conv::thread_fixed_temp_26_V_1_fu_42799_p2() {
    fixed_temp_26_V_1_fu_42799_p2 = (!fixed_buffer_26_V_q0.read().is_01() || !fixed_temp_V_26_reg_18492.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_26_V_q0.read()) + sc_biguint<12>(fixed_temp_V_26_reg_18492.read()));
}

void a0_bin_conv::thread_fixed_temp_27_V_1_fu_42805_p2() {
    fixed_temp_27_V_1_fu_42805_p2 = (!fixed_buffer_27_V_q0.read().is_01() || !fixed_temp_V_27_reg_18481.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_27_V_q0.read()) + sc_biguint<12>(fixed_temp_V_27_reg_18481.read()));
}

void a0_bin_conv::thread_fixed_temp_28_V_1_fu_42811_p2() {
    fixed_temp_28_V_1_fu_42811_p2 = (!fixed_buffer_28_V_q0.read().is_01() || !fixed_temp_V_28_reg_18470.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_28_V_q0.read()) + sc_biguint<12>(fixed_temp_V_28_reg_18470.read()));
}

void a0_bin_conv::thread_fixed_temp_29_V_1_fu_42817_p2() {
    fixed_temp_29_V_1_fu_42817_p2 = (!fixed_buffer_29_V_q0.read().is_01() || !fixed_temp_V_29_reg_18459.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_29_V_q0.read()) + sc_biguint<12>(fixed_temp_V_29_reg_18459.read()));
}

void a0_bin_conv::thread_fixed_temp_2_V_1_fu_42655_p2() {
    fixed_temp_2_V_1_fu_42655_p2 = (!fixed_buffer_2_V_q0.read().is_01() || !fixed_temp_V_2_reg_18756.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_2_V_q0.read()) + sc_biguint<12>(fixed_temp_V_2_reg_18756.read()));
}

void a0_bin_conv::thread_fixed_temp_30_V_1_fu_42823_p2() {
    fixed_temp_30_V_1_fu_42823_p2 = (!fixed_buffer_30_V_q0.read().is_01() || !fixed_temp_V_30_reg_18448.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_30_V_q0.read()) + sc_biguint<12>(fixed_temp_V_30_reg_18448.read()));
}

void a0_bin_conv::thread_fixed_temp_31_V_1_fu_42829_p2() {
    fixed_temp_31_V_1_fu_42829_p2 = (!fixed_buffer_31_V_q0.read().is_01() || !fixed_temp_V_31_reg_18437.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_31_V_q0.read()) + sc_biguint<12>(fixed_temp_V_31_reg_18437.read()));
}

void a0_bin_conv::thread_fixed_temp_32_V_1_fu_42835_p2() {
    fixed_temp_32_V_1_fu_42835_p2 = (!fixed_buffer_32_V_q0.read().is_01() || !fixed_temp_V_32_reg_18426.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_32_V_q0.read()) + sc_biguint<12>(fixed_temp_V_32_reg_18426.read()));
}

void a0_bin_conv::thread_fixed_temp_33_V_1_fu_42841_p2() {
    fixed_temp_33_V_1_fu_42841_p2 = (!fixed_buffer_33_V_q0.read().is_01() || !fixed_temp_V_33_reg_18415.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_33_V_q0.read()) + sc_biguint<12>(fixed_temp_V_33_reg_18415.read()));
}

void a0_bin_conv::thread_fixed_temp_34_V_1_fu_42847_p2() {
    fixed_temp_34_V_1_fu_42847_p2 = (!fixed_buffer_34_V_q0.read().is_01() || !fixed_temp_V_34_reg_18404.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_34_V_q0.read()) + sc_biguint<12>(fixed_temp_V_34_reg_18404.read()));
}

void a0_bin_conv::thread_fixed_temp_35_V_1_fu_42853_p2() {
    fixed_temp_35_V_1_fu_42853_p2 = (!fixed_buffer_35_V_q0.read().is_01() || !fixed_temp_V_35_reg_18393.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_35_V_q0.read()) + sc_biguint<12>(fixed_temp_V_35_reg_18393.read()));
}

void a0_bin_conv::thread_fixed_temp_36_V_1_fu_42859_p2() {
    fixed_temp_36_V_1_fu_42859_p2 = (!fixed_buffer_36_V_q0.read().is_01() || !fixed_temp_V_36_reg_18382.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_36_V_q0.read()) + sc_biguint<12>(fixed_temp_V_36_reg_18382.read()));
}

void a0_bin_conv::thread_fixed_temp_37_V_1_fu_42865_p2() {
    fixed_temp_37_V_1_fu_42865_p2 = (!fixed_buffer_37_V_q0.read().is_01() || !fixed_temp_V_37_reg_18371.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_37_V_q0.read()) + sc_biguint<12>(fixed_temp_V_37_reg_18371.read()));
}

void a0_bin_conv::thread_fixed_temp_38_V_1_fu_42871_p2() {
    fixed_temp_38_V_1_fu_42871_p2 = (!fixed_buffer_38_V_q0.read().is_01() || !fixed_temp_V_38_reg_18360.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_38_V_q0.read()) + sc_biguint<12>(fixed_temp_V_38_reg_18360.read()));
}

void a0_bin_conv::thread_fixed_temp_39_V_1_fu_42877_p2() {
    fixed_temp_39_V_1_fu_42877_p2 = (!fixed_buffer_39_V_q0.read().is_01() || !fixed_temp_V_39_reg_18349.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_39_V_q0.read()) + sc_biguint<12>(fixed_temp_V_39_reg_18349.read()));
}

void a0_bin_conv::thread_fixed_temp_3_V_1_fu_42661_p2() {
    fixed_temp_3_V_1_fu_42661_p2 = (!fixed_buffer_3_V_q0.read().is_01() || !fixed_temp_V_3_reg_18745.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_3_V_q0.read()) + sc_biguint<12>(fixed_temp_V_3_reg_18745.read()));
}

void a0_bin_conv::thread_fixed_temp_40_V_1_fu_42883_p2() {
    fixed_temp_40_V_1_fu_42883_p2 = (!fixed_buffer_40_V_q0.read().is_01() || !fixed_temp_V_40_reg_18338.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_40_V_q0.read()) + sc_biguint<12>(fixed_temp_V_40_reg_18338.read()));
}

void a0_bin_conv::thread_fixed_temp_41_V_1_fu_42889_p2() {
    fixed_temp_41_V_1_fu_42889_p2 = (!fixed_buffer_41_V_q0.read().is_01() || !fixed_temp_V_41_reg_18327.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_41_V_q0.read()) + sc_biguint<12>(fixed_temp_V_41_reg_18327.read()));
}

void a0_bin_conv::thread_fixed_temp_42_V_1_fu_42895_p2() {
    fixed_temp_42_V_1_fu_42895_p2 = (!fixed_buffer_42_V_q0.read().is_01() || !fixed_temp_V_42_reg_18316.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_42_V_q0.read()) + sc_biguint<12>(fixed_temp_V_42_reg_18316.read()));
}

void a0_bin_conv::thread_fixed_temp_43_V_1_fu_42901_p2() {
    fixed_temp_43_V_1_fu_42901_p2 = (!fixed_buffer_43_V_q0.read().is_01() || !fixed_temp_V_43_reg_18305.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_43_V_q0.read()) + sc_biguint<12>(fixed_temp_V_43_reg_18305.read()));
}

void a0_bin_conv::thread_fixed_temp_44_V_1_fu_42907_p2() {
    fixed_temp_44_V_1_fu_42907_p2 = (!fixed_buffer_44_V_q0.read().is_01() || !fixed_temp_V_44_reg_18294.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_44_V_q0.read()) + sc_biguint<12>(fixed_temp_V_44_reg_18294.read()));
}

void a0_bin_conv::thread_fixed_temp_45_V_1_fu_42913_p2() {
    fixed_temp_45_V_1_fu_42913_p2 = (!fixed_buffer_45_V_q0.read().is_01() || !fixed_temp_V_45_reg_18283.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_45_V_q0.read()) + sc_biguint<12>(fixed_temp_V_45_reg_18283.read()));
}

void a0_bin_conv::thread_fixed_temp_46_V_1_fu_42919_p2() {
    fixed_temp_46_V_1_fu_42919_p2 = (!fixed_buffer_46_V_q0.read().is_01() || !fixed_temp_V_46_reg_18272.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_46_V_q0.read()) + sc_biguint<12>(fixed_temp_V_46_reg_18272.read()));
}

void a0_bin_conv::thread_fixed_temp_47_V_1_fu_42925_p2() {
    fixed_temp_47_V_1_fu_42925_p2 = (!fixed_buffer_47_V_q0.read().is_01() || !fixed_temp_V_47_reg_18261.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_47_V_q0.read()) + sc_biguint<12>(fixed_temp_V_47_reg_18261.read()));
}

void a0_bin_conv::thread_fixed_temp_48_V_1_fu_42931_p2() {
    fixed_temp_48_V_1_fu_42931_p2 = (!fixed_buffer_48_V_q0.read().is_01() || !fixed_temp_V_48_reg_18250.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_48_V_q0.read()) + sc_biguint<12>(fixed_temp_V_48_reg_18250.read()));
}

void a0_bin_conv::thread_fixed_temp_49_V_1_fu_42937_p2() {
    fixed_temp_49_V_1_fu_42937_p2 = (!fixed_buffer_49_V_q0.read().is_01() || !fixed_temp_V_49_reg_18239.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_49_V_q0.read()) + sc_biguint<12>(fixed_temp_V_49_reg_18239.read()));
}

void a0_bin_conv::thread_fixed_temp_4_V_1_fu_42667_p2() {
    fixed_temp_4_V_1_fu_42667_p2 = (!fixed_buffer_4_V_q0.read().is_01() || !fixed_temp_V_4_reg_18734.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_4_V_q0.read()) + sc_biguint<12>(fixed_temp_V_4_reg_18734.read()));
}

void a0_bin_conv::thread_fixed_temp_50_V_1_fu_42943_p2() {
    fixed_temp_50_V_1_fu_42943_p2 = (!fixed_buffer_50_V_q0.read().is_01() || !fixed_temp_V_50_reg_18228.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_50_V_q0.read()) + sc_biguint<12>(fixed_temp_V_50_reg_18228.read()));
}

void a0_bin_conv::thread_fixed_temp_51_V_1_fu_42949_p2() {
    fixed_temp_51_V_1_fu_42949_p2 = (!fixed_buffer_51_V_q0.read().is_01() || !fixed_temp_V_51_reg_18217.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_51_V_q0.read()) + sc_biguint<12>(fixed_temp_V_51_reg_18217.read()));
}

void a0_bin_conv::thread_fixed_temp_52_V_1_fu_42955_p2() {
    fixed_temp_52_V_1_fu_42955_p2 = (!fixed_buffer_52_V_q0.read().is_01() || !fixed_temp_V_52_reg_18206.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_52_V_q0.read()) + sc_biguint<12>(fixed_temp_V_52_reg_18206.read()));
}

void a0_bin_conv::thread_fixed_temp_53_V_1_fu_42961_p2() {
    fixed_temp_53_V_1_fu_42961_p2 = (!fixed_buffer_53_V_q0.read().is_01() || !fixed_temp_V_53_reg_18195.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_53_V_q0.read()) + sc_biguint<12>(fixed_temp_V_53_reg_18195.read()));
}

void a0_bin_conv::thread_fixed_temp_54_V_1_fu_42967_p2() {
    fixed_temp_54_V_1_fu_42967_p2 = (!fixed_buffer_54_V_q0.read().is_01() || !fixed_temp_V_54_reg_18184.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_54_V_q0.read()) + sc_biguint<12>(fixed_temp_V_54_reg_18184.read()));
}

void a0_bin_conv::thread_fixed_temp_55_V_1_fu_42973_p2() {
    fixed_temp_55_V_1_fu_42973_p2 = (!fixed_buffer_55_V_q0.read().is_01() || !fixed_temp_V_55_reg_18173.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_55_V_q0.read()) + sc_biguint<12>(fixed_temp_V_55_reg_18173.read()));
}

void a0_bin_conv::thread_fixed_temp_56_V_1_fu_42979_p2() {
    fixed_temp_56_V_1_fu_42979_p2 = (!fixed_buffer_56_V_q0.read().is_01() || !fixed_temp_V_56_reg_18162.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_56_V_q0.read()) + sc_biguint<12>(fixed_temp_V_56_reg_18162.read()));
}

void a0_bin_conv::thread_fixed_temp_57_V_1_fu_42985_p2() {
    fixed_temp_57_V_1_fu_42985_p2 = (!fixed_buffer_57_V_q0.read().is_01() || !fixed_temp_V_57_reg_18151.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_57_V_q0.read()) + sc_biguint<12>(fixed_temp_V_57_reg_18151.read()));
}

void a0_bin_conv::thread_fixed_temp_58_V_1_fu_42991_p2() {
    fixed_temp_58_V_1_fu_42991_p2 = (!fixed_buffer_58_V_q0.read().is_01() || !fixed_temp_V_58_reg_18140.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_58_V_q0.read()) + sc_biguint<12>(fixed_temp_V_58_reg_18140.read()));
}

void a0_bin_conv::thread_fixed_temp_59_V_1_fu_42997_p2() {
    fixed_temp_59_V_1_fu_42997_p2 = (!fixed_buffer_59_V_q0.read().is_01() || !fixed_temp_V_59_reg_18129.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_59_V_q0.read()) + sc_biguint<12>(fixed_temp_V_59_reg_18129.read()));
}

void a0_bin_conv::thread_fixed_temp_5_V_1_fu_42673_p2() {
    fixed_temp_5_V_1_fu_42673_p2 = (!fixed_buffer_5_V_q0.read().is_01() || !fixed_temp_V_5_reg_18723.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_5_V_q0.read()) + sc_biguint<12>(fixed_temp_V_5_reg_18723.read()));
}

void a0_bin_conv::thread_fixed_temp_60_V_1_fu_43003_p2() {
    fixed_temp_60_V_1_fu_43003_p2 = (!fixed_buffer_60_V_q0.read().is_01() || !fixed_temp_V_60_reg_18118.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_60_V_q0.read()) + sc_biguint<12>(fixed_temp_V_60_reg_18118.read()));
}

void a0_bin_conv::thread_fixed_temp_61_V_1_fu_43009_p2() {
    fixed_temp_61_V_1_fu_43009_p2 = (!fixed_buffer_61_V_q0.read().is_01() || !fixed_temp_V_61_reg_18107.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_61_V_q0.read()) + sc_biguint<12>(fixed_temp_V_61_reg_18107.read()));
}

void a0_bin_conv::thread_fixed_temp_62_V_1_fu_43015_p2() {
    fixed_temp_62_V_1_fu_43015_p2 = (!fixed_buffer_62_V_q0.read().is_01() || !fixed_temp_V_62_reg_18096.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_62_V_q0.read()) + sc_biguint<12>(fixed_temp_V_62_reg_18096.read()));
}

void a0_bin_conv::thread_fixed_temp_63_V_1_fu_43021_p2() {
    fixed_temp_63_V_1_fu_43021_p2 = (!fixed_buffer_63_V_q0.read().is_01() || !fixed_temp_V_s_reg_18085.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_63_V_q0.read()) + sc_biguint<12>(fixed_temp_V_s_reg_18085.read()));
}

void a0_bin_conv::thread_fixed_temp_6_V_1_fu_42679_p2() {
    fixed_temp_6_V_1_fu_42679_p2 = (!fixed_buffer_6_V_q0.read().is_01() || !fixed_temp_V_6_reg_18712.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_6_V_q0.read()) + sc_biguint<12>(fixed_temp_V_6_reg_18712.read()));
}

void a0_bin_conv::thread_fixed_temp_7_V_1_fu_42685_p2() {
    fixed_temp_7_V_1_fu_42685_p2 = (!fixed_buffer_7_V_q0.read().is_01() || !fixed_temp_V_7_reg_18701.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_7_V_q0.read()) + sc_biguint<12>(fixed_temp_V_7_reg_18701.read()));
}

void a0_bin_conv::thread_fixed_temp_8_V_1_fu_42691_p2() {
    fixed_temp_8_V_1_fu_42691_p2 = (!fixed_buffer_8_V_q0.read().is_01() || !fixed_temp_V_8_reg_18690.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_8_V_q0.read()) + sc_biguint<12>(fixed_temp_V_8_reg_18690.read()));
}

void a0_bin_conv::thread_fixed_temp_9_V_1_fu_42697_p2() {
    fixed_temp_9_V_1_fu_42697_p2 = (!fixed_buffer_9_V_q0.read().is_01() || !fixed_temp_V_9_reg_18679.read().is_01())? sc_lv<12>(): (sc_biguint<12>(fixed_buffer_9_V_q0.read()) + sc_biguint<12>(fixed_temp_V_9_reg_18679.read()));
}

void a0_bin_conv::thread_grp_fu_19490_p1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        grp_fu_19490_p1 = log_slice_V_reg_45699.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        grp_fu_19490_p1 = log_slice_V_fu_19615_p1.read();
    } else {
        grp_fu_19490_p1 =  (sc_lv<3>) ("XXX");
    }
}

void a0_bin_conv::thread_grp_fu_19490_p2() {
    grp_fu_19490_p2 = (!ap_const_lv3_4.is_01() || !grp_fu_19490_p1.read().is_01())? sc_lv<3>(): (sc_bigint<3>(ap_const_lv3_4) - sc_biguint<3>(grp_fu_19490_p1.read()));
}

void a0_bin_conv::thread_i0_V_1_10_fu_44939_p2() {
    i0_V_1_10_fu_44939_p2 = (!tmp_307_10_reg_60251.read().is_01() || !tmp_1518_fu_44929_p4.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_10_reg_60251.read()) + sc_biguint<5>(tmp_1518_fu_44929_p4.read()));
}

void a0_bin_conv::thread_i0_V_1_11_fu_45006_p2() {
    i0_V_1_11_fu_45006_p2 = (!tmp_307_11_reg_60256.read().is_01() || !tmp_1526_fu_44998_p3.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_11_reg_60256.read()) + sc_biguint<5>(tmp_1526_fu_44998_p3.read()));
}

void a0_bin_conv::thread_i0_V_1_1_fu_44714_p2() {
    i0_V_1_1_fu_44714_p2 = (!tmp_307_1_reg_60236.read().is_01() || !tmp_1493_fu_44702_p5.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_1_reg_60236.read()) + sc_biguint<5>(tmp_1493_fu_44702_p5.read()));
}

void a0_bin_conv::thread_i0_V_1_2_fu_44789_p2() {
    i0_V_1_2_fu_44789_p2 = (!tmp_307_2_reg_60241.read().is_01() || !tmp_1501_fu_44779_p4.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_2_reg_60241.read()) + sc_biguint<5>(tmp_1501_fu_44779_p4.read()));
}

void a0_bin_conv::thread_i0_V_1_3_fu_44864_p2() {
    i0_V_1_3_fu_44864_p2 = (!tmp_307_3_reg_60246.read().is_01() || !tmp_1510_fu_44852_p5.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_3_reg_60246.read()) + sc_biguint<5>(tmp_1510_fu_44852_p5.read()));
}

void a0_bin_conv::thread_i0_V_1_4_fu_44274_p2() {
    i0_V_1_4_fu_44274_p2 = (!tmp_307_4_reg_60201.read().is_01() || !tmp_1433_fu_44264_p4.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_4_reg_60201.read()) + sc_biguint<5>(tmp_1433_fu_44264_p4.read()));
}

void a0_bin_conv::thread_i0_V_1_5_fu_44324_p2() {
    i0_V_1_5_fu_44324_p2 = (!tmp_307_5_reg_60206.read().is_01() || !tmp_1442_fu_44314_p5.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_5_reg_60206.read()) + sc_biguint<5>(tmp_1442_fu_44314_p5.read()));
}

void a0_bin_conv::thread_i0_V_1_6_fu_44399_p2() {
    i0_V_1_6_fu_44399_p2 = (!tmp_307_6_reg_60211.read().is_01() || !tmp_1450_fu_44389_p4.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_6_reg_60211.read()) + sc_biguint<5>(tmp_1450_fu_44389_p4.read()));
}

void a0_bin_conv::thread_i0_V_1_7_fu_44466_p2() {
    i0_V_1_7_fu_44466_p2 = (!tmp_307_7_reg_60216.read().is_01() || !tmp_1458_fu_44458_p3.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_7_reg_60216.read()) + sc_biguint<5>(tmp_1458_fu_44458_p3.read()));
}

void a0_bin_conv::thread_i0_V_1_8_fu_44539_p2() {
    i0_V_1_8_fu_44539_p2 = (!tmp_307_8_reg_60221.read().is_01() || !tmp_1466_fu_44529_p4.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_8_reg_60221.read()) + sc_biguint<5>(tmp_1466_fu_44529_p4.read()));
}

void a0_bin_conv::thread_i0_V_1_9_fu_44589_p2() {
    i0_V_1_9_fu_44589_p2 = (!tmp_307_9_reg_60226.read().is_01() || !tmp_1475_fu_44579_p5.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_9_reg_60226.read()) + sc_biguint<5>(tmp_1475_fu_44579_p5.read()));
}

void a0_bin_conv::thread_i0_V_1_s_fu_44641_p2() {
    i0_V_1_s_fu_44641_p2 = (!tmp_307_s_reg_60231.read().is_01() || !tmp_1484_fu_44629_p6.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_307_s_reg_60231.read()) + sc_biguint<5>(tmp_1484_fu_44629_p6.read()));
}

void a0_bin_conv::thread_i1_V_10_fu_44719_p2() {
    i1_V_10_fu_44719_p2 = (!i0_V_1_1_fu_44714_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_1_fu_44714_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_11_fu_44794_p2() {
    i1_V_11_fu_44794_p2 = (!i0_V_1_2_fu_44789_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_2_fu_44789_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_12_fu_44869_p2() {
    i1_V_12_fu_44869_p2 = (!i0_V_1_3_fu_44864_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_3_fu_44864_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_13_fu_44944_p2() {
    i1_V_13_fu_44944_p2 = (!i0_V_1_10_fu_44939_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_10_fu_44939_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_14_fu_45011_p2() {
    i1_V_14_fu_45011_p2 = (!i0_V_1_11_fu_45006_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_11_fu_45006_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_1_fu_44076_p2() {
    i1_V_1_fu_44076_p2 = (!tmp_1409_fu_44068_p3.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_1409_fu_44068_p3.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_2_fu_44144_p2() {
    i1_V_2_fu_44144_p2 = (!tmp_1417_fu_44134_p4.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_1417_fu_44134_p4.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_3_fu_44206_p2() {
    i1_V_3_fu_44206_p2 = (!tmp_1425_fu_44198_p3.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(tmp_1425_fu_44198_p3.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_4_fu_44279_p2() {
    i1_V_4_fu_44279_p2 = (!i0_V_1_4_fu_44274_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_4_fu_44274_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_5_fu_44329_p2() {
    i1_V_5_fu_44329_p2 = (!i0_V_1_5_fu_44324_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_5_fu_44324_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_6_fu_44404_p2() {
    i1_V_6_fu_44404_p2 = (!i0_V_1_6_fu_44399_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_6_fu_44399_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_7_fu_44471_p2() {
    i1_V_7_fu_44471_p2 = (!i0_V_1_7_fu_44466_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_7_fu_44466_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_8_fu_44544_p2() {
    i1_V_8_fu_44544_p2 = (!i0_V_1_8_fu_44539_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_8_fu_44539_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_9_fu_44594_p2() {
    i1_V_9_fu_44594_p2 = (!i0_V_1_9_fu_44589_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_9_fu_44589_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i1_V_s_fu_44646_p2() {
    i1_V_s_fu_44646_p2 = (!i0_V_1_s_fu_44641_p2.read().is_01() || !pool_width_V_reg_60154.read().is_01())? sc_lv<5>(): (sc_biguint<5>(i0_V_1_s_fu_44641_p2.read()) + sc_biguint<5>(pool_width_V_reg_60154.read()));
}

void a0_bin_conv::thread_i_V_5_cast_fu_20830_p1() {
    i_V_5_cast_fu_20830_p1 = esl_zext<6,5>(words_per_image_V_reg_45719.read());
}

void a0_bin_conv::thread_i_V_5_fu_42638_p2() {
    i_V_5_fu_42638_p2 = (!i_V_5_cast_reg_51882.read().is_01() || !p_3_reg_18789.read().is_01())? sc_lv<6>(): (sc_biguint<6>(i_V_5_cast_reg_51882.read()) + sc_biguint<6>(p_3_reg_18789.read()));
}

void a0_bin_conv::thread_i_V_fu_19946_p2() {
    i_V_fu_19946_p2 = (!p_7_reg_6154.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(p_7_reg_6154.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void a0_bin_conv::thread_images_per_phase_fu_19674_p2() {
    images_per_phase_fu_19674_p2 = (!tmp_114_cast_fu_19670_p1.read().is_01())? sc_lv<12>(): ap_const_lv12_800 >> (unsigned short)tmp_114_cast_fu_19670_p1.read().to_uint();
}

void a0_bin_conv::thread_index_assign_16_10_fu_45391_p1() {
    index_assign_16_10_fu_45391_p1 = esl_zext<32,6>(d0_V_10_fu_45385_p2.read());
}

void a0_bin_conv::thread_index_assign_16_11_fu_45414_p1() {
    index_assign_16_11_fu_45414_p1 = esl_zext<32,6>(d0_V_11_fu_45408_p2.read());
}

void a0_bin_conv::thread_index_assign_16_12_fu_45437_p1() {
    index_assign_16_12_fu_45437_p1 = esl_zext<32,6>(d0_V_12_fu_45431_p2.read());
}

void a0_bin_conv::thread_index_assign_16_13_fu_45460_p1() {
    index_assign_16_13_fu_45460_p1 = esl_zext<32,6>(d0_V_13_fu_45454_p2.read());
}

void a0_bin_conv::thread_index_assign_16_14_fu_45483_p1() {
    index_assign_16_14_fu_45483_p1 = esl_zext<32,6>(d0_V_14_fu_45477_p2.read());
}

void a0_bin_conv::thread_index_assign_16_1_fu_45161_p1() {
    index_assign_16_1_fu_45161_p1 = esl_zext<32,6>(d0_V_s_fu_45155_p2.read());
}

void a0_bin_conv::thread_index_assign_16_2_fu_45184_p1() {
    index_assign_16_2_fu_45184_p1 = esl_zext<32,6>(d0_V_1_fu_45178_p2.read());
}

void a0_bin_conv::thread_index_assign_16_3_fu_45207_p1() {
    index_assign_16_3_fu_45207_p1 = esl_zext<32,6>(d0_V_2_fu_45201_p2.read());
}

void a0_bin_conv::thread_index_assign_16_4_fu_45230_p1() {
    index_assign_16_4_fu_45230_p1 = esl_zext<32,6>(d0_V_3_fu_45224_p2.read());
}

void a0_bin_conv::thread_index_assign_16_5_fu_45253_p1() {
    index_assign_16_5_fu_45253_p1 = esl_zext<32,6>(d0_V_4_fu_45247_p2.read());
}

void a0_bin_conv::thread_index_assign_16_6_fu_45276_p1() {
    index_assign_16_6_fu_45276_p1 = esl_zext<32,6>(d0_V_5_fu_45270_p2.read());
}

void a0_bin_conv::thread_index_assign_16_7_fu_45299_p1() {
    index_assign_16_7_fu_45299_p1 = esl_zext<32,6>(d0_V_6_fu_45293_p2.read());
}

void a0_bin_conv::thread_index_assign_16_8_fu_45322_p1() {
    index_assign_16_8_fu_45322_p1 = esl_zext<32,6>(d0_V_7_fu_45316_p2.read());
}

void a0_bin_conv::thread_index_assign_16_9_fu_45345_p1() {
    index_assign_16_9_fu_45345_p1 = esl_zext<32,6>(d0_V_8_fu_45339_p2.read());
}

void a0_bin_conv::thread_index_assign_16_s_fu_45368_p1() {
    index_assign_16_s_fu_45368_p1 = esl_zext<32,6>(d0_V_9_fu_45362_p2.read());
}

void a0_bin_conv::thread_index_assign_17_10_fu_44724_p1() {
    index_assign_17_10_fu_44724_p1 = esl_zext<32,5>(i0_V_1_1_fu_44714_p2.read());
}

void a0_bin_conv::thread_index_assign_17_11_fu_44799_p1() {
    index_assign_17_11_fu_44799_p1 = esl_zext<32,5>(i0_V_1_2_fu_44789_p2.read());
}

void a0_bin_conv::thread_index_assign_17_12_fu_44874_p1() {
    index_assign_17_12_fu_44874_p1 = esl_zext<32,5>(i0_V_1_3_fu_44864_p2.read());
}

void a0_bin_conv::thread_index_assign_17_13_fu_44949_p1() {
    index_assign_17_13_fu_44949_p1 = esl_zext<32,5>(i0_V_1_10_fu_44939_p2.read());
}

void a0_bin_conv::thread_index_assign_17_14_fu_45016_p1() {
    index_assign_17_14_fu_45016_p1 = esl_zext<32,5>(i0_V_1_11_fu_45006_p2.read());
}

void a0_bin_conv::thread_index_assign_17_1_fu_44081_p1() {
    index_assign_17_1_fu_44081_p1 = esl_zext<32,5>(tmp_1409_fu_44068_p3.read());
}

void a0_bin_conv::thread_index_assign_17_2_fu_44149_p1() {
    index_assign_17_2_fu_44149_p1 = esl_zext<32,5>(tmp_1417_fu_44134_p4.read());
}

void a0_bin_conv::thread_index_assign_17_3_fu_44211_p1() {
    index_assign_17_3_fu_44211_p1 = esl_zext<32,5>(tmp_1425_fu_44198_p3.read());
}

void a0_bin_conv::thread_index_assign_17_4_fu_44284_p1() {
    index_assign_17_4_fu_44284_p1 = esl_zext<32,5>(i0_V_1_4_fu_44274_p2.read());
}

void a0_bin_conv::thread_index_assign_17_5_fu_44334_p1() {
    index_assign_17_5_fu_44334_p1 = esl_zext<32,5>(i0_V_1_5_fu_44324_p2.read());
}

void a0_bin_conv::thread_index_assign_17_6_fu_44409_p1() {
    index_assign_17_6_fu_44409_p1 = esl_zext<32,5>(i0_V_1_6_fu_44399_p2.read());
}

void a0_bin_conv::thread_index_assign_17_7_fu_44476_p1() {
    index_assign_17_7_fu_44476_p1 = esl_zext<32,5>(i0_V_1_7_fu_44466_p2.read());
}

void a0_bin_conv::thread_index_assign_17_8_fu_44549_p1() {
    index_assign_17_8_fu_44549_p1 = esl_zext<32,5>(i0_V_1_8_fu_44539_p2.read());
}

void a0_bin_conv::thread_index_assign_17_9_fu_44599_p1() {
    index_assign_17_9_fu_44599_p1 = esl_zext<32,5>(i0_V_1_9_fu_44589_p2.read());
}

void a0_bin_conv::thread_index_assign_17_s_fu_44651_p1() {
    index_assign_17_s_fu_44651_p1 = esl_zext<32,5>(i0_V_1_s_fu_44641_p2.read());
}

void a0_bin_conv::thread_index_assign_18_10_fu_44736_p1() {
    index_assign_18_10_fu_44736_p1 = esl_zext<32,5>(i1_V_10_fu_44719_p2.read());
}

void a0_bin_conv::thread_index_assign_18_11_fu_44811_p1() {
    index_assign_18_11_fu_44811_p1 = esl_zext<32,5>(i1_V_11_fu_44794_p2.read());
}

void a0_bin_conv::thread_index_assign_18_12_fu_44886_p1() {
    index_assign_18_12_fu_44886_p1 = esl_zext<32,5>(i1_V_12_fu_44869_p2.read());
}

void a0_bin_conv::thread_index_assign_18_13_fu_44961_p1() {
    index_assign_18_13_fu_44961_p1 = esl_zext<32,5>(i1_V_13_fu_44944_p2.read());
}

void a0_bin_conv::thread_index_assign_18_14_fu_45028_p1() {
    index_assign_18_14_fu_45028_p1 = esl_zext<32,5>(i1_V_14_fu_45011_p2.read());
}

void a0_bin_conv::thread_index_assign_18_1_fu_44093_p1() {
    index_assign_18_1_fu_44093_p1 = esl_zext<32,5>(i1_V_1_fu_44076_p2.read());
}

void a0_bin_conv::thread_index_assign_18_2_fu_44161_p1() {
    index_assign_18_2_fu_44161_p1 = esl_zext<32,5>(i1_V_2_fu_44144_p2.read());
}

void a0_bin_conv::thread_index_assign_18_3_fu_44223_p1() {
    index_assign_18_3_fu_44223_p1 = esl_zext<32,5>(i1_V_3_fu_44206_p2.read());
}

void a0_bin_conv::thread_index_assign_18_4_fu_44296_p1() {
    index_assign_18_4_fu_44296_p1 = esl_zext<32,5>(i1_V_4_fu_44279_p2.read());
}

void a0_bin_conv::thread_index_assign_18_5_fu_44346_p1() {
    index_assign_18_5_fu_44346_p1 = esl_zext<32,5>(i1_V_5_fu_44329_p2.read());
}

void a0_bin_conv::thread_index_assign_18_6_fu_44421_p1() {
    index_assign_18_6_fu_44421_p1 = esl_zext<32,5>(i1_V_6_fu_44404_p2.read());
}

void a0_bin_conv::thread_index_assign_18_7_fu_44488_p1() {
    index_assign_18_7_fu_44488_p1 = esl_zext<32,5>(i1_V_7_fu_44471_p2.read());
}

void a0_bin_conv::thread_index_assign_18_8_fu_44561_p1() {
    index_assign_18_8_fu_44561_p1 = esl_zext<32,5>(i1_V_8_fu_44544_p2.read());
}

void a0_bin_conv::thread_index_assign_18_9_fu_44611_p1() {
    index_assign_18_9_fu_44611_p1 = esl_zext<32,5>(i1_V_9_fu_44594_p2.read());
}

void a0_bin_conv::thread_index_assign_18_s_fu_44663_p1() {
    index_assign_18_s_fu_44663_p1 = esl_zext<32,5>(i1_V_s_fu_44646_p2.read());
}

void a0_bin_conv::thread_index_assign_2_fu_44032_p1() {
    index_assign_2_fu_44032_p1 = esl_zext<32,5>(pool_width_V_reg_60154.read());
}

void a0_bin_conv::thread_index_assign_s_fu_45138_p1() {
    index_assign_s_fu_45138_p1 = esl_zext<32,6>(r_V_18_fu_45059_p3.read());
}

void a0_bin_conv::thread_last_wrd_fu_20854_p2() {
    last_wrd_fu_20854_p2 = (!tmp_149_cast_fu_20850_p1.read().is_01() || !tmp_123_cast_reg_50195.read().is_01())? sc_lv<1>(): sc_lv<1>(tmp_149_cast_fu_20850_p1.read() == tmp_123_cast_reg_50195.read());
}

void a0_bin_conv::thread_last_wrd_not1_fu_34915_p2() {
    last_wrd_not1_fu_34915_p2 = (ap_reg_pp0_iter2_last_wrd_reg_51948.read() ^ ap_const_lv1_1);
}

void a0_bin_conv::thread_last_wrd_not_fu_32619_p2() {
    last_wrd_not_fu_32619_p2 = (ap_reg_pp0_iter2_last_wrd_reg_51948.read() ^ ap_const_lv1_1);
}

void a0_bin_conv::thread_lb_1_fu_19740_p2() {
    lb_1_fu_19740_p2 = (tmp_1225_fu_19722_p1.read() ^ ap_const_lv1_1);
}

void a0_bin_conv::thread_lb_2_fu_19768_p2() {
    lb_2_fu_19768_p2 = (tmp_1227_fu_19760_p3.read() ^ ap_const_lv1_1);
}

void a0_bin_conv::thread_lb_3_fu_19790_p2() {
    lb_3_fu_19790_p2 = (!tmp_1226_fu_19726_p1.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1226_fu_19726_p1.read() == ap_const_lv2_0);
}

void a0_bin_conv::thread_lb_4_fu_19832_p2() {
    lb_4_fu_19832_p2 = (!r_V_62_4_fu_19824_p3.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): sc_lv<1>(r_V_62_4_fu_19824_p3.read() == ap_const_lv3_0);
}

void a0_bin_conv::thread_lb_5_fu_19868_p2() {
    lb_5_fu_19868_p2 = (!r_V_62_5_fu_19854_p4.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): sc_lv<1>(r_V_62_5_fu_19854_p4.read() == ap_const_lv3_0);
}

void a0_bin_conv::thread_lb_6_fu_19896_p2() {
    lb_6_fu_19896_p2 = (!tmp_1229_fu_19886_p4.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1229_fu_19886_p4.read() == ap_const_lv2_0);
}

void a0_bin_conv::thread_lb_7_fu_19922_p2() {
    lb_7_fu_19922_p2 = (!tmp_fu_19718_p1.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_fu_19718_p1.read() == ap_const_lv3_0);
}

void a0_bin_conv::thread_lhs_V_12_3_cast_fu_19796_p1() {
    lhs_V_12_3_cast_fu_19796_p1 = esl_zext<3,2>(tmp_1226_fu_19726_p1.read());
}

void a0_bin_conv::thread_lhs_V_3_cast_fu_42553_p1() {
    lhs_V_3_cast_fu_42553_p1 = esl_zext<6,5>(p_1_reg_18073.read());
}

void a0_bin_conv::thread_lhs_V_fu_20821_p1() {
    lhs_V_fu_20821_p1 = esl_zext<15,10>(p_8_reg_6165.read());
}

void a0_bin_conv::thread_line_buffer_0_0_1_9_fu_37795_p3() {
    line_buffer_0_0_1_9_fu_37795_p3 = (!rb_0_reg_45771.read()[0].is_01())? sc_lv<2>(): ((rb_0_reg_45771.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_1_1_1_reg_55434.read());
}

void a0_bin_conv::thread_line_buffer_0_1_0_0_2_phi_fu_12312_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_0_2_phi_fu_12312_p18 = p_0133_0_i_0_1_reg_57544.read();
    } else {
        line_buffer_0_1_0_0_2_phi_fu_12312_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_0_2_reg_12308.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_1_2_phi_fu_12280_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_1_2_phi_fu_12280_p18 = line_buffer_0_1_0_1_3_reg_7334.read();
    } else {
        line_buffer_0_1_0_1_2_phi_fu_12280_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_1_2_reg_12277.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_2_2_phi_fu_12249_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_2_2_phi_fu_12249_p18 = p_0168_0_i_0_1_1_reg_7358.read();
    } else {
        line_buffer_0_1_0_2_2_phi_fu_12249_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_2_2_reg_12246.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_3_2_phi_fu_12218_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_3_2_phi_fu_12218_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_3_3_reg_11924.read();
    } else {
        line_buffer_0_1_0_3_2_phi_fu_12218_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_3_2_reg_12215.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_4_2_phi_fu_12187_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_4_2_phi_fu_12187_p18 = ap_phi_precharge_reg_pp0_iter4_p_0168_0_i_0_1_3_reg_11947.read();
    } else {
        line_buffer_0_1_0_4_2_phi_fu_12187_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_4_2_reg_12184.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_5_2_phi_fu_12156_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_5_2_phi_fu_12156_p18 = line_buffer_0_1_0_5_3_phi_fu_11973_p16.read();
    } else {
        line_buffer_0_1_0_5_2_phi_fu_12156_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_5_2_reg_12153.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_5_3_phi_fu_11973_p16() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, ap_reg_pp0_iter3_first_wrd_reg_51897.read()))) {
        line_buffer_0_1_0_5_3_phi_fu_11973_p16 = ap_const_lv2_0;
    } else {
        line_buffer_0_1_0_5_3_phi_fu_11973_p16 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_5_3_reg_11970.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_6_2_phi_fu_12125_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_6_2_phi_fu_12125_p18 = p_0168_0_i_0_1_5_phi_fu_11995_p16.read();
    } else {
        line_buffer_0_1_0_6_2_phi_fu_12125_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_6_2_reg_12122.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_7_2_phi_fu_12094_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_7_2_phi_fu_12094_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_7_3_reg_12014.read();
    } else {
        line_buffer_0_1_0_7_2_phi_fu_12094_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_7_2_reg_12091.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_8_2_phi_fu_12063_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_8_2_phi_fu_12063_p18 = ap_phi_precharge_reg_pp0_iter4_p_0168_0_i_0_1_7_reg_12037.read();
    } else {
        line_buffer_0_1_0_8_2_phi_fu_12063_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_8_2_reg_12060.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_0_9_phi_fu_12336_p18() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read()))) {
        line_buffer_0_1_0_9_phi_fu_12336_p18 = ap_reg_pp0_iter3_old_word_buffer_0_1_32_reg_53910.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read()))) {
        line_buffer_0_1_0_9_phi_fu_12336_p18 = ap_reg_pp0_iter3_old_word_buffer_0_2_33_reg_53949.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read()))) {
        line_buffer_0_1_0_9_phi_fu_12336_p18 = ap_reg_pp0_iter3_old_word_buffer_0_3_33_reg_53998.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read()))) {
        line_buffer_0_1_0_9_phi_fu_12336_p18 = ap_reg_pp0_iter3_old_word_buffer_0_4_33_reg_54045.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read()))) {
        line_buffer_0_1_0_9_phi_fu_12336_p18 = ap_reg_pp0_iter3_old_word_buffer_0_5_33_reg_54114.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read()))) {
        line_buffer_0_1_0_9_phi_fu_12336_p18 = ap_reg_pp0_iter3_old_word_buffer_0_6_35_reg_54189.read();
    } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                 ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                   esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())) || 
                  (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                   esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, brmerge15_fu_37801_p2.read())))) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, brmerge15_fu_37801_p2.read())))) {
        line_buffer_0_1_0_9_phi_fu_12336_p18 = ap_const_lv2_0;
    } else {
        line_buffer_0_1_0_9_phi_fu_12336_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_0_1_0_9_reg_12333.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_1_1_9_fu_37811_p3() {
    line_buffer_0_1_1_9_fu_37811_p3 = (!rb_1_reg_45788.read()[0].is_01())? sc_lv<2>(): ((rb_1_reg_45788.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_2_1_1_reg_55370.read());
}

void a0_bin_conv::thread_line_buffer_0_1_1_fu_37805_p3() {
    line_buffer_0_1_1_fu_37805_p3 = (!tmp_1225_reg_45756.read()[0].is_01())? sc_lv<2>(): ((tmp_1225_reg_45756.read()[0].to_bool())? ap_reg_pp0_iter3_word_buffer_0_1_0_reg_55417.read(): ap_const_lv2_0);
}

void a0_bin_conv::thread_line_buffer_0_2_1_9_fu_37823_p3() {
    line_buffer_0_2_1_9_fu_37823_p3 = (!rb_2_reg_45825.read()[0].is_01())? sc_lv<2>(): ((rb_2_reg_45825.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_3_1_1_reg_55310.read());
}

void a0_bin_conv::thread_line_buffer_0_2_1_fu_37817_p3() {
    line_buffer_0_2_1_fu_37817_p3 = (!tmp_1227_reg_45800.read()[0].is_01())? sc_lv<2>(): ((tmp_1227_reg_45800.read()[0].to_bool())? ap_reg_pp0_iter3_word_buffer_0_2_0_reg_55355.read(): ap_const_lv2_0);
}

void a0_bin_conv::thread_line_buffer_0_3_1_9_fu_37835_p3() {
    line_buffer_0_3_1_9_fu_37835_p3 = (!rb_3_reg_45849.read()[0].is_01())? sc_lv<2>(): ((rb_3_reg_45849.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_4_1_1_reg_55256.read());
}

void a0_bin_conv::thread_line_buffer_0_3_1_fu_37829_p3() {
    line_buffer_0_3_1_fu_37829_p3 = (!lb_3_reg_45835.read()[0].is_01())? sc_lv<2>(): ((lb_3_reg_45835.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_3_0_reg_55296.read());
}

void a0_bin_conv::thread_line_buffer_0_4_1_9_fu_37847_p3() {
    line_buffer_0_4_1_9_fu_37847_p3 = (!rb_4_reg_45873.read()[0].is_01())? sc_lv<2>(): ((rb_4_reg_45873.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_5_1_1_reg_55209.read());
}

void a0_bin_conv::thread_line_buffer_0_4_1_fu_37841_p3() {
    line_buffer_0_4_1_fu_37841_p3 = (!lb_4_reg_45859.read()[0].is_01())? sc_lv<2>(): ((lb_4_reg_45859.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_4_0_reg_55244.read());
}

void a0_bin_conv::thread_line_buffer_0_5_1_9_fu_37859_p3() {
    line_buffer_0_5_1_9_fu_37859_p3 = (!rb_5_reg_45897.read()[0].is_01())? sc_lv<2>(): ((rb_5_reg_45897.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_6_1_1_reg_55171.read());
}

void a0_bin_conv::thread_line_buffer_0_5_1_fu_37853_p3() {
    line_buffer_0_5_1_fu_37853_p3 = (!lb_5_reg_45883.read()[0].is_01())? sc_lv<2>(): ((lb_5_reg_45883.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_5_0_reg_55200.read());
}

void a0_bin_conv::thread_line_buffer_0_5_2_1_phi_fu_6972_p14() {
    if (((esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)))) {
        line_buffer_0_5_2_1_phi_fu_6972_p14 = word_buffer_V_load_1_19_fu_33002_p3.read();
    } else {
        line_buffer_0_5_2_1_phi_fu_6972_p14 = ap_phi_precharge_reg_pp0_iter3_line_buffer_0_5_2_1_reg_6968.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_5_2_3_phi_fu_7016_p14() {
    if (((esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)))) {
        line_buffer_0_5_2_3_phi_fu_7016_p14 = word_buffer_V_load_1_20_fu_33025_p3.read();
    } else {
        line_buffer_0_5_2_3_phi_fu_7016_p14 = ap_phi_precharge_reg_pp0_iter3_line_buffer_0_5_2_3_reg_7012.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_5_2_5_phi_fu_7060_p14() {
    if (((esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)))) {
        line_buffer_0_5_2_5_phi_fu_7060_p14 = word_buffer_V_load_1_21_fu_33048_p3.read();
    } else {
        line_buffer_0_5_2_5_phi_fu_7060_p14 = ap_phi_precharge_reg_pp0_iter3_line_buffer_0_5_2_5_reg_7056.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_5_2_7_phi_fu_7104_p14() {
    if (((esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)))) {
        line_buffer_0_5_2_7_phi_fu_7104_p14 = word_buffer_V_load_1_22_fu_33071_p3.read();
    } else {
        line_buffer_0_5_2_7_phi_fu_7104_p14 = ap_phi_precharge_reg_pp0_iter3_line_buffer_0_5_2_7_reg_7100.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_6_1_9_fu_37871_p3() {
    line_buffer_0_6_1_9_fu_37871_p3 = (!rb_6_reg_45921.read()[0].is_01())? sc_lv<2>(): ((rb_6_reg_45921.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_7_1_1_reg_55141.read());
}

void a0_bin_conv::thread_line_buffer_0_6_1_fu_37865_p3() {
    line_buffer_0_6_1_fu_37865_p3 = (!lb_6_reg_45907.read()[0].is_01())? sc_lv<2>(): ((lb_6_reg_45907.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_6_0_reg_55164.read());
}

void a0_bin_conv::thread_line_buffer_0_6_2_1_phi_fu_7148_p16() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_1)) || 
           (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1231_reg_50210.read())))) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_2)))) {
        line_buffer_0_6_2_1_phi_fu_7148_p16 = word_buffer_V_load_1_23_fu_33189_p3.read();
    } else {
        line_buffer_0_6_2_1_phi_fu_7148_p16 = ap_phi_precharge_reg_pp0_iter3_line_buffer_0_6_2_1_reg_7144.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_6_2_3_phi_fu_7196_p16() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_1)) || 
           (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1231_reg_50210.read())))) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_2)))) {
        line_buffer_0_6_2_3_phi_fu_7196_p16 = word_buffer_V_load_1_24_reg_56083.read();
    } else {
        line_buffer_0_6_2_3_phi_fu_7196_p16 = ap_phi_precharge_reg_pp0_iter3_line_buffer_0_6_2_3_reg_7192.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_6_2_5_phi_fu_7244_p16() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_1)) || 
           (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1231_reg_50210.read())))) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_2)))) {
        line_buffer_0_6_2_5_phi_fu_7244_p16 = word_buffer_V_load_1_25_fu_33219_p3.read();
    } else {
        line_buffer_0_6_2_5_phi_fu_7244_p16 = ap_phi_precharge_reg_pp0_iter3_line_buffer_0_6_2_5_reg_7240.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_6_2_7_phi_fu_7291_p16() {
    if ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, ap_reg_pp0_iter2_last_wrd_reg_51948.read()))) {
        line_buffer_0_6_2_7_phi_fu_7291_p16 = ap_const_lv2_0;
    } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                   esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_1)) || 
                  (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                   esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1231_reg_50210.read())))) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_2)))) {
        line_buffer_0_6_2_7_phi_fu_7291_p16 = word_buffer_V_load_1_26_fu_33249_p3.read();
    } else {
        line_buffer_0_6_2_7_phi_fu_7291_p16 = ap_phi_precharge_reg_pp0_iter3_line_buffer_0_6_2_7_reg_7288.read();
    }
}

void a0_bin_conv::thread_line_buffer_0_7_1_fu_37877_p3() {
    line_buffer_0_7_1_fu_37877_p3 = (!lb_7_reg_45931.read()[0].is_01())? sc_lv<2>(): ((lb_7_reg_45931.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_0_7_0_reg_55135.read());
}

void a0_bin_conv::thread_line_buffer_0_7_2_9_fu_33453_p3() {
    line_buffer_0_7_2_9_fu_33453_p3 = (!brmerge14_fu_33435_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge14_fu_33435_p2.read()[0].to_bool())? ap_const_lv2_0: tmp_200_fu_33439_p10.read());
}

void a0_bin_conv::thread_line_buffer_0_7_2_fu_33427_p3() {
    line_buffer_0_7_2_fu_33427_p3 = (!brmerge13_fu_33409_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge13_fu_33409_p2.read()[0].to_bool())? ap_const_lv2_0: tmp_199_fu_33413_p10.read());
}

void a0_bin_conv::thread_line_buffer_1_0_1_9_fu_38551_p3() {
    line_buffer_1_0_1_9_fu_38551_p3 = (!rb_0_reg_45771.read()[0].is_01())? sc_lv<2>(): ((rb_0_reg_45771.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_1_1_1_reg_54946.read());
}

void a0_bin_conv::thread_line_buffer_1_1_0_0_2_phi_fu_16373_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_0_2_phi_fu_16373_p18 = p_0133_0_i_1_1_reg_58499.read();
    } else {
        line_buffer_1_1_0_0_2_phi_fu_16373_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_0_2_reg_16369.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_1_2_phi_fu_16341_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_1_2_phi_fu_16341_p18 = line_buffer_1_1_0_1_3_reg_9199.read();
    } else {
        line_buffer_1_1_0_1_2_phi_fu_16341_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_1_2_reg_16338.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_2_2_phi_fu_16310_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_2_2_phi_fu_16310_p18 = p_0168_0_i_1_1_1_reg_9223.read();
    } else {
        line_buffer_1_1_0_2_2_phi_fu_16310_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_2_2_reg_16307.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_3_2_phi_fu_16279_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_3_2_phi_fu_16279_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_3_3_reg_15985.read();
    } else {
        line_buffer_1_1_0_3_2_phi_fu_16279_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_3_2_reg_16276.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_4_2_phi_fu_16248_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_4_2_phi_fu_16248_p18 = ap_phi_precharge_reg_pp0_iter4_p_0168_0_i_1_1_3_reg_16008.read();
    } else {
        line_buffer_1_1_0_4_2_phi_fu_16248_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_4_2_reg_16245.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_5_2_phi_fu_16217_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_5_2_phi_fu_16217_p18 = line_buffer_1_1_0_5_3_phi_fu_16034_p16.read();
    } else {
        line_buffer_1_1_0_5_2_phi_fu_16217_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_5_2_reg_16214.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_5_3_phi_fu_16034_p16() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, ap_reg_pp0_iter3_first_wrd_reg_51897.read()))) {
        line_buffer_1_1_0_5_3_phi_fu_16034_p16 = ap_const_lv2_0;
    } else {
        line_buffer_1_1_0_5_3_phi_fu_16034_p16 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_5_3_reg_16031.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_6_2_phi_fu_16186_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_6_2_phi_fu_16186_p18 = p_0168_0_i_1_1_5_phi_fu_16056_p16.read();
    } else {
        line_buffer_1_1_0_6_2_phi_fu_16186_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_6_2_reg_16183.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_7_2_phi_fu_16155_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_7_2_phi_fu_16155_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_7_3_reg_16075.read();
    } else {
        line_buffer_1_1_0_7_2_phi_fu_16155_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_7_2_reg_16152.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_8_2_phi_fu_16124_p18() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
           (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
            esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_8_2_phi_fu_16124_p18 = ap_phi_precharge_reg_pp0_iter4_p_0168_0_i_1_1_7_reg_16098.read();
    } else {
        line_buffer_1_1_0_8_2_phi_fu_16124_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_8_2_reg_16121.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_0_9_phi_fu_16397_p18() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read()))) {
        line_buffer_1_1_0_9_phi_fu_16397_p18 = ap_reg_pp0_iter3_old_word_buffer_1_1_32_reg_54302.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_2) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read()))) {
        line_buffer_1_1_0_9_phi_fu_16397_p18 = ap_reg_pp0_iter3_old_word_buffer_1_2_33_reg_54341.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_3) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read()))) {
        line_buffer_1_1_0_9_phi_fu_16397_p18 = ap_reg_pp0_iter3_old_word_buffer_1_3_33_reg_54390.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_4) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read()))) {
        line_buffer_1_1_0_9_phi_fu_16397_p18 = ap_reg_pp0_iter3_old_word_buffer_1_4_33_reg_54449.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_5) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read()))) {
        line_buffer_1_1_0_9_phi_fu_16397_p18 = ap_reg_pp0_iter3_old_word_buffer_1_5_33_reg_54518.read();
    } else if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_6) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read()))) {
        line_buffer_1_1_0_9_phi_fu_16397_p18 = ap_reg_pp0_iter3_old_word_buffer_1_6_35_reg_54593.read();
    } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                 ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                   esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1251_reg_50470.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())) || 
                  (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                   esl_seteq<1,3,3>(tmp_1251_reg_50470.read(), ap_const_lv3_7) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, brmerge42_fu_38557_p2.read())))) || 
                (esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_1, brmerge42_fu_38557_p2.read())))) {
        line_buffer_1_1_0_9_phi_fu_16397_p18 = ap_const_lv2_0;
    } else {
        line_buffer_1_1_0_9_phi_fu_16397_p18 = ap_phi_precharge_reg_pp0_iter4_line_buffer_1_1_0_9_reg_16394.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_1_1_9_fu_38567_p3() {
    line_buffer_1_1_1_9_fu_38567_p3 = (!rb_1_reg_45788.read()[0].is_01())? sc_lv<2>(): ((rb_1_reg_45788.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_2_1_1_reg_55111.read());
}

void a0_bin_conv::thread_line_buffer_1_1_1_fu_38561_p3() {
    line_buffer_1_1_1_fu_38561_p3 = (!tmp_1225_reg_45756.read()[0].is_01())? sc_lv<2>(): ((tmp_1225_reg_45756.read()[0].to_bool())? ap_reg_pp0_iter3_word_buffer_1_1_0_reg_54929.read(): ap_const_lv2_0);
}

void a0_bin_conv::thread_line_buffer_1_2_1_9_fu_38579_p3() {
    line_buffer_1_2_1_9_fu_38579_p3 = (!rb_2_reg_45825.read()[0].is_01())? sc_lv<2>(): ((rb_2_reg_45825.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_3_1_1_reg_54872.read());
}

void a0_bin_conv::thread_line_buffer_1_2_1_fu_38573_p3() {
    line_buffer_1_2_1_fu_38573_p3 = (!tmp_1227_reg_45800.read()[0].is_01())? sc_lv<2>(): ((tmp_1227_reg_45800.read()[0].to_bool())? ap_reg_pp0_iter3_word_buffer_1_2_0_1_reg_55582.read(): ap_const_lv2_0);
}

void a0_bin_conv::thread_line_buffer_1_3_1_9_fu_38591_p3() {
    line_buffer_1_3_1_9_fu_38591_p3 = (!rb_3_reg_45849.read()[0].is_01())? sc_lv<2>(): ((rb_3_reg_45849.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_4_1_1_reg_54818.read());
}

void a0_bin_conv::thread_line_buffer_1_3_1_fu_38585_p3() {
    line_buffer_1_3_1_fu_38585_p3 = (!lb_3_reg_45835.read()[0].is_01())? sc_lv<2>(): ((lb_3_reg_45835.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_3_0_reg_54858.read());
}

void a0_bin_conv::thread_line_buffer_1_4_1_9_fu_38603_p3() {
    line_buffer_1_4_1_9_fu_38603_p3 = (!rb_4_reg_45873.read()[0].is_01())? sc_lv<2>(): ((rb_4_reg_45873.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_5_1_1_reg_54771.read());
}

void a0_bin_conv::thread_line_buffer_1_4_1_fu_38597_p3() {
    line_buffer_1_4_1_fu_38597_p3 = (!lb_4_reg_45859.read()[0].is_01())? sc_lv<2>(): ((lb_4_reg_45859.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_4_0_reg_54806.read());
}

void a0_bin_conv::thread_line_buffer_1_5_1_9_fu_38615_p3() {
    line_buffer_1_5_1_9_fu_38615_p3 = (!rb_5_reg_45897.read()[0].is_01())? sc_lv<2>(): ((rb_5_reg_45897.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_6_1_1_reg_54733.read());
}

void a0_bin_conv::thread_line_buffer_1_5_1_fu_38609_p3() {
    line_buffer_1_5_1_fu_38609_p3 = (!lb_5_reg_45883.read()[0].is_01())? sc_lv<2>(): ((lb_5_reg_45883.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_5_0_reg_54762.read());
}

void a0_bin_conv::thread_line_buffer_1_5_2_1_phi_fu_8837_p14() {
    if (((esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)))) {
        line_buffer_1_5_2_1_phi_fu_8837_p14 = word_buffer_V_load_1_47_fu_35298_p3.read();
    } else {
        line_buffer_1_5_2_1_phi_fu_8837_p14 = ap_phi_precharge_reg_pp0_iter3_line_buffer_1_5_2_1_reg_8833.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_5_2_3_phi_fu_8881_p14() {
    if (((esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)))) {
        line_buffer_1_5_2_3_phi_fu_8881_p14 = word_buffer_V_load_1_48_fu_35321_p3.read();
    } else {
        line_buffer_1_5_2_3_phi_fu_8881_p14 = ap_phi_precharge_reg_pp0_iter3_line_buffer_1_5_2_3_reg_8877.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_5_2_5_phi_fu_8925_p14() {
    if (((esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)))) {
        line_buffer_1_5_2_5_phi_fu_8925_p14 = word_buffer_V_load_1_49_fu_35344_p3.read();
    } else {
        line_buffer_1_5_2_5_phi_fu_8925_p14 = ap_phi_precharge_reg_pp0_iter3_line_buffer_1_5_2_5_reg_8921.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_5_2_7_phi_fu_8969_p14() {
    if (((esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3) && 
          !esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1237_reg_50238.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)))) {
        line_buffer_1_5_2_7_phi_fu_8969_p14 = word_buffer_V_load_1_50_fu_35367_p3.read();
    } else {
        line_buffer_1_5_2_7_phi_fu_8969_p14 = ap_phi_precharge_reg_pp0_iter3_line_buffer_1_5_2_7_reg_8965.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_6_1_9_fu_38627_p3() {
    line_buffer_1_6_1_9_fu_38627_p3 = (!rb_6_reg_45921.read()[0].is_01())? sc_lv<2>(): ((rb_6_reg_45921.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_7_1_1_reg_54703.read());
}

void a0_bin_conv::thread_line_buffer_1_6_1_fu_38621_p3() {
    line_buffer_1_6_1_fu_38621_p3 = (!lb_6_reg_45907.read()[0].is_01())? sc_lv<2>(): ((lb_6_reg_45907.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_6_0_reg_54726.read());
}

void a0_bin_conv::thread_line_buffer_1_6_2_1_phi_fu_9013_p16() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_1)) || 
           (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1231_reg_50210.read())))) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_2)))) {
        line_buffer_1_6_2_1_phi_fu_9013_p16 = word_buffer_V_load_1_51_fu_35480_p3.read();
    } else {
        line_buffer_1_6_2_1_phi_fu_9013_p16 = ap_phi_precharge_reg_pp0_iter3_line_buffer_1_6_2_1_reg_9009.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_6_2_3_phi_fu_9061_p16() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_1)) || 
           (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1231_reg_50210.read())))) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_2)))) {
        line_buffer_1_6_2_3_phi_fu_9061_p16 = word_buffer_V_load_1_52_fu_35510_p3.read();
    } else {
        line_buffer_1_6_2_3_phi_fu_9061_p16 = ap_phi_precharge_reg_pp0_iter3_line_buffer_1_6_2_3_reg_9057.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_6_2_5_phi_fu_9109_p16() {
    if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_1)) || 
           (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
            esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
            esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1231_reg_50210.read())))) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) || 
         (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
          esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
          esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_2)))) {
        line_buffer_1_6_2_5_phi_fu_9109_p16 = word_buffer_V_load_1_53_fu_35540_p3.read();
    } else {
        line_buffer_1_6_2_5_phi_fu_9109_p16 = ap_phi_precharge_reg_pp0_iter3_line_buffer_1_6_2_5_reg_9105.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_6_2_7_phi_fu_9156_p16() {
    if ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, ap_reg_pp0_iter2_last_wrd_reg_51948.read()))) {
        line_buffer_1_6_2_7_phi_fu_9156_p16 = ap_const_lv2_0;
    } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 ((esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                   esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_1)) || 
                  (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                   esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                   esl_seteq<1,3,3>(ap_const_lv3_0, tmp_1231_reg_50210.read())))) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) || 
                (esl_seteq<1,1,1>(tmp_1238_reg_50346.read(), ap_const_lv1_0) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_exitcond1_reg_51888.read()) && 
                 esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter2_last_wrd_reg_51948.read()) && 
                 esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
                 esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()) && 
                 esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_2)))) {
        line_buffer_1_6_2_7_phi_fu_9156_p16 = word_buffer_V_load_1_54_fu_35570_p3.read();
    } else {
        line_buffer_1_6_2_7_phi_fu_9156_p16 = ap_phi_precharge_reg_pp0_iter3_line_buffer_1_6_2_7_reg_9153.read();
    }
}

void a0_bin_conv::thread_line_buffer_1_7_1_fu_38633_p3() {
    line_buffer_1_7_1_fu_38633_p3 = (!lb_7_reg_45931.read()[0].is_01())? sc_lv<2>(): ((lb_7_reg_45931.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter3_word_buffer_1_7_0_reg_54697.read());
}

void a0_bin_conv::thread_line_buffer_1_7_2_9_fu_35766_p3() {
    line_buffer_1_7_2_9_fu_35766_p3 = (!brmerge14_fu_33435_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge14_fu_33435_p2.read()[0].to_bool())? ap_const_lv2_0: tmp_220_fu_35752_p10.read());
}

void a0_bin_conv::thread_line_buffer_1_7_2_fu_35744_p3() {
    line_buffer_1_7_2_fu_35744_p3 = (!brmerge13_fu_33409_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge13_fu_33409_p2.read()[0].to_bool())? ap_const_lv2_0: tmp_219_fu_35730_p10.read());
}

void a0_bin_conv::thread_log_slice_V_fu_19615_p1() {
    log_slice_V_fu_19615_p1 = esl_zext<3,2>(width_mode_V.read());
}

void a0_bin_conv::thread_log_width_V_fu_19620_p2() {
    log_width_V_fu_19620_p2 = (!log_slice_V_fu_19615_p1.read().is_01() || !ap_const_lv3_3.is_01())? sc_lv<3>(): (sc_biguint<3>(log_slice_V_fu_19615_p1.read()) + sc_biguint<3>(ap_const_lv3_3));
}

void a0_bin_conv::thread_new_batch_V_read_read_fu_3262_p2() {
    new_batch_V_read_read_fu_3262_p2 = new_batch_V.read();
}

void a0_bin_conv::thread_not_10_fu_43299_p2() {
    not_10_fu_43299_p2 = (!tmp_271_10_cast_fu_43295_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_10_cast_fu_43295_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_11_fu_43308_p2() {
    not_11_fu_43308_p2 = (!tmp_271_11_cast_fu_43304_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_11_cast_fu_43304_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_12_fu_43317_p2() {
    not_12_fu_43317_p2 = (!tmp_271_12_cast_fu_43313_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_12_cast_fu_43313_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_13_fu_43326_p2() {
    not_13_fu_43326_p2 = (!tmp_271_13_cast_fu_43322_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_13_cast_fu_43322_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_14_fu_43335_p2() {
    not_14_fu_43335_p2 = (!tmp_271_14_cast_fu_43331_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_14_cast_fu_43331_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_15_fu_43344_p2() {
    not_15_fu_43344_p2 = (!tmp_271_15_cast_fu_43340_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_15_cast_fu_43340_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_16_fu_43353_p2() {
    not_16_fu_43353_p2 = (!tmp_271_16_cast_fu_43349_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_16_cast_fu_43349_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_17_fu_43362_p2() {
    not_17_fu_43362_p2 = (!tmp_271_17_cast_fu_43358_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_17_cast_fu_43358_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_18_fu_43371_p2() {
    not_18_fu_43371_p2 = (!tmp_271_18_cast_fu_43367_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_18_cast_fu_43367_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_19_fu_43380_p2() {
    not_19_fu_43380_p2 = (!tmp_271_19_cast_fu_43376_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_19_cast_fu_43376_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_1_fu_43209_p2() {
    not_1_fu_43209_p2 = (!tmp_271_1_cast_fu_43205_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_1_cast_fu_43205_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_20_fu_43389_p2() {
    not_20_fu_43389_p2 = (!tmp_271_20_cast_fu_43385_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_20_cast_fu_43385_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_21_fu_43398_p2() {
    not_21_fu_43398_p2 = (!tmp_271_21_cast_fu_43394_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_21_cast_fu_43394_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_22_fu_43407_p2() {
    not_22_fu_43407_p2 = (!tmp_271_22_cast_fu_43403_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_22_cast_fu_43403_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_23_fu_43416_p2() {
    not_23_fu_43416_p2 = (!tmp_271_23_cast_fu_43412_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_23_cast_fu_43412_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_24_fu_43425_p2() {
    not_24_fu_43425_p2 = (!tmp_271_24_cast_fu_43421_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_24_cast_fu_43421_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_25_fu_43434_p2() {
    not_25_fu_43434_p2 = (!tmp_271_25_cast_fu_43430_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_25_cast_fu_43430_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_26_fu_43443_p2() {
    not_26_fu_43443_p2 = (!tmp_271_26_cast_fu_43439_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_26_cast_fu_43439_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_27_fu_43452_p2() {
    not_27_fu_43452_p2 = (!tmp_271_27_cast_fu_43448_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_27_cast_fu_43448_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_28_fu_43461_p2() {
    not_28_fu_43461_p2 = (!tmp_271_28_cast_fu_43457_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_28_cast_fu_43457_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_29_fu_43470_p2() {
    not_29_fu_43470_p2 = (!tmp_271_29_cast_fu_43466_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_29_cast_fu_43466_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_2_fu_43218_p2() {
    not_2_fu_43218_p2 = (!tmp_271_2_cast_fu_43214_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_2_cast_fu_43214_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_30_fu_43479_p2() {
    not_30_fu_43479_p2 = (!tmp_271_30_cast_fu_43475_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_30_cast_fu_43475_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_31_fu_43488_p2() {
    not_31_fu_43488_p2 = (!tmp_271_31_cast_fu_43484_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_31_cast_fu_43484_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_32_fu_43497_p2() {
    not_32_fu_43497_p2 = (!tmp_271_32_cast_fu_43493_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_32_cast_fu_43493_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_33_fu_43506_p2() {
    not_33_fu_43506_p2 = (!tmp_271_33_cast_fu_43502_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_33_cast_fu_43502_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_34_fu_43515_p2() {
    not_34_fu_43515_p2 = (!tmp_271_34_cast_fu_43511_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_34_cast_fu_43511_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_35_fu_43524_p2() {
    not_35_fu_43524_p2 = (!tmp_271_35_cast_fu_43520_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_35_cast_fu_43520_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_36_fu_43533_p2() {
    not_36_fu_43533_p2 = (!tmp_271_36_cast_fu_43529_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_36_cast_fu_43529_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_37_fu_43542_p2() {
    not_37_fu_43542_p2 = (!tmp_271_37_cast_fu_43538_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_37_cast_fu_43538_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_38_fu_43551_p2() {
    not_38_fu_43551_p2 = (!tmp_271_38_cast_fu_43547_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_38_cast_fu_43547_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_39_fu_43560_p2() {
    not_39_fu_43560_p2 = (!tmp_271_39_cast_fu_43556_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_39_cast_fu_43556_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_3_fu_43227_p2() {
    not_3_fu_43227_p2 = (!tmp_271_3_cast_fu_43223_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_3_cast_fu_43223_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_40_fu_43569_p2() {
    not_40_fu_43569_p2 = (!tmp_271_40_cast_fu_43565_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_40_cast_fu_43565_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_41_fu_43578_p2() {
    not_41_fu_43578_p2 = (!tmp_271_41_cast_fu_43574_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_41_cast_fu_43574_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_42_fu_43587_p2() {
    not_42_fu_43587_p2 = (!tmp_271_42_cast_fu_43583_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_42_cast_fu_43583_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_43_fu_43596_p2() {
    not_43_fu_43596_p2 = (!tmp_271_43_cast_fu_43592_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_43_cast_fu_43592_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_44_fu_43605_p2() {
    not_44_fu_43605_p2 = (!tmp_271_44_cast_fu_43601_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_44_cast_fu_43601_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_45_fu_43614_p2() {
    not_45_fu_43614_p2 = (!tmp_271_45_cast_fu_43610_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_45_cast_fu_43610_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_46_fu_43623_p2() {
    not_46_fu_43623_p2 = (!tmp_271_46_cast_fu_43619_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_46_cast_fu_43619_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_47_fu_43632_p2() {
    not_47_fu_43632_p2 = (!tmp_271_47_cast_fu_43628_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_47_cast_fu_43628_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_48_fu_43641_p2() {
    not_48_fu_43641_p2 = (!tmp_271_48_cast_fu_43637_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_48_cast_fu_43637_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_49_fu_43650_p2() {
    not_49_fu_43650_p2 = (!tmp_271_49_cast_fu_43646_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_49_cast_fu_43646_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_4_fu_43236_p2() {
    not_4_fu_43236_p2 = (!tmp_271_4_cast_fu_43232_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_4_cast_fu_43232_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_50_fu_43659_p2() {
    not_50_fu_43659_p2 = (!tmp_271_50_cast_fu_43655_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_50_cast_fu_43655_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_51_fu_43668_p2() {
    not_51_fu_43668_p2 = (!tmp_271_51_cast_fu_43664_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_51_cast_fu_43664_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_52_fu_43677_p2() {
    not_52_fu_43677_p2 = (!tmp_271_52_cast_fu_43673_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_52_cast_fu_43673_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_53_fu_43686_p2() {
    not_53_fu_43686_p2 = (!tmp_271_53_cast_fu_43682_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_53_cast_fu_43682_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_54_fu_43695_p2() {
    not_54_fu_43695_p2 = (!tmp_271_54_cast_fu_43691_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_54_cast_fu_43691_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_55_fu_43704_p2() {
    not_55_fu_43704_p2 = (!tmp_271_55_cast_fu_43700_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_55_cast_fu_43700_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_56_fu_43713_p2() {
    not_56_fu_43713_p2 = (!tmp_271_56_cast_fu_43709_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_56_cast_fu_43709_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_57_fu_43722_p2() {
    not_57_fu_43722_p2 = (!tmp_271_57_cast_fu_43718_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_57_cast_fu_43718_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_58_fu_43731_p2() {
    not_58_fu_43731_p2 = (!tmp_271_58_cast_fu_43727_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_58_cast_fu_43727_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_59_fu_43740_p2() {
    not_59_fu_43740_p2 = (!tmp_271_59_cast_fu_43736_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_59_cast_fu_43736_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_5_fu_43245_p2() {
    not_5_fu_43245_p2 = (!tmp_271_5_cast_fu_43241_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_5_cast_fu_43241_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_60_fu_43749_p2() {
    not_60_fu_43749_p2 = (!tmp_271_60_cast_fu_43745_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_60_cast_fu_43745_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_61_fu_43758_p2() {
    not_61_fu_43758_p2 = (!tmp_271_61_cast_fu_43754_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_61_cast_fu_43754_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_62_fu_43767_p2() {
    not_62_fu_43767_p2 = (!tmp_271_62_cast_fu_43763_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_62_cast_fu_43763_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_6_fu_43254_p2() {
    not_6_fu_43254_p2 = (!tmp_271_6_cast_fu_43250_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_6_cast_fu_43250_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_7_fu_43263_p2() {
    not_7_fu_43263_p2 = (!tmp_271_7_cast_fu_43259_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_7_cast_fu_43259_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_8_fu_43272_p2() {
    not_8_fu_43272_p2 = (!tmp_271_8_cast_fu_43268_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_8_cast_fu_43268_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_9_fu_43281_p2() {
    not_9_fu_43281_p2 = (!tmp_271_9_cast_fu_43277_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_9_cast_fu_43277_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_s_70_fu_43290_p2() {
    not_s_70_fu_43290_p2 = (!tmp_271_cast_69_fu_43286_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_cast_69_fu_43286_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_not_s_fu_43200_p2() {
    not_s_fu_43200_p2 = (!tmp_271_cast_fu_43196_p1.read().is_01() || !nc_V.read().is_01())? sc_lv<1>(): (sc_bigint<16>(tmp_271_cast_fu_43196_p1.read()) < sc_bigint<16>(nc_V.read()));
}

void a0_bin_conv::thread_o_bank_offset_V_1_fu_42360_p4() {
    o_bank_offset_V_1_fu_42360_p4 = o_index_V.read().range(15, 3);
}

void a0_bin_conv::thread_o_bank_offset_V_2_fu_45505_p4() {
    o_bank_offset_V_2_fu_45505_p4 = o_bank_offset_V_fu_45050_p2.read().range(15, 2);
}

void a0_bin_conv::thread_o_bank_offset_V_3_fu_42369_p1() {
    o_bank_offset_V_3_fu_42369_p1 = esl_zext<16,13>(o_bank_offset_V_1_fu_42360_p4.read());
}

void a0_bin_conv::thread_o_bank_offset_V_4_fu_45515_p1() {
    o_bank_offset_V_4_fu_45515_p1 = esl_zext<16,14>(o_bank_offset_V_2_fu_45505_p4.read());
}

void a0_bin_conv::thread_o_bank_offset_V_fu_45050_p2() {
    o_bank_offset_V_fu_45050_p2 = (!tmp_137_fu_45046_p1.read().is_01() || !tmp_120_reg_60174.read().is_01())? sc_lv<16>(): (sc_biguint<16>(tmp_137_fu_45046_p1.read()) + sc_biguint<16>(tmp_120_reg_60174.read()));
}

void a0_bin_conv::thread_old_word_buffer_0_0_52_fu_26368_p3() {
    old_word_buffer_0_0_52_fu_26368_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_0_1_reg_52260.read());
}

void a0_bin_conv::thread_old_word_buffer_0_0_53_fu_26374_p3() {
    old_word_buffer_0_0_53_fu_26374_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_0_2_fu_25391_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_0_0_54_fu_26381_p3() {
    old_word_buffer_0_0_54_fu_26381_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_0_3_reg_52271.read());
}

void a0_bin_conv::thread_old_word_buffer_0_0_55_fu_26387_p3() {
    old_word_buffer_0_0_55_fu_26387_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_0_4_fu_25398_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_0_0_56_fu_26394_p3() {
    old_word_buffer_0_0_56_fu_26394_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_0_5_reg_52282.read());
}

void a0_bin_conv::thread_old_word_buffer_0_0_57_fu_26400_p3() {
    old_word_buffer_0_0_57_fu_26400_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_0_6_fu_25405_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_0_0_58_fu_26407_p3() {
    old_word_buffer_0_0_58_fu_26407_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_0_7_reg_52293.read());
}

void a0_bin_conv::thread_old_word_buffer_0_0_59_fu_26413_p3() {
    old_word_buffer_0_0_59_fu_26413_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_0_8_fu_25412_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_1_0_52_fu_29002_p3() {
    old_word_buffer_1_0_52_fu_29002_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_0_1_reg_52372.read());
}

void a0_bin_conv::thread_old_word_buffer_1_0_53_fu_29008_p3() {
    old_word_buffer_1_0_53_fu_29008_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_0_2_fu_25489_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_1_0_54_fu_29015_p3() {
    old_word_buffer_1_0_54_fu_29015_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_0_3_reg_52383.read());
}

void a0_bin_conv::thread_old_word_buffer_1_0_55_fu_29021_p3() {
    old_word_buffer_1_0_55_fu_29021_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_0_4_fu_25496_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_1_0_56_fu_29028_p3() {
    old_word_buffer_1_0_56_fu_29028_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_0_5_reg_52394.read());
}

void a0_bin_conv::thread_old_word_buffer_1_0_57_fu_29034_p3() {
    old_word_buffer_1_0_57_fu_29034_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_0_6_fu_25503_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_1_0_58_fu_29041_p3() {
    old_word_buffer_1_0_58_fu_29041_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_0_7_reg_52405.read());
}

void a0_bin_conv::thread_old_word_buffer_1_0_59_fu_29047_p3() {
    old_word_buffer_1_0_59_fu_29047_p3 = (!ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter1_last_wrd_reg_51948.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_0_8_fu_25510_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_100_fu_31221_p3() {
    old_word_buffer_V_lo_100_fu_31221_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): old_word_buffer_1_7_11_fu_1882.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_101_fu_31228_p3() {
    old_word_buffer_V_lo_101_fu_31228_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_12_fu_1850.read(): old_word_buffer_1_7_12_fu_1886.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_102_fu_31238_p3() {
    old_word_buffer_V_lo_102_fu_31238_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): old_word_buffer_1_7_13_fu_1890.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_103_fu_31245_p3() {
    old_word_buffer_V_lo_103_fu_31245_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_14_fu_1858.read(): old_word_buffer_1_7_14_fu_1894.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_104_fu_31255_p3() {
    old_word_buffer_V_lo_104_fu_31255_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): old_word_buffer_1_7_15_fu_1898.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_105_fu_31262_p3() {
    old_word_buffer_V_lo_105_fu_31262_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_16_fu_1866.read(): old_word_buffer_1_7_16_fu_1902.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_106_fu_31269_p3() {
    old_word_buffer_V_lo_106_fu_31269_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_78_reg_53869.read(): old_word_buffer_1_7_49_reg_52231.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_107_fu_31274_p3() {
    old_word_buffer_V_lo_107_fu_31274_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_18_fu_1874.read(): old_word_buffer_1_7_42_reg_52212.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_108_fu_31290_p3() {
    old_word_buffer_V_lo_108_fu_31290_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_fu_710.read(): old_word_buffer_1_7_fu_714.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_109_fu_36698_p3() {
    old_word_buffer_V_lo_109_fu_36698_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_1_6_35_reg_54593.read(): ap_const_lv2_0);
}

void a0_bin_conv::thread_old_word_buffer_V_lo_10_fu_28243_p3() {
    old_word_buffer_V_lo_10_fu_28243_p3 = (!tmp_161_reg_50768.read()[0].is_01())? sc_lv<2>(): ((tmp_161_reg_50768.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp452_fu_28236_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_110_fu_28786_p3() {
    old_word_buffer_V_lo_110_fu_28786_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_1_6_12_fu_1850.read(): sel_tmp624_fu_28779_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_111_fu_28828_p3() {
    old_word_buffer_V_lo_111_fu_28828_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp629_fu_28821_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_112_fu_28870_p3() {
    old_word_buffer_V_lo_112_fu_28870_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_1_6_14_fu_1858.read(): sel_tmp634_fu_28863_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_113_fu_28912_p3() {
    old_word_buffer_V_lo_113_fu_28912_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp639_fu_28905_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_114_fu_28954_p3() {
    old_word_buffer_V_lo_114_fu_28954_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_1_6_16_fu_1866.read(): sel_tmp644_fu_28947_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_115_fu_24094_p3() {
    old_word_buffer_V_lo_115_fu_24094_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp649_fu_24087_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_116_fu_28995_p3() {
    old_word_buffer_V_lo_116_fu_28995_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_1_6_18_fu_1874.read(): sel_tmp654_fu_28988_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_117_fu_29171_p3() {
    old_word_buffer_V_lo_117_fu_29171_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp658_fu_29164_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_118_fu_34818_p3() {
    old_word_buffer_V_lo_118_fu_34818_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_1_6_31_reg_54533.read(): sel_tmp662_fu_34812_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_119_fu_29206_p3() {
    old_word_buffer_V_lo_119_fu_29206_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp666_fu_29199_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_11_fu_23989_p3() {
    old_word_buffer_V_lo_11_fu_23989_p3 = (!tmp_161_reg_50768.read()[0].is_01())? sc_lv<2>(): ((tmp_161_reg_50768.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp455_fu_23982_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_120_fu_34847_p3() {
    old_word_buffer_V_lo_120_fu_34847_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_1_6_32_reg_54548.read(): sel_tmp670_fu_34841_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_121_fu_29241_p3() {
    old_word_buffer_V_lo_121_fu_29241_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp674_fu_29234_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_122_fu_34876_p3() {
    old_word_buffer_V_lo_122_fu_34876_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_1_6_33_reg_54563.read(): sel_tmp678_fu_34870_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_123_fu_24132_p3() {
    old_word_buffer_V_lo_123_fu_24132_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp682_fu_24125_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_124_fu_34905_p3() {
    old_word_buffer_V_lo_124_fu_34905_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_1_6_34_reg_54578.read(): sel_tmp686_fu_34899_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_125_fu_29385_p3() {
    old_word_buffer_V_lo_125_fu_29385_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp694_fu_29378_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_126_fu_34978_p3() {
    old_word_buffer_V_lo_126_fu_34978_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_1_6_31_reg_54533.read(): sel_tmp697_fu_34972_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_127_fu_29413_p3() {
    old_word_buffer_V_lo_127_fu_29413_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp700_fu_29406_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_128_fu_35001_p3() {
    old_word_buffer_V_lo_128_fu_35001_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_1_6_32_reg_54548.read(): sel_tmp703_fu_34995_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_129_fu_29441_p3() {
    old_word_buffer_V_lo_129_fu_29441_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp706_fu_29434_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_12_fu_28352_p3() {
    old_word_buffer_V_lo_12_fu_28352_p3 = (!tmp_164_reg_50810.read()[0].is_01())? sc_lv<2>(): ((tmp_164_reg_50810.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp484_fu_28345_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_130_fu_35024_p3() {
    old_word_buffer_V_lo_130_fu_35024_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_1_6_33_reg_54563.read(): sel_tmp709_fu_35018_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_131_fu_24163_p3() {
    old_word_buffer_V_lo_131_fu_24163_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp712_fu_24156_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_132_fu_35047_p3() {
    old_word_buffer_V_lo_132_fu_35047_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_1_6_34_reg_54578.read(): sel_tmp715_fu_35041_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_133_fu_29602_p3() {
    old_word_buffer_V_lo_133_fu_29602_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp730_fu_29595_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_134_fu_35122_p3() {
    old_word_buffer_V_lo_134_fu_35122_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_1_6_31_reg_54533.read(): sel_tmp732_fu_35116_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_135_fu_29623_p3() {
    old_word_buffer_V_lo_135_fu_29623_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp734_fu_29616_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_136_fu_35139_p3() {
    old_word_buffer_V_lo_136_fu_35139_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_1_6_32_reg_54548.read(): sel_tmp736_fu_35133_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_137_fu_29644_p3() {
    old_word_buffer_V_lo_137_fu_29644_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp738_fu_29637_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_138_fu_35156_p3() {
    old_word_buffer_V_lo_138_fu_35156_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_1_6_33_reg_54563.read(): sel_tmp740_fu_35150_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_139_fu_24190_p3() {
    old_word_buffer_V_lo_139_fu_24190_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp742_fu_24183_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_13_fu_28382_p3() {
    old_word_buffer_V_lo_13_fu_28382_p3 = (!tmp_164_reg_50810.read()[0].is_01())? sc_lv<2>(): ((tmp_164_reg_50810.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp486_fu_28375_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_140_fu_35173_p3() {
    old_word_buffer_V_lo_140_fu_35173_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_1_6_34_reg_54578.read(): sel_tmp744_fu_35167_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_141_fu_29817_p3() {
    old_word_buffer_V_lo_141_fu_29817_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp763_fu_29810_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_142_fu_35248_p3() {
    old_word_buffer_V_lo_142_fu_35248_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_1_6_31_reg_54533.read(): sel_tmp764_fu_35243_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_143_fu_29831_p3() {
    old_word_buffer_V_lo_143_fu_29831_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp765_fu_29824_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_144_fu_35259_p3() {
    old_word_buffer_V_lo_144_fu_35259_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_1_6_32_reg_54548.read(): sel_tmp766_fu_35254_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_145_fu_29845_p3() {
    old_word_buffer_V_lo_145_fu_29845_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp767_fu_29838_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_146_fu_35270_p3() {
    old_word_buffer_V_lo_146_fu_35270_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_1_6_33_reg_54563.read(): sel_tmp768_fu_35265_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_147_fu_24210_p3() {
    old_word_buffer_V_lo_147_fu_24210_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp769_fu_24203_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_148_fu_35281_p3() {
    old_word_buffer_V_lo_148_fu_35281_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_1_6_34_reg_54578.read(): sel_tmp770_fu_35276_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_149_fu_35422_p3() {
    old_word_buffer_V_lo_149_fu_35422_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_105_reg_56846.read(): old_word_buffer_1_7_43_reg_54610.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_14_fu_28412_p3() {
    old_word_buffer_V_lo_14_fu_28412_p3 = (!tmp_164_reg_50810.read()[0].is_01())? sc_lv<2>(): ((tmp_164_reg_50810.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp488_fu_28405_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_150_fu_35427_p3() {
    old_word_buffer_V_lo_150_fu_35427_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_31_reg_54533.read(): old_word_buffer_1_7_44_reg_54617.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_151_fu_35432_p3() {
    old_word_buffer_V_lo_151_fu_35432_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_106_reg_56851.read(): old_word_buffer_1_7_45_reg_54634.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_152_fu_35437_p3() {
    old_word_buffer_V_lo_152_fu_35437_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_32_reg_54548.read(): old_word_buffer_1_7_46_reg_54641.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_153_fu_29974_p3() {
    old_word_buffer_V_lo_153_fu_29974_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): old_word_buffer_1_7_15_fu_1898.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_154_fu_35442_p3() {
    old_word_buffer_V_lo_154_fu_35442_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_33_reg_54563.read(): old_word_buffer_1_7_48_reg_54664.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_155_fu_35447_p3() {
    old_word_buffer_V_lo_155_fu_35447_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? ap_reg_pp0_iter2_old_word_buffer_1_6_108_reg_53774.read(): ap_reg_pp0_iter2_old_word_buffer_1_7_49_reg_52231.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_156_fu_35452_p3() {
    old_word_buffer_V_lo_156_fu_35452_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_34_reg_54578.read(): ap_reg_pp0_iter2_old_word_buffer_1_7_42_reg_52212.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_157_fu_29981_p3() {
    old_word_buffer_V_lo_157_fu_29981_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_fu_710.read(): old_word_buffer_1_7_fu_714.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_158_fu_35457_p3() {
    old_word_buffer_V_lo_158_fu_35457_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_1_6_35_reg_54593.read(): ap_const_lv2_0);
}

void a0_bin_conv::thread_old_word_buffer_V_lo_159_fu_26110_p3() {
    old_word_buffer_V_lo_159_fu_26110_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp140_fu_26103_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_15_fu_24023_p3() {
    old_word_buffer_V_lo_15_fu_24023_p3 = (!tmp_164_reg_50810.read()[0].is_01())? sc_lv<2>(): ((tmp_164_reg_50810.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp490_fu_24016_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_16_fu_28501_p3() {
    old_word_buffer_V_lo_16_fu_28501_p3 = (!tmp_166_reg_50838.read()[0].is_01())? sc_lv<2>(): ((tmp_166_reg_50838.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp525_fu_28494_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_17_fu_28521_p3() {
    old_word_buffer_V_lo_17_fu_28521_p3 = (!tmp_166_reg_50838.read()[0].is_01())? sc_lv<2>(): ((tmp_166_reg_50838.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp526_fu_28514_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_18_fu_28541_p3() {
    old_word_buffer_V_lo_18_fu_28541_p3 = (!tmp_166_reg_50838.read()[0].is_01())? sc_lv<2>(): ((tmp_166_reg_50838.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp527_fu_28534_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_19_fu_24043_p3() {
    old_word_buffer_V_lo_19_fu_24043_p3 = (!tmp_166_reg_50838.read()[0].is_01())? sc_lv<2>(): ((tmp_166_reg_50838.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp528_fu_24036_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_1_fu_27743_p3() {
    old_word_buffer_V_lo_1_fu_27743_p3 = (!tmp_152_reg_50642.read()[0].is_01())? sc_lv<2>(): ((tmp_152_reg_50642.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp384_fu_27736_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_20_fu_28604_p3() {
    old_word_buffer_V_lo_20_fu_28604_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): old_word_buffer_0_7_10_fu_1594.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_21_fu_28611_p3() {
    old_word_buffer_V_lo_21_fu_28611_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_12_fu_1562.read(): old_word_buffer_0_7_11_fu_1598.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_22_fu_28621_p3() {
    old_word_buffer_V_lo_22_fu_28621_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): old_word_buffer_0_7_12_fu_1602.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_23_fu_28628_p3() {
    old_word_buffer_V_lo_23_fu_28628_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_14_fu_1570.read(): old_word_buffer_0_7_13_fu_1606.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_24_fu_28638_p3() {
    old_word_buffer_V_lo_24_fu_28638_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): old_word_buffer_0_7_14_fu_1610.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_25_fu_28645_p3() {
    old_word_buffer_V_lo_25_fu_28645_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_16_fu_1578.read(): old_word_buffer_0_7_15_fu_1614.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_26_fu_28652_p3() {
    old_word_buffer_V_lo_26_fu_28652_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_78_reg_53719.read(): old_word_buffer_0_7_48_reg_52184.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_27_fu_28657_p3() {
    old_word_buffer_V_lo_27_fu_28657_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_18_fu_1586.read(): old_word_buffer_0_7_49_reg_52193.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_28_fu_28673_p3() {
    old_word_buffer_V_lo_28_fu_28673_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_fu_682.read(): old_word_buffer_0_7_fu_686.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_29_fu_34389_p3() {
    old_word_buffer_V_lo_29_fu_34389_p3 = (!cond_reg_50446.read()[0].is_01())? sc_lv<2>(): ((cond_reg_50446.read()[0].to_bool())? old_word_buffer_0_6_35_reg_54189.read(): ap_const_lv2_0);
}

void a0_bin_conv::thread_old_word_buffer_V_lo_2_fu_27803_p3() {
    old_word_buffer_V_lo_2_fu_27803_p3 = (!tmp_152_reg_50642.read()[0].is_01())? sc_lv<2>(): ((tmp_152_reg_50642.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp389_fu_27796_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_30_fu_26152_p3() {
    old_word_buffer_V_lo_30_fu_26152_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_0_6_12_fu_1562.read(): sel_tmp145_fu_26145_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_31_fu_26194_p3() {
    old_word_buffer_V_lo_31_fu_26194_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp150_fu_26187_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_32_fu_26236_p3() {
    old_word_buffer_V_lo_32_fu_26236_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_0_6_14_fu_1570.read(): sel_tmp155_fu_26229_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_33_fu_26278_p3() {
    old_word_buffer_V_lo_33_fu_26278_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp160_fu_26271_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_34_fu_26320_p3() {
    old_word_buffer_V_lo_34_fu_26320_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_0_6_16_fu_1578.read(): sel_tmp165_fu_26313_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_35_fu_23692_p3() {
    old_word_buffer_V_lo_35_fu_23692_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp170_fu_23685_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_36_fu_26361_p3() {
    old_word_buffer_V_lo_36_fu_26361_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_0_6_18_fu_1586.read(): sel_tmp175_fu_26354_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_37_fu_26537_p3() {
    old_word_buffer_V_lo_37_fu_26537_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp179_fu_26530_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_38_fu_32522_p3() {
    old_word_buffer_V_lo_38_fu_32522_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_6_31_reg_54129.read(): sel_tmp183_fu_32516_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_39_fu_26572_p3() {
    old_word_buffer_V_lo_39_fu_26572_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp187_fu_26565_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_3_fu_23889_p3() {
    old_word_buffer_V_lo_3_fu_23889_p3 = (!tmp_152_reg_50642.read()[0].is_01())? sc_lv<2>(): ((tmp_152_reg_50642.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp394_fu_23882_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_40_fu_32551_p3() {
    old_word_buffer_V_lo_40_fu_32551_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_6_32_reg_54144.read(): sel_tmp191_fu_32545_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_41_fu_26607_p3() {
    old_word_buffer_V_lo_41_fu_26607_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp195_fu_26600_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_42_fu_32580_p3() {
    old_word_buffer_V_lo_42_fu_32580_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_6_33_reg_54159.read(): sel_tmp199_fu_32574_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_43_fu_23730_p3() {
    old_word_buffer_V_lo_43_fu_23730_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp203_fu_23723_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_44_fu_32609_p3() {
    old_word_buffer_V_lo_44_fu_32609_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_6_34_reg_54174.read(): sel_tmp207_fu_32603_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_45_fu_26751_p3() {
    old_word_buffer_V_lo_45_fu_26751_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp215_fu_26744_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_46_fu_32682_p3() {
    old_word_buffer_V_lo_46_fu_32682_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_6_31_reg_54129.read(): sel_tmp218_fu_32676_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_47_fu_26779_p3() {
    old_word_buffer_V_lo_47_fu_26779_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp221_fu_26772_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_48_fu_32705_p3() {
    old_word_buffer_V_lo_48_fu_32705_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_6_32_reg_54144.read(): sel_tmp224_fu_32699_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_49_fu_26807_p3() {
    old_word_buffer_V_lo_49_fu_26807_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp227_fu_26800_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_4_fu_27933_p3() {
    old_word_buffer_V_lo_4_fu_27933_p3 = (!tmp_157_reg_50712.read()[0].is_01())? sc_lv<2>(): ((tmp_157_reg_50712.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp411_fu_27926_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_50_fu_32728_p3() {
    old_word_buffer_V_lo_50_fu_32728_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_6_33_reg_54159.read(): sel_tmp230_fu_32722_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_51_fu_23761_p3() {
    old_word_buffer_V_lo_51_fu_23761_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp233_fu_23754_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_52_fu_32751_p3() {
    old_word_buffer_V_lo_52_fu_32751_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_6_34_reg_54174.read(): sel_tmp236_fu_32745_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_53_fu_26968_p3() {
    old_word_buffer_V_lo_53_fu_26968_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp251_fu_26961_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_54_fu_32826_p3() {
    old_word_buffer_V_lo_54_fu_32826_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_6_31_reg_54129.read(): sel_tmp253_fu_32820_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_55_fu_26989_p3() {
    old_word_buffer_V_lo_55_fu_26989_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp255_fu_26982_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_56_fu_32843_p3() {
    old_word_buffer_V_lo_56_fu_32843_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_6_32_reg_54144.read(): sel_tmp257_fu_32837_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_57_fu_27010_p3() {
    old_word_buffer_V_lo_57_fu_27010_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp259_fu_27003_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_58_fu_32860_p3() {
    old_word_buffer_V_lo_58_fu_32860_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_6_33_reg_54159.read(): sel_tmp261_fu_32854_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_59_fu_23788_p3() {
    old_word_buffer_V_lo_59_fu_23788_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp263_fu_23781_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_5_fu_27983_p3() {
    old_word_buffer_V_lo_5_fu_27983_p3 = (!tmp_157_reg_50712.read()[0].is_01())? sc_lv<2>(): ((tmp_157_reg_50712.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp415_fu_27976_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_60_fu_32877_p3() {
    old_word_buffer_V_lo_60_fu_32877_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_6_34_reg_54174.read(): sel_tmp265_fu_32871_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_61_fu_27183_p3() {
    old_word_buffer_V_lo_61_fu_27183_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp284_fu_27176_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_62_fu_32952_p3() {
    old_word_buffer_V_lo_62_fu_32952_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_6_31_reg_54129.read(): sel_tmp285_fu_32947_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_63_fu_27197_p3() {
    old_word_buffer_V_lo_63_fu_27197_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp286_fu_27190_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_64_fu_32963_p3() {
    old_word_buffer_V_lo_64_fu_32963_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_6_32_reg_54144.read(): sel_tmp287_fu_32958_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_65_fu_27211_p3() {
    old_word_buffer_V_lo_65_fu_27211_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp288_fu_27204_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_66_fu_32974_p3() {
    old_word_buffer_V_lo_66_fu_32974_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_6_33_reg_54159.read(): sel_tmp289_fu_32969_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_67_fu_23808_p3() {
    old_word_buffer_V_lo_67_fu_23808_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp290_fu_23801_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_68_fu_32985_p3() {
    old_word_buffer_V_lo_68_fu_32985_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_6_34_reg_54174.read(): sel_tmp291_fu_32980_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_69_fu_33126_p3() {
    old_word_buffer_V_lo_69_fu_33126_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_105_reg_56057.read(): old_word_buffer_0_7_42_reg_54206.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_6_fu_28033_p3() {
    old_word_buffer_V_lo_6_fu_28033_p3 = (!tmp_157_reg_50712.read()[0].is_01())? sc_lv<2>(): ((tmp_157_reg_50712.read()[0].to_bool())? old_word_buffer_0_6_15_fu_1574.read(): sel_tmp419_fu_28026_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_70_fu_33131_p3() {
    old_word_buffer_V_lo_70_fu_33131_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_31_reg_54129.read(): old_word_buffer_0_7_43_reg_54213.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_71_fu_33136_p3() {
    old_word_buffer_V_lo_71_fu_33136_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_106_reg_56062.read(): old_word_buffer_0_7_44_reg_54230.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_72_fu_33141_p3() {
    old_word_buffer_V_lo_72_fu_33141_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_32_reg_54144.read(): old_word_buffer_0_7_45_reg_54237.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_73_fu_33146_p3() {
    old_word_buffer_V_lo_73_fu_33146_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_107_reg_56067.read(): old_word_buffer_0_7_46_reg_54254.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_74_fu_33151_p3() {
    old_word_buffer_V_lo_74_fu_33151_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_33_reg_54159.read(): old_word_buffer_0_7_47_reg_54261.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_75_fu_33156_p3() {
    old_word_buffer_V_lo_75_fu_33156_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? ap_reg_pp0_iter2_old_word_buffer_0_6_108_reg_53624.read(): ap_reg_pp0_iter2_old_word_buffer_0_7_48_reg_52184.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_76_fu_33161_p3() {
    old_word_buffer_V_lo_76_fu_33161_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_34_reg_54174.read(): ap_reg_pp0_iter2_old_word_buffer_0_7_49_reg_52193.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_77_fu_27340_p3() {
    old_word_buffer_V_lo_77_fu_27340_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_fu_682.read(): old_word_buffer_0_7_fu_686.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_78_fu_33166_p3() {
    old_word_buffer_V_lo_78_fu_33166_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_6_35_reg_54189.read(): ap_const_lv2_0);
}

void a0_bin_conv::thread_old_word_buffer_V_lo_79_fu_28744_p3() {
    old_word_buffer_V_lo_79_fu_28744_p3 = (!tmp_167_reg_50852.read()[0].is_01())? sc_lv<2>(): ((tmp_167_reg_50852.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp619_fu_28737_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_7_fu_23939_p3() {
    old_word_buffer_V_lo_7_fu_23939_p3 = (!tmp_157_reg_50712.read()[0].is_01())? sc_lv<2>(): ((tmp_157_reg_50712.read()[0].to_bool())? old_word_buffer_0_6_17_fu_1582.read(): sel_tmp423_fu_23932_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_80_fu_30300_p3() {
    old_word_buffer_V_lo_80_fu_30300_p3 = (!tmp_152_reg_50642.read()[0].is_01())? sc_lv<2>(): ((tmp_152_reg_50642.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp858_fu_30293_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_81_fu_30360_p3() {
    old_word_buffer_V_lo_81_fu_30360_p3 = (!tmp_152_reg_50642.read()[0].is_01())? sc_lv<2>(): ((tmp_152_reg_50642.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp863_fu_30353_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_82_fu_30420_p3() {
    old_word_buffer_V_lo_82_fu_30420_p3 = (!tmp_152_reg_50642.read()[0].is_01())? sc_lv<2>(): ((tmp_152_reg_50642.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp868_fu_30413_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_83_fu_24291_p3() {
    old_word_buffer_V_lo_83_fu_24291_p3 = (!tmp_152_reg_50642.read()[0].is_01())? sc_lv<2>(): ((tmp_152_reg_50642.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp873_fu_24284_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_84_fu_30550_p3() {
    old_word_buffer_V_lo_84_fu_30550_p3 = (!tmp_157_reg_50712.read()[0].is_01())? sc_lv<2>(): ((tmp_157_reg_50712.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp890_fu_30543_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_85_fu_30600_p3() {
    old_word_buffer_V_lo_85_fu_30600_p3 = (!tmp_157_reg_50712.read()[0].is_01())? sc_lv<2>(): ((tmp_157_reg_50712.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp894_fu_30593_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_86_fu_30650_p3() {
    old_word_buffer_V_lo_86_fu_30650_p3 = (!tmp_157_reg_50712.read()[0].is_01())? sc_lv<2>(): ((tmp_157_reg_50712.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp898_fu_30643_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_87_fu_24341_p3() {
    old_word_buffer_V_lo_87_fu_24341_p3 = (!tmp_157_reg_50712.read()[0].is_01())? sc_lv<2>(): ((tmp_157_reg_50712.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp902_fu_24334_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_88_fu_30780_p3() {
    old_word_buffer_V_lo_88_fu_30780_p3 = (!tmp_161_reg_50768.read()[0].is_01())? sc_lv<2>(): ((tmp_161_reg_50768.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp925_fu_30773_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_89_fu_30820_p3() {
    old_word_buffer_V_lo_89_fu_30820_p3 = (!tmp_161_reg_50768.read()[0].is_01())? sc_lv<2>(): ((tmp_161_reg_50768.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp928_fu_30813_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_8_fu_28163_p3() {
    old_word_buffer_V_lo_8_fu_28163_p3 = (!tmp_161_reg_50768.read()[0].is_01())? sc_lv<2>(): ((tmp_161_reg_50768.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp446_fu_28156_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_90_fu_30860_p3() {
    old_word_buffer_V_lo_90_fu_30860_p3 = (!tmp_161_reg_50768.read()[0].is_01())? sc_lv<2>(): ((tmp_161_reg_50768.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp931_fu_30853_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_91_fu_24391_p3() {
    old_word_buffer_V_lo_91_fu_24391_p3 = (!tmp_161_reg_50768.read()[0].is_01())? sc_lv<2>(): ((tmp_161_reg_50768.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp934_fu_24384_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_92_fu_30969_p3() {
    old_word_buffer_V_lo_92_fu_30969_p3 = (!tmp_164_reg_50810.read()[0].is_01())? sc_lv<2>(): ((tmp_164_reg_50810.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp963_fu_30962_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_93_fu_30999_p3() {
    old_word_buffer_V_lo_93_fu_30999_p3 = (!tmp_164_reg_50810.read()[0].is_01())? sc_lv<2>(): ((tmp_164_reg_50810.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp965_fu_30992_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_94_fu_31029_p3() {
    old_word_buffer_V_lo_94_fu_31029_p3 = (!tmp_164_reg_50810.read()[0].is_01())? sc_lv<2>(): ((tmp_164_reg_50810.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp967_fu_31022_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_95_fu_24425_p3() {
    old_word_buffer_V_lo_95_fu_24425_p3 = (!tmp_164_reg_50810.read()[0].is_01())? sc_lv<2>(): ((tmp_164_reg_50810.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp969_fu_24418_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_96_fu_31118_p3() {
    old_word_buffer_V_lo_96_fu_31118_p3 = (!tmp_166_reg_50838.read()[0].is_01())? sc_lv<2>(): ((tmp_166_reg_50838.read()[0].to_bool())? old_word_buffer_1_6_11_fu_1846.read(): sel_tmp1004_fu_31111_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_97_fu_31138_p3() {
    old_word_buffer_V_lo_97_fu_31138_p3 = (!tmp_166_reg_50838.read()[0].is_01())? sc_lv<2>(): ((tmp_166_reg_50838.read()[0].to_bool())? old_word_buffer_1_6_13_fu_1854.read(): sel_tmp1005_fu_31131_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_98_fu_31158_p3() {
    old_word_buffer_V_lo_98_fu_31158_p3 = (!tmp_166_reg_50838.read()[0].is_01())? sc_lv<2>(): ((tmp_166_reg_50838.read()[0].to_bool())? old_word_buffer_1_6_15_fu_1862.read(): sel_tmp1006_fu_31151_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_99_fu_24445_p3() {
    old_word_buffer_V_lo_99_fu_24445_p3 = (!tmp_166_reg_50838.read()[0].is_01())? sc_lv<2>(): ((tmp_166_reg_50838.read()[0].to_bool())? old_word_buffer_1_6_17_fu_1870.read(): sel_tmp1007_fu_24438_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_9_fu_28203_p3() {
    old_word_buffer_V_lo_9_fu_28203_p3 = (!tmp_161_reg_50768.read()[0].is_01())? sc_lv<2>(): ((tmp_161_reg_50768.read()[0].to_bool())? old_word_buffer_0_6_13_fu_1566.read(): sel_tmp449_fu_28196_p3.read());
}

void a0_bin_conv::thread_old_word_buffer_V_lo_fu_27683_p3() {
    old_word_buffer_V_lo_fu_27683_p3 = (!tmp_152_reg_50642.read()[0].is_01())? sc_lv<2>(): ((tmp_152_reg_50642.read()[0].to_bool())? old_word_buffer_0_6_11_fu_1558.read(): sel_tmp379_fu_27676_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_0_1_fu_33586_p3() {
    p_0133_0_i_0_1_fu_33586_p3 = (!brmerge_fu_33560_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge_fu_33560_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp407_fu_33578_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_0_2_fu_28122_p3() {
    p_0133_0_i_0_2_fu_28122_p3 = (!brmerge16_fu_28058_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge16_fu_28058_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp434_fu_28114_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_0_3_fu_28322_p3() {
    p_0133_0_i_0_3_fu_28322_p3 = (!brmerge18_reg_53698.read()[0].is_01())? sc_lv<2>(): ((brmerge18_reg_53698.read()[0].to_bool())? ap_const_lv2_0: sel_tmp464_fu_28314_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_0_4_fu_28480_p3() {
    p_0133_0_i_0_4_fu_28480_p3 = (!brmerge20_fu_28431_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge20_fu_28431_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp497_fu_28472_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_0_5_fu_28593_p3() {
    p_0133_0_i_0_5_fu_28593_p3 = (!brmerge22_fu_28557_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge22_fu_28557_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp533_fu_28585_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_0_6_fu_28680_p3() {
    p_0133_0_i_0_6_fu_28680_p3 = (!brmerge24_fu_28669_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge24_fu_28669_p2.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_V_lo_28_fu_28673_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_0_7_fu_34763_p3() {
    p_0133_0_i_0_7_fu_34763_p3 = (!brmerge26_fu_34759_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge26_fu_34759_p2.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_0_7_65_reg_56381.read());
}

void a0_bin_conv::thread_p_0133_0_i_1_1_fu_35895_p3() {
    p_0133_0_i_1_1_fu_35895_p3 = (!brmerge41_fu_35869_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge41_fu_35869_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp886_fu_35887_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_1_2_fu_30739_p3() {
    p_0133_0_i_1_2_fu_30739_p3 = (!brmerge43_fu_30675_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge43_fu_30675_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp913_fu_30731_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_1_3_fu_30939_p3() {
    p_0133_0_i_1_3_fu_30939_p3 = (!brmerge45_reg_53848.read()[0].is_01())? sc_lv<2>(): ((brmerge45_reg_53848.read()[0].to_bool())? ap_const_lv2_0: sel_tmp943_fu_30931_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_1_4_fu_31097_p3() {
    p_0133_0_i_1_4_fu_31097_p3 = (!brmerge47_fu_31048_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge47_fu_31048_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp976_fu_31089_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_1_5_fu_31210_p3() {
    p_0133_0_i_1_5_fu_31210_p3 = (!brmerge49_fu_31174_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge49_fu_31174_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp1012_fu_31202_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_1_6_fu_31297_p3() {
    p_0133_0_i_1_6_fu_31297_p3 = (!brmerge51_fu_31286_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge51_fu_31286_p2.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_V_lo_108_fu_31290_p3.read());
}

void a0_bin_conv::thread_p_0133_0_i_1_7_fu_37072_p3() {
    p_0133_0_i_1_7_fu_37072_p3 = (!brmerge53_fu_37068_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge53_fu_37068_p2.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_1_7_65_reg_57165.read());
}

void a0_bin_conv::thread_p_0150_2_phi_fu_18813_p8() {
    p_0150_2_phi_fu_18813_p8 = ap_phi_precharge_reg_pp2_iter3_p_0150_2_reg_18810.read();
}

void a0_bin_conv::thread_p_01571_1_fu_20888_p3() {
    p_01571_1_fu_20888_p3 = (!last_wrd_fu_20854_p2.read()[0].is_01())? sc_lv<8>(): ((last_wrd_fu_20854_p2.read()[0].to_bool())? ap_const_lv8_0: wrd_V_fu_20876_p2.read());
}

void a0_bin_conv::thread_p_0168_0_i_0_1_5_phi_fu_11995_p16() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, ap_reg_pp0_iter3_first_wrd_reg_51897.read()))) {
        p_0168_0_i_0_1_5_phi_fu_11995_p16 = ap_const_lv2_0;
    } else {
        p_0168_0_i_0_1_5_phi_fu_11995_p16 = ap_phi_precharge_reg_pp0_iter4_p_0168_0_i_0_1_5_reg_11992.read();
    }
}

void a0_bin_conv::thread_p_0168_0_i_0_7_1_fu_34717_p3() {
    p_0168_0_i_0_7_1_fu_34717_p3 = (!ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_0_7_43_reg_54213.read());
}

void a0_bin_conv::thread_p_0168_0_i_0_7_3_fu_34729_p3() {
    p_0168_0_i_0_7_3_fu_34729_p3 = (!ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_0_7_45_reg_54237.read());
}

void a0_bin_conv::thread_p_0168_0_i_0_7_5_fu_34741_p3() {
    p_0168_0_i_0_7_5_fu_34741_p3 = (!ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_0_7_47_reg_54261.read());
}

void a0_bin_conv::thread_p_0168_0_i_0_7_7_fu_34753_p3() {
    p_0168_0_i_0_7_7_fu_34753_p3 = (!ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter2_old_word_buffer_0_7_49_reg_52193.read());
}

void a0_bin_conv::thread_p_0168_0_i_1_1_5_phi_fu_16056_p16() {
    if ((esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1239_reg_50372.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter3_exitcond1_reg_51888.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, ap_reg_pp0_iter3_first_wrd_reg_51897.read()))) {
        p_0168_0_i_1_1_5_phi_fu_16056_p16 = ap_const_lv2_0;
    } else {
        p_0168_0_i_1_1_5_phi_fu_16056_p16 = ap_phi_precharge_reg_pp0_iter4_p_0168_0_i_1_1_5_reg_16053.read();
    }
}

void a0_bin_conv::thread_p_0168_0_i_1_7_1_fu_37026_p3() {
    p_0168_0_i_1_7_1_fu_37026_p3 = (!ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_1_7_44_reg_54617.read());
}

void a0_bin_conv::thread_p_0168_0_i_1_7_3_fu_37038_p3() {
    p_0168_0_i_1_7_3_fu_37038_p3 = (!ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_1_7_46_reg_54641.read());
}

void a0_bin_conv::thread_p_0168_0_i_1_7_5_fu_37050_p3() {
    p_0168_0_i_1_7_5_fu_37050_p3 = (!ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_1_7_48_reg_54664.read());
}

void a0_bin_conv::thread_p_0168_0_i_1_7_7_fu_37062_p3() {
    p_0168_0_i_1_7_7_fu_37062_p3 = (!ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].is_01())? sc_lv<2>(): ((ap_reg_pp0_iter2_first_wrd_reg_51897.read()[0].to_bool())? ap_const_lv2_0: ap_reg_pp0_iter2_old_word_buffer_1_7_42_reg_52212.read());
}

void a0_bin_conv::thread_p_0196_0_i_0_2_fu_33634_p3() {
    p_0196_0_i_0_2_fu_33634_p3 = (!tmp_172_reg_51367.read()[0].is_01())? sc_lv<2>(): ((tmp_172_reg_51367.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_1_0_reg_55417.read());
}

void a0_bin_conv::thread_p_0196_0_i_0_3_fu_33743_p3() {
    p_0196_0_i_0_3_fu_33743_p3 = (!sel_tmp98_reg_51419.read()[0].is_01())? sc_lv<2>(): ((sel_tmp98_reg_51419.read()[0].to_bool())? word_buffer_0_1_0_reg_55417.read(): sel_tmp443_fu_33737_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_0_4_fu_33901_p3() {
    p_0196_0_i_0_4_fu_33901_p3 = (!sel_tmp103_reg_51477.read()[0].is_01())? sc_lv<2>(): ((sel_tmp103_reg_51477.read()[0].to_bool())? word_buffer_0_2_0_reg_55355.read(): sel_tmp482_fu_33895_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_0_5_fu_34113_p3() {
    p_0196_0_i_0_5_fu_34113_p3 = (!sel_tmp112_reg_51581.read()[0].is_01())? sc_lv<2>(): ((sel_tmp112_reg_51581.read()[0].to_bool())? word_buffer_0_3_0_reg_55296.read(): sel_tmp524_fu_34107_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_0_6_fu_34379_p3() {
    p_0196_0_i_0_6_fu_34379_p3 = (!sel_tmp123_reg_51711.read()[0].is_01())? sc_lv<2>(): ((sel_tmp123_reg_51711.read()[0].to_bool())? word_buffer_0_4_0_reg_55244.read(): sel_tmp569_fu_34373_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_0_7_fu_34705_p3() {
    p_0196_0_i_0_7_fu_34705_p3 = (!sel_tmp136_reg_51867.read()[0].is_01())? sc_lv<2>(): ((sel_tmp136_reg_51867.read()[0].to_bool())? word_buffer_0_5_0_reg_55200.read(): sel_tmp614_fu_34699_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_1_2_fu_35943_p3() {
    p_0196_0_i_1_2_fu_35943_p3 = (!tmp_172_reg_51367.read()[0].is_01())? sc_lv<2>(): ((tmp_172_reg_51367.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_1_0_reg_54929.read());
}

void a0_bin_conv::thread_p_0196_0_i_1_3_fu_36052_p3() {
    p_0196_0_i_1_3_fu_36052_p3 = (!sel_tmp98_reg_51419.read()[0].is_01())? sc_lv<2>(): ((sel_tmp98_reg_51419.read()[0].to_bool())? word_buffer_1_1_0_reg_54929.read(): sel_tmp922_fu_36046_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_1_4_fu_36210_p3() {
    p_0196_0_i_1_4_fu_36210_p3 = (!sel_tmp103_reg_51477.read()[0].is_01())? sc_lv<2>(): ((sel_tmp103_reg_51477.read()[0].to_bool())? word_buffer_1_2_0_1_reg_55582.read(): sel_tmp961_fu_36204_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_1_5_fu_36422_p3() {
    p_0196_0_i_1_5_fu_36422_p3 = (!sel_tmp112_reg_51581.read()[0].is_01())? sc_lv<2>(): ((sel_tmp112_reg_51581.read()[0].to_bool())? word_buffer_1_3_0_reg_54858.read(): sel_tmp1003_fu_36416_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_1_6_fu_36688_p3() {
    p_0196_0_i_1_6_fu_36688_p3 = (!sel_tmp123_reg_51711.read()[0].is_01())? sc_lv<2>(): ((sel_tmp123_reg_51711.read()[0].to_bool())? word_buffer_1_4_0_reg_54806.read(): sel_tmp1048_fu_36682_p3.read());
}

void a0_bin_conv::thread_p_0196_0_i_1_7_fu_37014_p3() {
    p_0196_0_i_1_7_fu_37014_p3 = (!sel_tmp136_reg_51867.read()[0].is_01())? sc_lv<2>(): ((sel_tmp136_reg_51867.read()[0].to_bool())? word_buffer_1_5_0_reg_54762.read(): sel_tmp1093_fu_37008_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_0_1_fu_32483_p3() {
    p_0280_0_i_0_1_fu_32483_p3 = (!tmp_190_fu_32478_p2.read()[0].is_01())? sc_lv<2>(): ((tmp_190_fu_32478_p2.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_1_0_reg_55417.read());
}

void a0_bin_conv::thread_p_0280_0_i_0_2_fu_32653_p3() {
    p_0280_0_i_0_2_fu_32653_p3 = (!brmerge3_fu_32615_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge3_fu_32615_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp249_fu_32646_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_0_3_fu_32803_p3() {
    p_0280_0_i_0_3_fu_32803_p3 = (!brmerge5_fu_32757_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge5_fu_32757_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp283_fu_32796_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_0_4_fu_32936_p3() {
    p_0280_0_i_0_4_fu_32936_p3 = (!brmerge7_reg_55982.read()[0].is_01())? sc_lv<2>(): ((brmerge7_reg_55982.read()[0].to_bool())? ap_const_lv2_0: sel_tmp314_fu_32929_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_0_5_fu_33115_p3() {
    p_0280_0_i_0_5_fu_33115_p3 = (!brmerge9_reg_56040.read()[0].is_01())? sc_lv<2>(): ((brmerge9_reg_56040.read()[0].to_bool())? ap_const_lv2_0: sel_tmp341_fu_33108_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_0_6_fu_33294_p3() {
    p_0280_0_i_0_6_fu_33294_p3 = (!brmerge11_reg_56104.read()[0].is_01())? sc_lv<2>(): ((brmerge11_reg_56104.read()[0].to_bool())? ap_const_lv2_0: sel_tmp374_fu_33287_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_1_1_fu_34779_p3() {
    p_0280_0_i_1_1_fu_34779_p3 = (!tmp_210_fu_34774_p2.read()[0].is_01())? sc_lv<2>(): ((tmp_210_fu_34774_p2.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_1_0_reg_54929.read());
}

void a0_bin_conv::thread_p_0280_0_i_1_2_fu_34949_p3() {
    p_0280_0_i_1_2_fu_34949_p3 = (!brmerge30_fu_34911_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge30_fu_34911_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp728_fu_34942_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_1_3_fu_35099_p3() {
    p_0280_0_i_1_3_fu_35099_p3 = (!brmerge32_fu_35053_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge32_fu_35053_p2.read()[0].to_bool())? ap_const_lv2_0: sel_tmp762_fu_35092_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_1_4_fu_35232_p3() {
    p_0280_0_i_1_4_fu_35232_p3 = (!brmerge34_reg_56771.read()[0].is_01())? sc_lv<2>(): ((brmerge34_reg_56771.read()[0].to_bool())? ap_const_lv2_0: sel_tmp793_fu_35225_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_1_5_fu_35411_p3() {
    p_0280_0_i_1_5_fu_35411_p3 = (!brmerge36_reg_56829.read()[0].is_01())? sc_lv<2>(): ((brmerge36_reg_56829.read()[0].to_bool())? ap_const_lv2_0: sel_tmp820_fu_35404_p3.read());
}

void a0_bin_conv::thread_p_0280_0_i_1_6_fu_35615_p3() {
    p_0280_0_i_1_6_fu_35615_p3 = (!brmerge38_reg_56888.read()[0].is_01())? sc_lv<2>(): ((brmerge38_reg_56888.read()[0].to_bool())? ap_const_lv2_0: sel_tmp853_fu_35608_p3.read());
}

void a0_bin_conv::thread_p_0296_0_i_0_5_1_phi_fu_6994_p14() {
    if (esl_seteq<1,1,1>(ap_condition_35187.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) {
            p_0296_0_i_0_5_1_phi_fu_6994_p14 = word_buffer_0_0_2_1_reg_55550.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) {
            p_0296_0_i_0_5_1_phi_fu_6994_p14 = ap_reg_pp0_iter2_word_buffer_0_1_2_1_reg_53555.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) {
            p_0296_0_i_0_5_1_phi_fu_6994_p14 = ap_reg_pp0_iter2_word_buffer_0_2_2_1_reg_53444.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) {
            p_0296_0_i_0_5_1_phi_fu_6994_p14 = ap_reg_pp0_iter2_word_buffer_0_3_2_1_reg_53345.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) {
            p_0296_0_i_0_5_1_phi_fu_6994_p14 = ap_reg_pp0_iter2_word_buffer_0_4_2_1_reg_53258.read();
        } else if (esl_seteq<1,1,1>(ap_condition_35191.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_5_1_phi_fu_6994_p14 = ap_reg_pp0_iter2_word_buffer_0_5_2_1_reg_53183.read();
        } else {
            p_0296_0_i_0_5_1_phi_fu_6994_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_5_1_reg_6990.read();
        }
    } else {
        p_0296_0_i_0_5_1_phi_fu_6994_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_5_1_reg_6990.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_0_5_3_phi_fu_7038_p14() {
    if (esl_seteq<1,1,1>(ap_condition_35187.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) {
            p_0296_0_i_0_5_3_phi_fu_7038_p14 = word_buffer_0_0_4_1_reg_55518.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) {
            p_0296_0_i_0_5_3_phi_fu_7038_p14 = ap_reg_pp0_iter2_word_buffer_0_1_4_1_reg_53517.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) {
            p_0296_0_i_0_5_3_phi_fu_7038_p14 = ap_reg_pp0_iter2_word_buffer_0_2_4_1_reg_53410.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) {
            p_0296_0_i_0_5_3_phi_fu_7038_p14 = ap_reg_pp0_iter2_word_buffer_0_3_4_1_reg_53315.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) {
            p_0296_0_i_0_5_3_phi_fu_7038_p14 = ap_reg_pp0_iter2_word_buffer_0_4_4_1_reg_53232.read();
        } else if (esl_seteq<1,1,1>(ap_condition_35191.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_5_3_phi_fu_7038_p14 = ap_reg_pp0_iter2_word_buffer_0_5_4_1_reg_53161.read();
        } else {
            p_0296_0_i_0_5_3_phi_fu_7038_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_5_3_reg_7034.read();
        }
    } else {
        p_0296_0_i_0_5_3_phi_fu_7038_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_5_3_reg_7034.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_0_5_5_phi_fu_7082_p14() {
    if (esl_seteq<1,1,1>(ap_condition_35187.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) {
            p_0296_0_i_0_5_5_phi_fu_7082_p14 = word_buffer_0_0_6_1_reg_55486.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) {
            p_0296_0_i_0_5_5_phi_fu_7082_p14 = ap_reg_pp0_iter2_word_buffer_0_1_6_1_reg_53479.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) {
            p_0296_0_i_0_5_5_phi_fu_7082_p14 = ap_reg_pp0_iter2_word_buffer_0_2_6_1_reg_53376.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) {
            p_0296_0_i_0_5_5_phi_fu_7082_p14 = ap_reg_pp0_iter2_word_buffer_0_3_6_1_reg_53285.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) {
            p_0296_0_i_0_5_5_phi_fu_7082_p14 = ap_reg_pp0_iter2_word_buffer_0_4_6_1_reg_53206.read();
        } else if (esl_seteq<1,1,1>(ap_condition_35191.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_5_5_phi_fu_7082_p14 = ap_reg_pp0_iter2_word_buffer_0_5_6_1_reg_53139.read();
        } else {
            p_0296_0_i_0_5_5_phi_fu_7082_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_5_5_reg_7078.read();
        }
    } else {
        p_0296_0_i_0_5_5_phi_fu_7082_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_5_5_reg_7078.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_0_5_7_phi_fu_7126_p14() {
    if (esl_seteq<1,1,1>(ap_condition_35187.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) {
            p_0296_0_i_0_5_7_phi_fu_7126_p14 = word_buffer_0_1_0_1_reg_55454.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) {
            p_0296_0_i_0_5_7_phi_fu_7126_p14 = word_buffer_0_2_0_1_reg_55388.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) {
            p_0296_0_i_0_5_7_phi_fu_7126_p14 = word_buffer_0_3_0_1_reg_55326.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) {
            p_0296_0_i_0_5_7_phi_fu_7126_p14 = word_buffer_0_4_0_1_reg_55270.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) {
            p_0296_0_i_0_5_7_phi_fu_7126_p14 = word_buffer_0_5_0_1_reg_55221.read();
        } else if (esl_seteq<1,1,1>(ap_condition_35191.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_5_7_phi_fu_7126_p14 = word_buffer_0_6_0_1_reg_55181.read();
        } else {
            p_0296_0_i_0_5_7_phi_fu_7126_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_5_7_reg_7122.read();
        }
    } else {
        p_0296_0_i_0_5_7_phi_fu_7126_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_5_7_reg_7122.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_0_6_1_phi_fu_7172_p16() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_7124.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_1_phi_fu_7172_p16 = word_buffer_0_0_2_1_reg_55550.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7117.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_1_phi_fu_7172_p16 = ap_reg_pp0_iter2_word_buffer_0_1_2_1_reg_53555.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7112.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_1_phi_fu_7172_p16 = ap_reg_pp0_iter2_word_buffer_0_2_2_1_reg_53444.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7107.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_1_phi_fu_7172_p16 = ap_reg_pp0_iter2_word_buffer_0_3_2_1_reg_53345.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7102.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_1_phi_fu_7172_p16 = ap_reg_pp0_iter2_word_buffer_0_4_2_1_reg_53258.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7097.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_1_phi_fu_7172_p16 = ap_reg_pp0_iter2_word_buffer_0_5_2_1_reg_53183.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7093.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_1_phi_fu_7172_p16 = ap_reg_pp0_iter2_word_buffer_0_6_2_1_reg_53120.read();
        } else {
            p_0296_0_i_0_6_1_phi_fu_7172_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_6_1_reg_7168.read();
        }
    } else {
        p_0296_0_i_0_6_1_phi_fu_7172_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_6_1_reg_7168.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_0_6_3_phi_fu_7220_p16() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_7124.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_3_phi_fu_7220_p16 = word_buffer_0_0_4_1_reg_55518.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7117.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_3_phi_fu_7220_p16 = ap_reg_pp0_iter2_word_buffer_0_1_4_1_reg_53517.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7112.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_3_phi_fu_7220_p16 = ap_reg_pp0_iter2_word_buffer_0_2_4_1_reg_53410.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7107.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_3_phi_fu_7220_p16 = ap_reg_pp0_iter2_word_buffer_0_3_4_1_reg_53315.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7102.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_3_phi_fu_7220_p16 = ap_reg_pp0_iter2_word_buffer_0_4_4_1_reg_53232.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7097.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_3_phi_fu_7220_p16 = ap_reg_pp0_iter2_word_buffer_0_5_4_1_reg_53161.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7093.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_3_phi_fu_7220_p16 = ap_reg_pp0_iter2_word_buffer_0_6_4_1_reg_53102.read();
        } else {
            p_0296_0_i_0_6_3_phi_fu_7220_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_6_3_reg_7216.read();
        }
    } else {
        p_0296_0_i_0_6_3_phi_fu_7220_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_6_3_reg_7216.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_0_6_5_phi_fu_7268_p16() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_7124.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_5_phi_fu_7268_p16 = word_buffer_0_0_6_1_reg_55486.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7117.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_5_phi_fu_7268_p16 = ap_reg_pp0_iter2_word_buffer_0_1_6_1_reg_53479.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7112.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_5_phi_fu_7268_p16 = ap_reg_pp0_iter2_word_buffer_0_2_6_1_reg_53376.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7107.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_5_phi_fu_7268_p16 = ap_reg_pp0_iter2_word_buffer_0_3_6_1_reg_53285.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7102.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_5_phi_fu_7268_p16 = ap_reg_pp0_iter2_word_buffer_0_4_6_1_reg_53206.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7097.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_5_phi_fu_7268_p16 = ap_reg_pp0_iter2_word_buffer_0_5_6_1_reg_53139.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7093.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_5_phi_fu_7268_p16 = ap_reg_pp0_iter2_word_buffer_0_6_6_1_reg_53084.read();
        } else {
            p_0296_0_i_0_6_5_phi_fu_7268_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_6_5_reg_7264.read();
        }
    } else {
        p_0296_0_i_0_6_5_phi_fu_7268_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_6_5_reg_7264.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_0_6_7_phi_fu_7314_p16() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_7165.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = ap_const_lv2_0;
        } else if (esl_seteq<1,1,1>(ap_condition_7124.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = word_buffer_0_1_0_1_reg_55454.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7117.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = word_buffer_0_2_0_1_reg_55388.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7112.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = word_buffer_0_3_0_1_reg_55326.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7107.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = word_buffer_0_4_0_1_reg_55270.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7102.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = word_buffer_0_5_0_1_reg_55221.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7097.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = word_buffer_0_6_0_1_reg_55181.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7093.read(), ap_const_boolean_1)) {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = word_buffer_0_7_0_1_reg_55149.read();
        } else {
            p_0296_0_i_0_6_7_phi_fu_7314_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_6_7_reg_7311.read();
        }
    } else {
        p_0296_0_i_0_6_7_phi_fu_7314_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_0_6_7_reg_7311.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_1_5_1_phi_fu_8859_p14() {
    if (esl_seteq<1,1,1>(ap_condition_35187.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) {
            p_0296_0_i_1_5_1_phi_fu_8859_p14 = word_buffer_1_0_2_1_reg_55062.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) {
            p_0296_0_i_1_5_1_phi_fu_8859_p14 = ap_reg_pp0_iter2_word_buffer_1_1_2_1_reg_53010.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) {
            p_0296_0_i_1_5_1_phi_fu_8859_p14 = ap_reg_pp0_iter2_word_buffer_1_2_2_1_reg_52899.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) {
            p_0296_0_i_1_5_1_phi_fu_8859_p14 = ap_reg_pp0_iter2_word_buffer_1_3_2_1_reg_52800.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) {
            p_0296_0_i_1_5_1_phi_fu_8859_p14 = ap_reg_pp0_iter2_word_buffer_1_4_2_1_reg_52713.read();
        } else if (esl_seteq<1,1,1>(ap_condition_35191.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_5_1_phi_fu_8859_p14 = ap_reg_pp0_iter2_word_buffer_1_5_2_1_reg_52638.read();
        } else {
            p_0296_0_i_1_5_1_phi_fu_8859_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_5_1_reg_8855.read();
        }
    } else {
        p_0296_0_i_1_5_1_phi_fu_8859_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_5_1_reg_8855.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_1_5_3_phi_fu_8903_p14() {
    if (esl_seteq<1,1,1>(ap_condition_35187.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) {
            p_0296_0_i_1_5_3_phi_fu_8903_p14 = word_buffer_1_0_4_1_reg_55030.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) {
            p_0296_0_i_1_5_3_phi_fu_8903_p14 = ap_reg_pp0_iter2_word_buffer_1_1_4_1_reg_52972.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) {
            p_0296_0_i_1_5_3_phi_fu_8903_p14 = ap_reg_pp0_iter2_word_buffer_1_2_4_1_reg_52865.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) {
            p_0296_0_i_1_5_3_phi_fu_8903_p14 = ap_reg_pp0_iter2_word_buffer_1_3_4_1_reg_52770.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) {
            p_0296_0_i_1_5_3_phi_fu_8903_p14 = ap_reg_pp0_iter2_word_buffer_1_4_4_1_reg_52687.read();
        } else if (esl_seteq<1,1,1>(ap_condition_35191.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_5_3_phi_fu_8903_p14 = ap_reg_pp0_iter2_word_buffer_1_5_4_1_reg_52616.read();
        } else {
            p_0296_0_i_1_5_3_phi_fu_8903_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_5_3_reg_8899.read();
        }
    } else {
        p_0296_0_i_1_5_3_phi_fu_8903_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_5_3_reg_8899.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_1_5_5_phi_fu_8947_p14() {
    if (esl_seteq<1,1,1>(ap_condition_35187.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) {
            p_0296_0_i_1_5_5_phi_fu_8947_p14 = word_buffer_1_0_6_1_reg_54998.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) {
            p_0296_0_i_1_5_5_phi_fu_8947_p14 = ap_reg_pp0_iter2_word_buffer_1_1_6_1_reg_52934.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) {
            p_0296_0_i_1_5_5_phi_fu_8947_p14 = ap_reg_pp0_iter2_word_buffer_1_2_6_1_reg_52831.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) {
            p_0296_0_i_1_5_5_phi_fu_8947_p14 = ap_reg_pp0_iter2_word_buffer_1_3_6_1_reg_52740.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) {
            p_0296_0_i_1_5_5_phi_fu_8947_p14 = ap_reg_pp0_iter2_word_buffer_1_4_6_1_reg_52661.read();
        } else if (esl_seteq<1,1,1>(ap_condition_35191.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_5_5_phi_fu_8947_p14 = ap_reg_pp0_iter2_word_buffer_1_5_6_1_reg_52594.read();
        } else {
            p_0296_0_i_1_5_5_phi_fu_8947_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_5_5_reg_8943.read();
        }
    } else {
        p_0296_0_i_1_5_5_phi_fu_8947_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_5_5_reg_8943.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_1_5_7_phi_fu_8991_p14() {
    if (esl_seteq<1,1,1>(ap_condition_35187.read(), ap_const_boolean_1)) {
        if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_3)) {
            p_0296_0_i_1_5_7_phi_fu_8991_p14 = word_buffer_1_1_0_1_reg_54966.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_4)) {
            p_0296_0_i_1_5_7_phi_fu_8991_p14 = word_buffer_1_2_0_reg_55094.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_5)) {
            p_0296_0_i_1_5_7_phi_fu_8991_p14 = word_buffer_1_3_0_1_reg_54888.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_6)) {
            p_0296_0_i_1_5_7_phi_fu_8991_p14 = word_buffer_1_4_0_1_reg_54832.read();
        } else if (esl_seteq<1,3,3>(tmp_1231_reg_50210.read(), ap_const_lv3_7)) {
            p_0296_0_i_1_5_7_phi_fu_8991_p14 = word_buffer_1_5_0_1_reg_54783.read();
        } else if (esl_seteq<1,1,1>(ap_condition_35191.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_5_7_phi_fu_8991_p14 = word_buffer_1_6_0_1_reg_54743.read();
        } else {
            p_0296_0_i_1_5_7_phi_fu_8991_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_5_7_reg_8987.read();
        }
    } else {
        p_0296_0_i_1_5_7_phi_fu_8991_p14 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_5_7_reg_8987.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_1_6_1_phi_fu_9037_p16() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_7124.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_1_phi_fu_9037_p16 = word_buffer_1_0_2_1_reg_55062.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7117.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_1_phi_fu_9037_p16 = ap_reg_pp0_iter2_word_buffer_1_1_2_1_reg_53010.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7112.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_1_phi_fu_9037_p16 = ap_reg_pp0_iter2_word_buffer_1_2_2_1_reg_52899.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7107.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_1_phi_fu_9037_p16 = ap_reg_pp0_iter2_word_buffer_1_3_2_1_reg_52800.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7102.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_1_phi_fu_9037_p16 = ap_reg_pp0_iter2_word_buffer_1_4_2_1_reg_52713.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7097.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_1_phi_fu_9037_p16 = ap_reg_pp0_iter2_word_buffer_1_5_2_1_reg_52638.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7093.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_1_phi_fu_9037_p16 = ap_reg_pp0_iter2_word_buffer_1_6_2_1_reg_52575.read();
        } else {
            p_0296_0_i_1_6_1_phi_fu_9037_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_6_1_reg_9033.read();
        }
    } else {
        p_0296_0_i_1_6_1_phi_fu_9037_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_6_1_reg_9033.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_1_6_3_phi_fu_9085_p16() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_7124.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_3_phi_fu_9085_p16 = word_buffer_1_0_4_1_reg_55030.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7117.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_3_phi_fu_9085_p16 = ap_reg_pp0_iter2_word_buffer_1_1_4_1_reg_52972.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7112.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_3_phi_fu_9085_p16 = ap_reg_pp0_iter2_word_buffer_1_2_4_1_reg_52865.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7107.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_3_phi_fu_9085_p16 = ap_reg_pp0_iter2_word_buffer_1_3_4_1_reg_52770.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7102.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_3_phi_fu_9085_p16 = ap_reg_pp0_iter2_word_buffer_1_4_4_1_reg_52687.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7097.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_3_phi_fu_9085_p16 = ap_reg_pp0_iter2_word_buffer_1_5_4_1_reg_52616.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7093.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_3_phi_fu_9085_p16 = ap_reg_pp0_iter2_word_buffer_1_6_4_1_reg_52557.read();
        } else {
            p_0296_0_i_1_6_3_phi_fu_9085_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_6_3_reg_9081.read();
        }
    } else {
        p_0296_0_i_1_6_3_phi_fu_9085_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_6_3_reg_9081.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_1_6_5_phi_fu_9133_p16() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_7124.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_5_phi_fu_9133_p16 = word_buffer_1_0_6_1_reg_54998.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7117.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_5_phi_fu_9133_p16 = ap_reg_pp0_iter2_word_buffer_1_1_6_1_reg_52934.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7112.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_5_phi_fu_9133_p16 = ap_reg_pp0_iter2_word_buffer_1_2_6_1_reg_52831.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7107.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_5_phi_fu_9133_p16 = ap_reg_pp0_iter2_word_buffer_1_3_6_1_reg_52740.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7102.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_5_phi_fu_9133_p16 = ap_reg_pp0_iter2_word_buffer_1_4_6_1_reg_52661.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7097.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_5_phi_fu_9133_p16 = ap_reg_pp0_iter2_word_buffer_1_5_6_1_reg_52594.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7093.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_5_phi_fu_9133_p16 = ap_reg_pp0_iter2_word_buffer_1_6_6_1_reg_52539.read();
        } else {
            p_0296_0_i_1_6_5_phi_fu_9133_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_6_5_reg_9129.read();
        }
    } else {
        p_0296_0_i_1_6_5_phi_fu_9133_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_6_5_reg_9129.read();
    }
}

void a0_bin_conv::thread_p_0296_0_i_1_6_7_phi_fu_9179_p16() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter3.read()))) {
        if (esl_seteq<1,1,1>(ap_condition_7165.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = ap_const_lv2_0;
        } else if (esl_seteq<1,1,1>(ap_condition_7124.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = word_buffer_1_1_0_1_reg_54966.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7117.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = word_buffer_1_2_0_reg_55094.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7112.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = word_buffer_1_3_0_1_reg_54888.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7107.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = word_buffer_1_4_0_1_reg_54832.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7102.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = word_buffer_1_5_0_1_reg_54783.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7097.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = word_buffer_1_6_0_1_reg_54743.read();
        } else if (esl_seteq<1,1,1>(ap_condition_7093.read(), ap_const_boolean_1)) {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = word_buffer_1_7_0_1_reg_54711.read();
        } else {
            p_0296_0_i_1_6_7_phi_fu_9179_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_6_7_reg_9176.read();
        }
    } else {
        p_0296_0_i_1_6_7_phi_fu_9179_p16 = ap_phi_precharge_reg_pp0_iter3_p_0296_0_i_1_6_7_reg_9176.read();
    }
}

void a0_bin_conv::thread_p_0362_0_i_0_1_fu_26649_p3() {
    p_0362_0_i_0_1_fu_26649_p3 = (!sel_tmp83_reg_51307.read()[0].is_01())? sc_lv<2>(): ((sel_tmp83_reg_51307.read()[0].to_bool())? old_word_buffer_0_2_fu_666.read(): sel_tmp212_fu_26642_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_0_2_fu_26842_p3() {
    p_0362_0_i_0_2_fu_26842_p3 = (!sel_tmp87_reg_51331.read()[0].is_01())? sc_lv<2>(): ((sel_tmp87_reg_51331.read()[0].to_bool())? old_word_buffer_0_3_fu_670.read(): sel_tmp240_fu_26835_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_0_3_fu_27038_p3() {
    p_0362_0_i_0_3_fu_27038_p3 = (!sel_tmp91_reg_51349.read()[0].is_01())? sc_lv<2>(): ((sel_tmp91_reg_51349.read()[0].to_bool())? old_word_buffer_0_4_fu_674.read(): sel_tmp268_fu_27031_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_0_4_fu_27232_p3() {
    p_0362_0_i_0_4_fu_27232_p3 = (!sel_tmp94_reg_51361.read()[0].is_01())? sc_lv<2>(): ((sel_tmp94_reg_51361.read()[0].to_bool())? old_word_buffer_0_5_fu_678.read(): sel_tmp293_fu_27225_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_0_5_fu_27347_p3() {
    p_0362_0_i_0_5_fu_27347_p3 = (!lb_5_reg_45883.read()[0].is_01())? sc_lv<2>(): ((lb_5_reg_45883.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_V_lo_77_fu_27340_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_0_6_fu_27480_p3() {
    p_0362_0_i_0_6_fu_27480_p3 = (!lb_6_reg_45907.read()[0].is_01())? sc_lv<2>(): ((lb_6_reg_45907.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_0_7_fu_686.read());
}

void a0_bin_conv::thread_p_0362_0_i_1_1_fu_29283_p3() {
    p_0362_0_i_1_1_fu_29283_p3 = (!sel_tmp83_reg_51307.read()[0].is_01())? sc_lv<2>(): ((sel_tmp83_reg_51307.read()[0].to_bool())? old_word_buffer_1_2_fu_694.read(): sel_tmp691_fu_29276_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_1_2_fu_29476_p3() {
    p_0362_0_i_1_2_fu_29476_p3 = (!sel_tmp87_reg_51331.read()[0].is_01())? sc_lv<2>(): ((sel_tmp87_reg_51331.read()[0].to_bool())? old_word_buffer_1_3_fu_698.read(): sel_tmp719_fu_29469_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_1_3_fu_29672_p3() {
    p_0362_0_i_1_3_fu_29672_p3 = (!sel_tmp91_reg_51349.read()[0].is_01())? sc_lv<2>(): ((sel_tmp91_reg_51349.read()[0].to_bool())? old_word_buffer_1_4_fu_702.read(): sel_tmp747_fu_29665_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_1_4_fu_29866_p3() {
    p_0362_0_i_1_4_fu_29866_p3 = (!sel_tmp94_reg_51361.read()[0].is_01())? sc_lv<2>(): ((sel_tmp94_reg_51361.read()[0].to_bool())? old_word_buffer_1_5_fu_706.read(): sel_tmp772_fu_29859_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_1_5_fu_29988_p3() {
    p_0362_0_i_1_5_fu_29988_p3 = (!lb_5_reg_45883.read()[0].is_01())? sc_lv<2>(): ((lb_5_reg_45883.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_V_lo_157_fu_29981_p3.read());
}

void a0_bin_conv::thread_p_0362_0_i_1_6_fu_30097_p3() {
    p_0362_0_i_1_6_fu_30097_p3 = (!lb_6_reg_45907.read()[0].is_01())? sc_lv<2>(): ((lb_6_reg_45907.read()[0].to_bool())? ap_const_lv2_0: old_word_buffer_1_7_fu_714.read());
}

void a0_bin_conv::thread_p_2_phi_fu_18802_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp2_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond_reg_61235.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp2_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp2_stage0.read(), ap_const_boolean_0))) {
        p_2_phi_fu_18802_p4 = w_V_1_reg_61239.read();
    } else {
        p_2_phi_fu_18802_p4 = p_2_reg_18798.read();
    }
}

void a0_bin_conv::thread_p_Repl2_19_10_fu_45395_p1() {
    p_Repl2_19_10_fu_45395_p1 = esl_zext<64,1>(tmp_310_10_reg_61979.read());
}

void a0_bin_conv::thread_p_Repl2_19_11_fu_45418_p1() {
    p_Repl2_19_11_fu_45418_p1 = esl_zext<64,1>(tmp_310_11_reg_61984.read());
}

void a0_bin_conv::thread_p_Repl2_19_12_fu_45441_p1() {
    p_Repl2_19_12_fu_45441_p1 = esl_zext<64,1>(tmp_310_12_reg_61989.read());
}

void a0_bin_conv::thread_p_Repl2_19_13_fu_45464_p1() {
    p_Repl2_19_13_fu_45464_p1 = esl_zext<64,1>(tmp_310_13_reg_61994.read());
}

void a0_bin_conv::thread_p_Repl2_19_14_fu_45487_p1() {
    p_Repl2_19_14_fu_45487_p1 = esl_zext<64,1>(tmp_310_14_reg_61999.read());
}

void a0_bin_conv::thread_p_Repl2_19_1_fu_45165_p1() {
    p_Repl2_19_1_fu_45165_p1 = esl_zext<64,1>(tmp_310_1_reg_61929.read());
}

void a0_bin_conv::thread_p_Repl2_19_2_fu_45188_p1() {
    p_Repl2_19_2_fu_45188_p1 = esl_zext<64,1>(tmp_310_2_reg_61934.read());
}

void a0_bin_conv::thread_p_Repl2_19_3_fu_45211_p1() {
    p_Repl2_19_3_fu_45211_p1 = esl_zext<64,1>(tmp_310_3_reg_61939.read());
}

void a0_bin_conv::thread_p_Repl2_19_4_fu_45234_p1() {
    p_Repl2_19_4_fu_45234_p1 = esl_zext<64,1>(tmp_310_4_reg_61944.read());
}

void a0_bin_conv::thread_p_Repl2_19_5_fu_45257_p1() {
    p_Repl2_19_5_fu_45257_p1 = esl_zext<64,1>(tmp_310_5_reg_61949.read());
}

void a0_bin_conv::thread_p_Repl2_19_6_fu_45280_p1() {
    p_Repl2_19_6_fu_45280_p1 = esl_zext<64,1>(tmp_310_6_reg_61954.read());
}

void a0_bin_conv::thread_p_Repl2_19_7_fu_45303_p1() {
    p_Repl2_19_7_fu_45303_p1 = esl_zext<64,1>(tmp_310_7_reg_61959.read());
}

void a0_bin_conv::thread_p_Repl2_19_8_fu_45326_p1() {
    p_Repl2_19_8_fu_45326_p1 = esl_zext<64,1>(tmp_310_8_reg_61964.read());
}

void a0_bin_conv::thread_p_Repl2_19_9_fu_45349_p1() {
    p_Repl2_19_9_fu_45349_p1 = esl_zext<64,1>(tmp_310_9_reg_61969.read());
}

void a0_bin_conv::thread_p_Repl2_19_s_fu_45372_p1() {
    p_Repl2_19_s_fu_45372_p1 = esl_zext<64,1>(tmp_310_s_reg_61974.read());
}

void a0_bin_conv::thread_p_Repl2_s_fu_45142_p1() {
    p_Repl2_s_fu_45142_p1 = esl_zext<64,1>(tmp_142_reg_61924.read());
}

void a0_bin_conv::thread_p_Result_1_fu_45547_p5() {
    p_Result_1_fu_45547_p5 = esl_partset<64,64,16,32,32>(r_V_19_fu_45539_p1.read(), tmp_1530_fu_45543_p1.read(), ap_const_lv32_30, ap_const_lv32_3F);
}

void a0_bin_conv::thread_p_Result_98_s_fu_45067_p65() {
    p_Result_98_s_fu_45067_p65 = esl_concat<63,1>(esl_concat<62,1>(esl_concat<61,1>(esl_concat<60,1>(esl_concat<59,1>(esl_concat<58,1>(esl_concat<57,1>(esl_concat<56,1>(esl_concat<55,1>(esl_concat<54,1>(esl_concat<53,1>(esl_concat<52,1>(esl_concat<51,1>(esl_concat<50,1>(esl_concat<49,1>(esl_concat<48,1>(esl_concat<47,1>(esl_concat<46,1>(esl_concat<45,1>(esl_concat<44,1>(esl_concat<43,1>(esl_concat<42,1>(esl_concat<41,1>(esl_concat<40,1>(esl_concat<39,1>(esl_concat<38,1>(esl_concat<37,1>(esl_concat<36,1>(esl_concat<35,1>(esl_concat<34,1>(esl_concat<33,1>(esl_concat<32,1>(esl_concat<31,1>(esl_concat<30,1>(esl_concat<29,1>(esl_concat<28,1>(esl_concat<27,1>(esl_concat<26,1>(esl_concat<25,1>(esl_concat<24,1>(esl_concat<23,1>(esl_concat<22,1>(esl_concat<21,1>(esl_concat<20,1>(esl_concat<19,1>(esl_concat<18,1>(esl_concat<17,1>(esl_concat<16,1>(esl_concat<15,1>(esl_concat<14,1>(esl_concat<13,1>(esl_concat<12,1>(esl_concat<11,1>(esl_concat<10,1>(esl_concat<9,1>(esl_concat<8,1>(esl_concat<7,1>(esl_concat<6,1>(esl_concat<5,1>(esl_concat<4,1>(esl_concat<3,1>(esl_concat<2,1>(esl_concat<1,1>(not_62_reg_61919.read(), not_61_reg_61914.read()), not_60_reg_61909.read()), not_59_reg_61904.read()), not_58_reg_61899.read()), not_57_reg_61894.read()), not_56_reg_61889.read()), not_55_reg_61884.read()), not_54_reg_61879.read()), not_53_reg_61874.read()), not_52_reg_61869.read()), not_51_reg_61864.read()), not_50_reg_61859.read()), not_49_reg_61854.read()), not_48_reg_61849.read()), not_47_reg_61844.read()), not_46_reg_61839.read()), not_45_reg_61834.read()), not_44_reg_61829.read()), not_43_reg_61824.read()), not_42_reg_61819.read()), not_41_reg_61814.read()), not_40_reg_61809.read()), not_39_reg_61804.read()), not_38_reg_61799.read()), not_37_reg_61794.read()), not_36_reg_61789.read()), not_35_reg_61784.read()), not_34_reg_61779.read()), not_33_reg_61774.read()), not_32_reg_61769.read()), not_31_reg_61764.read()), not_30_reg_61759.read()), not_29_reg_61754.read()), not_28_reg_61749.read()), not_27_reg_61744.read()), not_26_reg_61739.read()), not_25_reg_61734.read()), not_24_reg_61729.read()), not_23_reg_61724.read()), not_22_reg_61719.read()), not_21_reg_61714.read()), not_20_reg_61709.read()), not_19_reg_61704.read()), not_18_reg_61699.read()), not_17_reg_61694.read()), not_16_reg_61689.read()), not_15_reg_61684.read()), not_14_reg_61679.read()), not_13_reg_61674.read()), not_12_reg_61669.read()), not_11_reg_61664.read()), not_10_reg_61659.read()), not_s_70_reg_61654.read()), not_9_reg_61649.read()), not_8_reg_61644.read()), not_7_reg_61639.read()), not_6_reg_61634.read()), not_5_reg_61629.read()), not_4_reg_61624.read()), not_3_reg_61619.read()), not_2_reg_61614.read()), not_1_reg_61609.read()), not_s_reg_61604.read());
}

void a0_bin_conv::thread_p_Result_99_s_fu_43964_p33() {
    p_Result_99_s_fu_43964_p33 = esl_concat<31,1>(esl_concat<30,1>(esl_concat<29,1>(esl_concat<28,1>(esl_concat<27,1>(esl_concat<26,1>(esl_concat<25,1>(esl_concat<24,1>(esl_concat<23,1>(esl_concat<22,1>(esl_concat<21,1>(esl_concat<20,1>(esl_concat<19,1>(esl_concat<18,1>(esl_concat<17,1>(esl_concat<16,1>(esl_concat<15,1>(esl_concat<14,1>(esl_concat<13,1>(esl_concat<12,1>(esl_concat<11,1>(esl_concat<10,1>(esl_concat<9,1>(esl_concat<8,1>(esl_concat<7,1>(esl_concat<6,1>(esl_concat<5,1>(esl_concat<4,1>(esl_concat<3,1>(esl_concat<2,1>(esl_concat<1,1>(tmp_286_31_fu_43958_p2.read(), tmp_286_30_fu_43952_p2.read()), tmp_286_29_fu_43946_p2.read()), tmp_286_28_fu_43940_p2.read()), tmp_286_27_fu_43934_p2.read()), tmp_286_26_fu_43928_p2.read()), tmp_286_25_fu_43922_p2.read()), tmp_286_24_fu_43916_p2.read()), tmp_286_23_fu_43910_p2.read()), tmp_286_22_fu_43904_p2.read()), tmp_286_21_fu_43898_p2.read()), tmp_286_20_fu_43892_p2.read()), tmp_286_19_fu_43886_p2.read()), tmp_286_18_fu_43880_p2.read()), tmp_286_17_fu_43874_p2.read()), tmp_286_16_fu_43868_p2.read()), tmp_286_15_fu_43862_p2.read()), tmp_286_14_fu_43856_p2.read()), tmp_286_13_fu_43850_p2.read()), tmp_286_12_fu_43844_p2.read()), tmp_286_11_fu_43838_p2.read()), tmp_286_10_fu_43832_p2.read()), tmp_286_9_fu_43826_p2.read()), tmp_286_8_fu_43820_p2.read()), tmp_286_7_fu_43814_p2.read()), tmp_286_6_fu_43808_p2.read()), tmp_286_5_fu_43802_p2.read()), tmp_286_4_fu_43796_p2.read()), tmp_286_3_fu_43790_p2.read()), tmp_286_2_fu_43784_p2.read()), tmp_286_1_fu_43778_p2.read()), tmp_286_s_fu_43772_p2.read());
}

void a0_bin_conv::thread_p_V_fu_42216_p2() {
    p_V_fu_42216_p2 = (!tmp_1230_reg_50205.read().is_01() || !p_8_reg_6165.read().is_01())? sc_lv<10>(): (sc_biguint<10>(tmp_1230_reg_50205.read()) + sc_biguint<10>(p_8_reg_6165.read()));
}

void a0_bin_conv::thread_p_word_buffer_0_1_1_fu_26424_p3() {
    p_word_buffer_0_1_1_fu_26424_p3 = (!brmerge40_fu_26420_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge40_fu_26420_p2.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_1_1_1_fu_25992_p3.read());
}

void a0_bin_conv::thread_p_word_buffer_1_1_1_fu_29058_p3() {
    p_word_buffer_1_1_1_fu_29058_p3 = (!brmerge54_fu_29054_p2.read()[0].is_01())? sc_lv<2>(): ((brmerge54_fu_29054_p2.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_1_1_1_fu_25743_p3.read());
}

void a0_bin_conv::thread_p_word_buffer_V_load_1_fu_35860_p3() {
    p_word_buffer_V_load_1_fu_35860_p3 = (!rb_1_reg_45788.read()[0].is_01())? sc_lv<2>(): ((rb_1_reg_45788.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_1_1_1_reg_54946.read());
}

void a0_bin_conv::thread_p_word_buffer_V_load_s_fu_33551_p3() {
    p_word_buffer_V_load_s_fu_33551_p3 = (!rb_1_reg_45788.read()[0].is_01())? sc_lv<2>(): ((rb_1_reg_45788.read()[0].to_bool())? ap_const_lv2_0: word_buffer_0_1_1_1_reg_55434.read());
}

void a0_bin_conv::thread_pool_width_V_fu_42329_p2() {
    pool_width_V_fu_42329_p2 = (!tmp_131_cast_fu_42325_p1.read().is_01())? sc_lv<5>(): ap_const_lv5_1 << (unsigned short)tmp_131_cast_fu_42325_p1.read().to_uint();
}

void a0_bin_conv::thread_r_V_15_1_fu_32243_p2() {
    r_V_15_1_fu_32243_p2 = (!wt_mem_1_V_load_reg_54686.read().is_01() || !tmp_129_fu_32234_p1.read().is_01())? sc_lv<64>(): sc_bigint<64>(wt_mem_1_V_load_reg_54686.read()) >> (unsigned short)tmp_129_fu_32234_p1.read().to_uint();
}

void a0_bin_conv::thread_r_V_16_fu_42300_p1() {
    r_V_16_fu_42300_p1 = o_index_V.read().range(1-1, 0);
}

void a0_bin_conv::thread_r_V_18_fu_45059_p3() {
    r_V_18_fu_45059_p3 = esl_concat<2,4>(tmp_1256_fu_45055_p1.read(), ap_const_lv4_0);
}

void a0_bin_conv::thread_r_V_19_fu_45539_p1() {
    r_V_19_fu_45539_p1 = esl_sext<64,48>(tmp_144_fu_45529_p4.read());
}

void a0_bin_conv::thread_r_V_55_1_cast_cast_fu_19746_p3() {
    r_V_55_1_cast_cast_fu_19746_p3 = (!tmp_1225_fu_19722_p1.read()[0].is_01())? sc_lv<5>(): ((tmp_1225_fu_19722_p1.read()[0].to_bool())? ap_const_lv5_2: ap_const_lv5_1);
}

void a0_bin_conv::thread_r_V_55_2_cast_fu_19844_p1() {
    r_V_55_2_cast_fu_19844_p1 = esl_zext<5,3>(r_V_55_2_fu_19838_p2.read());
}

void a0_bin_conv::thread_r_V_55_2_fu_19838_p2() {
    r_V_55_2_fu_19838_p2 = (r_V_62_4_fu_19824_p3.read() | ap_const_lv3_1);
}

void a0_bin_conv::thread_r_V_55_3_cast_fu_19806_p1() {
    r_V_55_3_cast_fu_19806_p1 = esl_zext<5,3>(r_V_55_3_fu_19800_p2.read());
}

void a0_bin_conv::thread_r_V_55_3_fu_19800_p2() {
    r_V_55_3_fu_19800_p2 = (!ap_const_lv3_1.is_01() || !lhs_V_12_3_cast_fu_19796_p1.read().is_01())? sc_lv<3>(): (sc_biguint<3>(ap_const_lv3_1) + sc_biguint<3>(lhs_V_12_3_cast_fu_19796_p1.read()));
}

void a0_bin_conv::thread_r_V_55_4_cast_fu_19908_p1() {
    r_V_55_4_cast_fu_19908_p1 = esl_zext<5,3>(r_V_55_4_fu_19902_p2.read());
}

void a0_bin_conv::thread_r_V_55_4_fu_19902_p2() {
    r_V_55_4_fu_19902_p2 = (tmp_fu_19718_p1.read() | ap_const_lv3_1);
}

void a0_bin_conv::thread_r_V_55_5_fu_19874_p2() {
    r_V_55_5_fu_19874_p2 = (!ap_const_lv4_1.is_01() || !r_V_62_5_cast_fu_19864_p1.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_1) + sc_biguint<4>(r_V_62_5_cast_fu_19864_p1.read()));
}

void a0_bin_conv::thread_r_V_55_7_fu_19928_p2() {
    r_V_55_7_fu_19928_p2 = (!ap_const_lv4_1.is_01() || !r_V_62_7_cast_fu_19918_p1.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_1) + sc_biguint<4>(r_V_62_7_cast_fu_19918_p1.read()));
}

void a0_bin_conv::thread_r_V_55_cast_fu_19780_p1() {
    r_V_55_cast_fu_19780_p1 = esl_zext<5,2>(r_V_55_s_fu_19774_p2.read());
}

void a0_bin_conv::thread_r_V_55_s_fu_19774_p2() {
    r_V_55_s_fu_19774_p2 = (tmp_1226_fu_19726_p1.read() | ap_const_lv2_1);
}

void a0_bin_conv::thread_r_V_5_fu_42565_p2() {
    r_V_5_fu_42565_p2 = (!p_3_reg_18789.read().is_01() || !lhs_V_3_cast_reg_60581.read().is_01())? sc_lv<6>(): (sc_biguint<6>(p_3_reg_18789.read()) + sc_biguint<6>(lhs_V_3_cast_reg_60581.read()));
}

void a0_bin_conv::thread_r_V_62_4_fu_19824_p3() {
    r_V_62_4_fu_19824_p3 = esl_concat<1,2>(tmp_1228_fu_19816_p3.read(), ap_const_lv2_0);
}

void a0_bin_conv::thread_r_V_62_5_cast_fu_19864_p1() {
    r_V_62_5_cast_fu_19864_p1 = esl_zext<4,3>(r_V_62_5_fu_19854_p4.read());
}

void a0_bin_conv::thread_r_V_62_5_fu_19854_p4() {
    r_V_62_5_fu_19854_p4 = esl_concat<2,1>(esl_concat<1,1>(tmp_1228_fu_19816_p3.read(), ap_const_lv1_0), tmp_1225_fu_19722_p1.read());
}

void a0_bin_conv::thread_r_V_62_7_cast_fu_19918_p1() {
    r_V_62_7_cast_fu_19918_p1 = esl_zext<4,3>(tmp_fu_19718_p1.read());
}

void a0_bin_conv::thread_r_V_64_0_1_fu_20152_p2() {
    r_V_64_0_1_fu_20152_p2 = (!ap_const_lv4_1.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_1) - sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_r_V_64_0_2_fu_20166_p2() {
    r_V_64_0_2_fu_20166_p2 = (!ap_const_lv4_2.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_2) - sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_r_V_64_0_3_fu_20190_p2() {
    r_V_64_0_3_fu_20190_p2 = (!ap_const_lv4_3.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_3) - sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_r_V_64_0_4_cast_fu_20208_p2() {
    r_V_64_0_4_cast_fu_20208_p2 = (!ap_const_lv3_4.is_01() || !tmp_1231_fu_20038_p1.read().is_01())? sc_lv<3>(): (sc_bigint<3>(ap_const_lv3_4) - sc_biguint<3>(tmp_1231_fu_20038_p1.read()));
}

void a0_bin_conv::thread_r_V_64_0_5_fu_20222_p2() {
    r_V_64_0_5_fu_20222_p2 = (!ap_const_lv4_5.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_5) - sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_r_V_64_0_6_fu_20240_p2() {
    r_V_64_0_6_fu_20240_p2 = (!ap_const_lv4_6.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_6) - sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_r_V_64_0_7_fu_20258_p2() {
    r_V_64_0_7_fu_20258_p2 = (!ap_const_lv4_7.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_7) - sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_r_V_6_fu_20863_p2() {
    r_V_6_fu_20863_p2 = (!rhs_V_2_cast_fu_20859_p1.read().is_01() || !r_V_reg_51877.read().is_01())? sc_lv<15>(): (sc_biguint<15>(rhs_V_2_cast_fu_20859_p1.read()) + sc_biguint<15>(r_V_reg_51877.read()));
}

void a0_bin_conv::thread_r_V_7_fu_32238_p2() {
    r_V_7_fu_32238_p2 = (!wt_mem_0_V_load_reg_54681.read().is_01() || !tmp_129_fu_32234_p1.read().is_01())? sc_lv<64>(): sc_bigint<64>(wt_mem_0_V_load_reg_54681.read()) >> (unsigned short)tmp_129_fu_32234_p1.read().to_uint();
}

void a0_bin_conv::thread_r_V_fu_45587_p0() {
    r_V_fu_45587_p0 =  (sc_lv<10>) (lhs_V_fu_20821_p1.read());
}

void a0_bin_conv::thread_r_V_fu_45587_p1() {
    r_V_fu_45587_p1 =  (sc_lv<5>) (rhs_V_reg_50200.read());
}

void a0_bin_conv::thread_r_V_s_fu_42303_p4() {
    r_V_s_fu_42303_p4 = o_index_V.read().range(15, 1);
}

void a0_bin_conv::thread_rb_0_fu_19734_p2() {
    rb_0_fu_19734_p2 = (!w_div_8_V_fu_19698_p4.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<1>(): sc_lv<1>(w_div_8_V_fu_19698_p4.read() == ap_const_lv4_1);
}

void a0_bin_conv::thread_rb_1_fu_19754_p2() {
    rb_1_fu_19754_p2 = (!r_V_55_1_cast_cast_fu_19746_p3.read().is_01() || !tmp_121_cast_fu_19730_p1.read().is_01())? sc_lv<1>(): sc_lv<1>(r_V_55_1_cast_cast_fu_19746_p3.read() == tmp_121_cast_fu_19730_p1.read());
}

void a0_bin_conv::thread_rb_2_fu_19784_p2() {
    rb_2_fu_19784_p2 = (!r_V_55_cast_fu_19780_p1.read().is_01() || !tmp_121_cast_fu_19730_p1.read().is_01())? sc_lv<1>(): sc_lv<1>(r_V_55_cast_fu_19780_p1.read() == tmp_121_cast_fu_19730_p1.read());
}

void a0_bin_conv::thread_rb_3_fu_19810_p2() {
    rb_3_fu_19810_p2 = (!r_V_55_3_cast_fu_19806_p1.read().is_01() || !tmp_121_cast_fu_19730_p1.read().is_01())? sc_lv<1>(): sc_lv<1>(r_V_55_3_cast_fu_19806_p1.read() == tmp_121_cast_fu_19730_p1.read());
}

void a0_bin_conv::thread_rb_4_fu_19848_p2() {
    rb_4_fu_19848_p2 = (!r_V_55_2_cast_fu_19844_p1.read().is_01() || !tmp_121_cast_fu_19730_p1.read().is_01())? sc_lv<1>(): sc_lv<1>(r_V_55_2_cast_fu_19844_p1.read() == tmp_121_cast_fu_19730_p1.read());
}

void a0_bin_conv::thread_rb_5_fu_19880_p2() {
    rb_5_fu_19880_p2 = (!r_V_55_5_fu_19874_p2.read().is_01() || !w_div_8_V_fu_19698_p4.read().is_01())? sc_lv<1>(): sc_lv<1>(r_V_55_5_fu_19874_p2.read() == w_div_8_V_fu_19698_p4.read());
}

void a0_bin_conv::thread_rb_6_fu_19912_p2() {
    rb_6_fu_19912_p2 = (!r_V_55_4_cast_fu_19908_p1.read().is_01() || !tmp_121_cast_fu_19730_p1.read().is_01())? sc_lv<1>(): sc_lv<1>(r_V_55_4_cast_fu_19908_p1.read() == tmp_121_cast_fu_19730_p1.read());
}

void a0_bin_conv::thread_rb_7_fu_19934_p2() {
    rb_7_fu_19934_p2 = (!r_V_55_7_fu_19928_p2.read().is_01() || !w_div_8_V_fu_19698_p4.read().is_01())? sc_lv<1>(): sc_lv<1>(r_V_55_7_fu_19928_p2.read() == w_div_8_V_fu_19698_p4.read());
}

void a0_bin_conv::thread_rhs_V_2_cast_fu_20859_p1() {
    rhs_V_2_cast_fu_20859_p1 = esl_zext<15,8>(t_V_2_phi_fu_6192_p4.read());
}

void a0_bin_conv::thread_rhs_V_fu_20023_p1() {
    rhs_V_fu_20023_p1 = esl_zext<15,5>(words_per_image_V_reg_45719.read());
}

void a0_bin_conv::thread_s_idx_V_0_1_fu_20050_p2() {
    s_idx_V_0_1_fu_20050_p2 = (!ap_const_lv4_9.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_9) + sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_s_idx_V_0_2_fu_20064_p2() {
    s_idx_V_0_2_fu_20064_p2 = (!ap_const_lv4_A.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_A) + sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_s_idx_V_0_3_cast_fu_20078_p2() {
    s_idx_V_0_3_cast_fu_20078_p2 = (!ap_const_lv3_3.is_01() || !tmp_1231_fu_20038_p1.read().is_01())? sc_lv<3>(): (sc_biguint<3>(ap_const_lv3_3) + sc_biguint<3>(tmp_1231_fu_20038_p1.read()));
}

void a0_bin_conv::thread_s_idx_V_0_4_fu_20092_p2() {
    s_idx_V_0_4_fu_20092_p2 = (!ap_const_lv4_C.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_C) + sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_s_idx_V_0_5_fu_20112_p2() {
    s_idx_V_0_5_fu_20112_p2 = (!ap_const_lv4_D.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_D) + sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_s_idx_V_0_6_fu_20132_p2() {
    s_idx_V_0_6_fu_20132_p2 = (!ap_const_lv4_E.is_01() || !val_assign_2_fu_20032_p2.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_E) + sc_biguint<4>(val_assign_2_fu_20032_p2.read()));
}

void a0_bin_conv::thread_s_idx_V_0_7_t_fu_20286_p2() {
    s_idx_V_0_7_t_fu_20286_p2 = (!ap_const_lv3_7.is_01() || !tmp_1231_fu_20038_p1.read().is_01())? sc_lv<3>(): (sc_bigint<3>(ap_const_lv3_7) + sc_biguint<3>(tmp_1231_fu_20038_p1.read()));
}

void a0_bin_conv::thread_sel_tmp1000_fu_36392_p3() {
    sel_tmp1000_fu_36392_p3 = (!sel_tmp106_reg_51523.read()[0].is_01())? sc_lv<2>(): ((sel_tmp106_reg_51523.read()[0].to_bool())? word_buffer_1_4_0_1_reg_54832.read(): sel_tmp999_fu_36386_p3.read());
}

void a0_bin_conv::thread_sel_tmp1001_fu_36404_p3() {
    sel_tmp1001_fu_36404_p3 = (!tmp_175_reg_51563.read()[0].is_01())? sc_lv<2>(): ((tmp_175_reg_51563.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_4_0_reg_54806.read());
}

void a0_bin_conv::thread_sel_tmp1002_fu_36410_p3() {
    sel_tmp1002_fu_36410_p3 = (!sel_tmp110_reg_51569.read()[0].is_01())? sc_lv<2>(): ((sel_tmp110_reg_51569.read()[0].to_bool())? word_buffer_1_1_0_reg_54929.read(): sel_tmp1001_fu_36404_p3.read());
}

void a0_bin_conv::thread_sel_tmp1003_fu_36416_p3() {
    sel_tmp1003_fu_36416_p3 = (!sel_tmp111_reg_51575.read()[0].is_01())? sc_lv<2>(): ((sel_tmp111_reg_51575.read()[0].to_bool())? word_buffer_1_2_0_1_reg_55582.read(): sel_tmp1002_fu_36410_p3.read());
}

void a0_bin_conv::thread_sel_tmp1004_fu_31111_p3() {
    sel_tmp1004_fu_31111_p3 = (!tmp_165_reg_50824.read()[0].is_01())? sc_lv<2>(): ((tmp_165_reg_50824.read()[0].to_bool())? old_word_buffer_1_5_11_fu_1810.read(): old_word_buffer_1_7_11_fu_1882.read());
}

void a0_bin_conv::thread_sel_tmp1005_fu_31131_p3() {
    sel_tmp1005_fu_31131_p3 = (!tmp_165_reg_50824.read()[0].is_01())? sc_lv<2>(): ((tmp_165_reg_50824.read()[0].to_bool())? old_word_buffer_1_5_13_fu_1818.read(): old_word_buffer_1_7_13_fu_1890.read());
}

void a0_bin_conv::thread_sel_tmp1006_fu_31151_p3() {
    sel_tmp1006_fu_31151_p3 = (!tmp_165_reg_50824.read()[0].is_01())? sc_lv<2>(): ((tmp_165_reg_50824.read()[0].to_bool())? old_word_buffer_1_5_15_fu_1826.read(): old_word_buffer_1_7_15_fu_1898.read());
}

void a0_bin_conv::thread_sel_tmp1007_fu_24438_p3() {
    sel_tmp1007_fu_24438_p3 = (!tmp_165_reg_50824.read()[0].is_01())? sc_lv<2>(): ((tmp_165_reg_50824.read()[0].to_bool())? old_word_buffer_1_5_17_fu_1834.read(): old_word_buffer_1_7_17_fu_1906.read());
}

void a0_bin_conv::thread_sel_tmp1008_fu_31178_p2() {
    sel_tmp1008_fu_31178_p2 = (brmerge49_fu_31174_p2.read() ^ ap_const_lv1_1);
}

void a0_bin_conv::thread_sel_tmp1009_fu_31184_p2() {
    sel_tmp1009_fu_31184_p2 = (tmp_166_reg_50838.read() & sel_tmp1008_fu_31178_p2.read());
}

void a0_bin_conv::thread_sel_tmp100_fu_20582_p2() {
    sel_tmp100_fu_20582_p2 = (!r_V_64_0_4_cast_fu_20208_p2.read().is_01() || !ap_const_lv3_2.is_01())? sc_lv<1>(): sc_lv<1>(r_V_64_0_4_cast_fu_20208_p2.read() == ap_const_lv3_2);
}

void a0_bin_conv::thread_sel_tmp1010_fu_31189_p3() {
    sel_tmp1010_fu_31189_p3 = (!sel_tmp1009_fu_31184_p2.read()[0].is_01())? sc_lv<2>(): ((sel_tmp1009_fu_31184_p2.read()[0].to_bool())? old_word_buffer_1_6_fu_710.read(): old_word_buffer_1_7_fu_714.read());
}

void a0_bin_conv::thread_sel_tmp1011_fu_31197_p2() {
    sel_tmp1011_fu_31197_p2 = (tmp_165_reg_50824.read() & sel_tmp1008_fu_31178_p2.read());
}

void a0_bin_conv::thread_sel_tmp1012_fu_31202_p3() {
    sel_tmp1012_fu_31202_p3 = (!sel_tmp1011_fu_31197_p2.read()[0].is_01())? sc_lv<2>(): ((sel_tmp1011_fu_31197_p2.read()[0].to_bool())? old_word_buffer_1_5_fu_706.read(): sel_tmp1010_fu_31189_p3.read());
}

void a0_bin_conv::thread_sel_tmp1013_fu_36432_p3() {
    sel_tmp1013_fu_36432_p3 = (!sel_tmp113_reg_51587.read()[0].is_01())? sc_lv<2>(): ((sel_tmp113_reg_51587.read()[0].to_bool())? word_buffer_1_1_1_reg_54917.read(): word_buffer_1_5_1_reg_54753.read());
}

void a0_bin_conv::thread_sel_tmp1014_fu_36437_p3() {
    sel_tmp1014_fu_36437_p3 = (!sel_tmp114_reg_51607.read()[0].is_01())? sc_lv<2>(): ((sel_tmp114_reg_51607.read()[0].to_bool())? word_buffer_1_2_1_reg_54904.read(): sel_tmp1013_fu_36432_p3.read());
}

void a0_bin_conv::thread_sel_tmp1015_fu_36443_p3() {
    sel_tmp1015_fu_36443_p3 = (!sel_tmp115_reg_51627.read()[0].is_01())? sc_lv<2>(): ((sel_tmp115_reg_51627.read()[0].to_bool())? word_buffer_1_3_1_reg_54846.read(): sel_tmp1014_fu_36437_p3.read());
}

void a0_bin_conv::thread_sel_tmp1016_fu_36449_p3() {
    sel_tmp1016_fu_36449_p3 = (!sel_tmp116_reg_51647.read()[0].is_01())? sc_lv<2>(): ((sel_tmp116_reg_51647.read()[0].to_bool())? word_buffer_1_4_1_reg_54795.read(): sel_tmp1015_fu_36443_p3.read());
}

void a0_bin_conv::thread_sel_tmp1017_fu_36461_p3() {
    sel_tmp1017_fu_36461_p3 = (!sel_tmp113_reg_51587.read()[0].is_01())? sc_lv<2>(): ((sel_tmp113_reg_51587.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_2_1_reg_53010.read(): ap_reg_pp0_iter2_word_buffer_1_5_2_1_reg_52638.read());
}

void a0_bin_conv::thread_sel_tmp1018_fu_36466_p3() {
    sel_tmp1018_fu_36466_p3 = (!sel_tmp114_reg_51607.read()[0].is_01())? sc_lv<2>(): ((sel_tmp114_reg_51607.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_2_1_reg_52899.read(): sel_tmp1017_fu_36461_p3.read());
}

void a0_bin_conv::thread_sel_tmp1019_fu_36472_p3() {
    sel_tmp1019_fu_36472_p3 = (!sel_tmp115_reg_51627.read()[0].is_01())? sc_lv<2>(): ((sel_tmp115_reg_51627.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_2_1_reg_52800.read(): sel_tmp1018_fu_36466_p3.read());
}

void a0_bin_conv::thread_sel_tmp101_fu_20588_p2() {
    sel_tmp101_fu_20588_p2 = (tmp_171_fu_20442_p2.read() & sel_tmp92_fu_20525_p2.read());
}

void a0_bin_conv::thread_sel_tmp1020_fu_36478_p3() {
    sel_tmp1020_fu_36478_p3 = (!sel_tmp116_reg_51647.read()[0].is_01())? sc_lv<2>(): ((sel_tmp116_reg_51647.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_2_1_reg_52713.read(): sel_tmp1019_fu_36472_p3.read());
}

void a0_bin_conv::thread_sel_tmp1021_fu_36490_p3() {
    sel_tmp1021_fu_36490_p3 = (!sel_tmp113_reg_51587.read()[0].is_01())? sc_lv<2>(): ((sel_tmp113_reg_51587.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_3_1_reg_52991.read(): ap_reg_pp0_iter2_word_buffer_1_5_3_1_reg_52627.read());
}

void a0_bin_conv::thread_sel_tmp1022_fu_36495_p3() {
    sel_tmp1022_fu_36495_p3 = (!sel_tmp114_reg_51607.read()[0].is_01())? sc_lv<2>(): ((sel_tmp114_reg_51607.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_3_1_reg_52882.read(): sel_tmp1021_fu_36490_p3.read());
}

void a0_bin_conv::thread_sel_tmp1023_fu_36501_p3() {
    sel_tmp1023_fu_36501_p3 = (!sel_tmp115_reg_51627.read()[0].is_01())? sc_lv<2>(): ((sel_tmp115_reg_51627.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_3_1_reg_52785.read(): sel_tmp1022_fu_36495_p3.read());
}

void a0_bin_conv::thread_sel_tmp1024_fu_36507_p3() {
    sel_tmp1024_fu_36507_p3 = (!sel_tmp116_reg_51647.read()[0].is_01())? sc_lv<2>(): ((sel_tmp116_reg_51647.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_3_1_reg_52700.read(): sel_tmp1023_fu_36501_p3.read());
}

void a0_bin_conv::thread_sel_tmp1025_fu_36519_p3() {
    sel_tmp1025_fu_36519_p3 = (!sel_tmp113_reg_51587.read()[0].is_01())? sc_lv<2>(): ((sel_tmp113_reg_51587.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_4_1_reg_52972.read(): ap_reg_pp0_iter2_word_buffer_1_5_4_1_reg_52616.read());
}

void a0_bin_conv::thread_sel_tmp1026_fu_36524_p3() {
    sel_tmp1026_fu_36524_p3 = (!sel_tmp114_reg_51607.read()[0].is_01())? sc_lv<2>(): ((sel_tmp114_reg_51607.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_4_1_reg_52865.read(): sel_tmp1025_fu_36519_p3.read());
}

void a0_bin_conv::thread_sel_tmp1027_fu_36530_p3() {
    sel_tmp1027_fu_36530_p3 = (!sel_tmp115_reg_51627.read()[0].is_01())? sc_lv<2>(): ((sel_tmp115_reg_51627.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_4_1_reg_52770.read(): sel_tmp1026_fu_36524_p3.read());
}

void a0_bin_conv::thread_sel_tmp1028_fu_36536_p3() {
    sel_tmp1028_fu_36536_p3 = (!sel_tmp116_reg_51647.read()[0].is_01())? sc_lv<2>(): ((sel_tmp116_reg_51647.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_4_1_reg_52687.read(): sel_tmp1027_fu_36530_p3.read());
}

void a0_bin_conv::thread_sel_tmp1029_fu_36548_p3() {
    sel_tmp1029_fu_36548_p3 = (!sel_tmp113_reg_51587.read()[0].is_01())? sc_lv<2>(): ((sel_tmp113_reg_51587.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_5_1_reg_52953.read(): ap_reg_pp0_iter2_word_buffer_1_5_5_1_reg_52605.read());
}

void a0_bin_conv::thread_sel_tmp102_fu_20599_p2() {
    sel_tmp102_fu_20599_p2 = (sel_tmp99_fu_20576_p2.read() & sel_tmp92_fu_20525_p2.read());
}

void a0_bin_conv::thread_sel_tmp1030_fu_36553_p3() {
    sel_tmp1030_fu_36553_p3 = (!sel_tmp114_reg_51607.read()[0].is_01())? sc_lv<2>(): ((sel_tmp114_reg_51607.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_5_1_reg_52848.read(): sel_tmp1029_fu_36548_p3.read());
}

void a0_bin_conv::thread_sel_tmp1031_fu_36559_p3() {
    sel_tmp1031_fu_36559_p3 = (!sel_tmp115_reg_51627.read()[0].is_01())? sc_lv<2>(): ((sel_tmp115_reg_51627.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_5_1_reg_52755.read(): sel_tmp1030_fu_36553_p3.read());
}

void a0_bin_conv::thread_sel_tmp1032_fu_36565_p3() {
    sel_tmp1032_fu_36565_p3 = (!sel_tmp116_reg_51647.read()[0].is_01())? sc_lv<2>(): ((sel_tmp116_reg_51647.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_5_1_reg_52674.read(): sel_tmp1031_fu_36559_p3.read());
}

void a0_bin_conv::thread_sel_tmp1033_fu_36577_p3() {
    sel_tmp1033_fu_36577_p3 = (!sel_tmp113_reg_51587.read()[0].is_01())? sc_lv<2>(): ((sel_tmp113_reg_51587.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_6_1_reg_52934.read(): ap_reg_pp0_iter2_word_buffer_1_5_6_1_reg_52594.read());
}

void a0_bin_conv::thread_sel_tmp1034_fu_36582_p3() {
    sel_tmp1034_fu_36582_p3 = (!sel_tmp114_reg_51607.read()[0].is_01())? sc_lv<2>(): ((sel_tmp114_reg_51607.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_6_1_reg_52831.read(): sel_tmp1033_fu_36577_p3.read());
}

void a0_bin_conv::thread_sel_tmp1035_fu_36588_p3() {
    sel_tmp1035_fu_36588_p3 = (!sel_tmp115_reg_51627.read()[0].is_01())? sc_lv<2>(): ((sel_tmp115_reg_51627.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_6_1_reg_52740.read(): sel_tmp1034_fu_36582_p3.read());
}

void a0_bin_conv::thread_sel_tmp1036_fu_36594_p3() {
    sel_tmp1036_fu_36594_p3 = (!sel_tmp116_reg_51647.read()[0].is_01())? sc_lv<2>(): ((sel_tmp116_reg_51647.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_6_1_reg_52661.read(): sel_tmp1035_fu_36588_p3.read());
}

void a0_bin_conv::thread_sel_tmp1037_fu_36606_p3() {
    sel_tmp1037_fu_36606_p3 = (!sel_tmp113_reg_51587.read()[0].is_01())? sc_lv<2>(): ((sel_tmp113_reg_51587.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_7_1_reg_52916.read(): ap_reg_pp0_iter2_word_buffer_1_5_7_1_reg_52584.read());
}

void a0_bin_conv::thread_sel_tmp1038_fu_36611_p3() {
    sel_tmp1038_fu_36611_p3 = (!sel_tmp114_reg_51607.read()[0].is_01())? sc_lv<2>(): ((sel_tmp114_reg_51607.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_7_1_reg_52815.read(): sel_tmp1037_fu_36606_p3.read());
}

void a0_bin_conv::thread_sel_tmp1039_fu_36617_p3() {
    sel_tmp1039_fu_36617_p3 = (!sel_tmp115_reg_51627.read()[0].is_01())? sc_lv<2>(): ((sel_tmp115_reg_51627.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_7_1_reg_52726.read(): sel_tmp1038_fu_36611_p3.read());
}

void a0_bin_conv::thread_sel_tmp103_fu_20605_p2() {
    sel_tmp103_fu_20605_p2 = (sel_tmp100_fu_20582_p2.read() & sel_tmp92_fu_20525_p2.read());
}

void a0_bin_conv::thread_sel_tmp1040_fu_36623_p3() {
    sel_tmp1040_fu_36623_p3 = (!sel_tmp116_reg_51647.read()[0].is_01())? sc_lv<2>(): ((sel_tmp116_reg_51647.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_7_1_reg_52649.read(): sel_tmp1039_fu_36617_p3.read());
}

void a0_bin_conv::thread_sel_tmp1041_fu_36635_p3() {
    sel_tmp1041_fu_36635_p3 = (!sel_tmp113_reg_51587.read()[0].is_01())? sc_lv<2>(): ((sel_tmp113_reg_51587.read()[0].to_bool())? word_buffer_1_2_0_reg_55094.read(): word_buffer_1_6_0_1_reg_54743.read());
}

void a0_bin_conv::thread_sel_tmp1042_fu_36640_p3() {
    sel_tmp1042_fu_36640_p3 = (!sel_tmp114_reg_51607.read()[0].is_01())? sc_lv<2>(): ((sel_tmp114_reg_51607.read()[0].to_bool())? word_buffer_1_3_0_1_reg_54888.read(): sel_tmp1041_fu_36635_p3.read());
}

void a0_bin_conv::thread_sel_tmp1043_fu_36646_p3() {
    sel_tmp1043_fu_36646_p3 = (!sel_tmp115_reg_51627.read()[0].is_01())? sc_lv<2>(): ((sel_tmp115_reg_51627.read()[0].to_bool())? word_buffer_1_4_0_1_reg_54832.read(): sel_tmp1042_fu_36640_p3.read());
}

void a0_bin_conv::thread_sel_tmp1044_fu_36652_p3() {
    sel_tmp1044_fu_36652_p3 = (!sel_tmp116_reg_51647.read()[0].is_01())? sc_lv<2>(): ((sel_tmp116_reg_51647.read()[0].to_bool())? word_buffer_1_5_0_1_reg_54783.read(): sel_tmp1043_fu_36646_p3.read());
}

void a0_bin_conv::thread_sel_tmp1045_fu_36664_p3() {
    sel_tmp1045_fu_36664_p3 = (!tmp_176_reg_51687.read()[0].is_01())? sc_lv<2>(): ((tmp_176_reg_51687.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_5_0_reg_54762.read());
}

void a0_bin_conv::thread_sel_tmp1046_fu_36670_p3() {
    sel_tmp1046_fu_36670_p3 = (!sel_tmp120_reg_51693.read()[0].is_01())? sc_lv<2>(): ((sel_tmp120_reg_51693.read()[0].to_bool())? word_buffer_1_1_0_reg_54929.read(): sel_tmp1045_fu_36664_p3.read());
}

void a0_bin_conv::thread_sel_tmp1047_fu_36676_p3() {
    sel_tmp1047_fu_36676_p3 = (!sel_tmp121_reg_51699.read()[0].is_01())? sc_lv<2>(): ((sel_tmp121_reg_51699.read()[0].to_bool())? word_buffer_1_2_0_1_reg_55582.read(): sel_tmp1046_fu_36670_p3.read());
}

void a0_bin_conv::thread_sel_tmp1048_fu_36682_p3() {
    sel_tmp1048_fu_36682_p3 = (!sel_tmp122_reg_51705.read()[0].is_01())? sc_lv<2>(): ((sel_tmp122_reg_51705.read()[0].to_bool())? word_buffer_1_3_0_reg_54858.read(): sel_tmp1047_fu_36676_p3.read());
}

void a0_bin_conv::thread_sel_tmp1049_fu_36704_p3() {
    sel_tmp1049_fu_36704_p3 = (!sel_tmp124_reg_51717.read()[0].is_01())? sc_lv<2>(): ((sel_tmp124_reg_51717.read()[0].to_bool())? word_buffer_1_1_1_reg_54917.read(): word_buffer_1_6_1_reg_54719.read());
}

void a0_bin_conv::thread_sel_tmp104_fu_20611_p2() {
    sel_tmp104_fu_20611_p2 = (!tmp_1246_fu_20236_p1.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1246_fu_20236_p1.read() == ap_const_lv3_1);
}

void a0_bin_conv::thread_sel_tmp1050_fu_36709_p3() {
    sel_tmp1050_fu_36709_p3 = (!sel_tmp125_reg_51737.read()[0].is_01())? sc_lv<2>(): ((sel_tmp125_reg_51737.read()[0].to_bool())? word_buffer_1_2_1_reg_54904.read(): sel_tmp1049_fu_36704_p3.read());
}

void a0_bin_conv::thread_sel_tmp1051_fu_36715_p3() {
    sel_tmp1051_fu_36715_p3 = (!sel_tmp126_reg_51757.read()[0].is_01())? sc_lv<2>(): ((sel_tmp126_reg_51757.read()[0].to_bool())? word_buffer_1_3_1_reg_54846.read(): sel_tmp1050_fu_36709_p3.read());
}

void a0_bin_conv::thread_sel_tmp1052_fu_36721_p3() {
    sel_tmp1052_fu_36721_p3 = (!sel_tmp127_reg_51777.read()[0].is_01())? sc_lv<2>(): ((sel_tmp127_reg_51777.read()[0].to_bool())? word_buffer_1_4_1_reg_54795.read(): sel_tmp1051_fu_36715_p3.read());
}

void a0_bin_conv::thread_sel_tmp1053_fu_36727_p3() {
    sel_tmp1053_fu_36727_p3 = (!sel_tmp128_reg_51797.read()[0].is_01())? sc_lv<2>(): ((sel_tmp128_reg_51797.read()[0].to_bool())? word_buffer_1_5_1_reg_54753.read(): sel_tmp1052_fu_36721_p3.read());
}

void a0_bin_conv::thread_sel_tmp1054_fu_36739_p3() {
    sel_tmp1054_fu_36739_p3 = (!sel_tmp124_reg_51717.read()[0].is_01())? sc_lv<2>(): ((sel_tmp124_reg_51717.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_2_1_reg_53010.read(): ap_reg_pp0_iter2_word_buffer_1_6_2_1_reg_52575.read());
}

void a0_bin_conv::thread_sel_tmp1055_fu_36744_p3() {
    sel_tmp1055_fu_36744_p3 = (!sel_tmp125_reg_51737.read()[0].is_01())? sc_lv<2>(): ((sel_tmp125_reg_51737.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_2_1_reg_52899.read(): sel_tmp1054_fu_36739_p3.read());
}

void a0_bin_conv::thread_sel_tmp1056_fu_36750_p3() {
    sel_tmp1056_fu_36750_p3 = (!sel_tmp126_reg_51757.read()[0].is_01())? sc_lv<2>(): ((sel_tmp126_reg_51757.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_2_1_reg_52800.read(): sel_tmp1055_fu_36744_p3.read());
}

void a0_bin_conv::thread_sel_tmp1057_fu_36756_p3() {
    sel_tmp1057_fu_36756_p3 = (!sel_tmp127_reg_51777.read()[0].is_01())? sc_lv<2>(): ((sel_tmp127_reg_51777.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_2_1_reg_52713.read(): sel_tmp1056_fu_36750_p3.read());
}

void a0_bin_conv::thread_sel_tmp1058_fu_36762_p3() {
    sel_tmp1058_fu_36762_p3 = (!sel_tmp128_reg_51797.read()[0].is_01())? sc_lv<2>(): ((sel_tmp128_reg_51797.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_5_2_1_reg_52638.read(): sel_tmp1057_fu_36756_p3.read());
}

void a0_bin_conv::thread_sel_tmp1059_fu_36774_p3() {
    sel_tmp1059_fu_36774_p3 = (!sel_tmp124_reg_51717.read()[0].is_01())? sc_lv<2>(): ((sel_tmp124_reg_51717.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_3_1_reg_52991.read(): ap_reg_pp0_iter2_word_buffer_1_6_3_1_reg_52566.read());
}

void a0_bin_conv::thread_sel_tmp105_fu_20617_p2() {
    sel_tmp105_fu_20617_p2 = (!tmp_1246_fu_20236_p1.read().is_01() || !ap_const_lv3_2.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1246_fu_20236_p1.read() == ap_const_lv3_2);
}

void a0_bin_conv::thread_sel_tmp1060_fu_36779_p3() {
    sel_tmp1060_fu_36779_p3 = (!sel_tmp125_reg_51737.read()[0].is_01())? sc_lv<2>(): ((sel_tmp125_reg_51737.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_3_1_reg_52882.read(): sel_tmp1059_fu_36774_p3.read());
}

void a0_bin_conv::thread_sel_tmp1061_fu_36785_p3() {
    sel_tmp1061_fu_36785_p3 = (!sel_tmp126_reg_51757.read()[0].is_01())? sc_lv<2>(): ((sel_tmp126_reg_51757.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_3_1_reg_52785.read(): sel_tmp1060_fu_36779_p3.read());
}

void a0_bin_conv::thread_sel_tmp1062_fu_36791_p3() {
    sel_tmp1062_fu_36791_p3 = (!sel_tmp127_reg_51777.read()[0].is_01())? sc_lv<2>(): ((sel_tmp127_reg_51777.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_3_1_reg_52700.read(): sel_tmp1061_fu_36785_p3.read());
}

void a0_bin_conv::thread_sel_tmp1063_fu_36797_p3() {
    sel_tmp1063_fu_36797_p3 = (!sel_tmp128_reg_51797.read()[0].is_01())? sc_lv<2>(): ((sel_tmp128_reg_51797.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_5_3_1_reg_52627.read(): sel_tmp1062_fu_36791_p3.read());
}

void a0_bin_conv::thread_sel_tmp1064_fu_36809_p3() {
    sel_tmp1064_fu_36809_p3 = (!sel_tmp124_reg_51717.read()[0].is_01())? sc_lv<2>(): ((sel_tmp124_reg_51717.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_4_1_reg_52972.read(): ap_reg_pp0_iter2_word_buffer_1_6_4_1_reg_52557.read());
}

void a0_bin_conv::thread_sel_tmp1065_fu_36814_p3() {
    sel_tmp1065_fu_36814_p3 = (!sel_tmp125_reg_51737.read()[0].is_01())? sc_lv<2>(): ((sel_tmp125_reg_51737.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_4_1_reg_52865.read(): sel_tmp1064_fu_36809_p3.read());
}

void a0_bin_conv::thread_sel_tmp1066_fu_36820_p3() {
    sel_tmp1066_fu_36820_p3 = (!sel_tmp126_reg_51757.read()[0].is_01())? sc_lv<2>(): ((sel_tmp126_reg_51757.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_4_1_reg_52770.read(): sel_tmp1065_fu_36814_p3.read());
}

void a0_bin_conv::thread_sel_tmp1067_fu_36826_p3() {
    sel_tmp1067_fu_36826_p3 = (!sel_tmp127_reg_51777.read()[0].is_01())? sc_lv<2>(): ((sel_tmp127_reg_51777.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_4_1_reg_52687.read(): sel_tmp1066_fu_36820_p3.read());
}

void a0_bin_conv::thread_sel_tmp1068_fu_36832_p3() {
    sel_tmp1068_fu_36832_p3 = (!sel_tmp128_reg_51797.read()[0].is_01())? sc_lv<2>(): ((sel_tmp128_reg_51797.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_5_4_1_reg_52616.read(): sel_tmp1067_fu_36826_p3.read());
}

void a0_bin_conv::thread_sel_tmp1069_fu_36844_p3() {
    sel_tmp1069_fu_36844_p3 = (!sel_tmp124_reg_51717.read()[0].is_01())? sc_lv<2>(): ((sel_tmp124_reg_51717.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_5_1_reg_52953.read(): ap_reg_pp0_iter2_word_buffer_1_6_5_1_reg_52548.read());
}

void a0_bin_conv::thread_sel_tmp106_fu_20623_p2() {
    sel_tmp106_fu_20623_p2 = (!tmp_1246_fu_20236_p1.read().is_01() || !ap_const_lv3_3.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1246_fu_20236_p1.read() == ap_const_lv3_3);
}

void a0_bin_conv::thread_sel_tmp1070_fu_36849_p3() {
    sel_tmp1070_fu_36849_p3 = (!sel_tmp125_reg_51737.read()[0].is_01())? sc_lv<2>(): ((sel_tmp125_reg_51737.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_5_1_reg_52848.read(): sel_tmp1069_fu_36844_p3.read());
}

void a0_bin_conv::thread_sel_tmp1071_fu_36855_p3() {
    sel_tmp1071_fu_36855_p3 = (!sel_tmp126_reg_51757.read()[0].is_01())? sc_lv<2>(): ((sel_tmp126_reg_51757.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_5_1_reg_52755.read(): sel_tmp1070_fu_36849_p3.read());
}

void a0_bin_conv::thread_sel_tmp1072_fu_36861_p3() {
    sel_tmp1072_fu_36861_p3 = (!sel_tmp127_reg_51777.read()[0].is_01())? sc_lv<2>(): ((sel_tmp127_reg_51777.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_5_1_reg_52674.read(): sel_tmp1071_fu_36855_p3.read());
}

void a0_bin_conv::thread_sel_tmp1073_fu_36867_p3() {
    sel_tmp1073_fu_36867_p3 = (!sel_tmp128_reg_51797.read()[0].is_01())? sc_lv<2>(): ((sel_tmp128_reg_51797.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_5_5_1_reg_52605.read(): sel_tmp1072_fu_36861_p3.read());
}

void a0_bin_conv::thread_sel_tmp1074_fu_36879_p3() {
    sel_tmp1074_fu_36879_p3 = (!sel_tmp124_reg_51717.read()[0].is_01())? sc_lv<2>(): ((sel_tmp124_reg_51717.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_6_1_reg_52934.read(): ap_reg_pp0_iter2_word_buffer_1_6_6_1_reg_52539.read());
}

void a0_bin_conv::thread_sel_tmp1075_fu_36884_p3() {
    sel_tmp1075_fu_36884_p3 = (!sel_tmp125_reg_51737.read()[0].is_01())? sc_lv<2>(): ((sel_tmp125_reg_51737.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_6_1_reg_52831.read(): sel_tmp1074_fu_36879_p3.read());
}

void a0_bin_conv::thread_sel_tmp1076_fu_36890_p3() {
    sel_tmp1076_fu_36890_p3 = (!sel_tmp126_reg_51757.read()[0].is_01())? sc_lv<2>(): ((sel_tmp126_reg_51757.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_6_1_reg_52740.read(): sel_tmp1075_fu_36884_p3.read());
}

void a0_bin_conv::thread_sel_tmp1077_fu_36896_p3() {
    sel_tmp1077_fu_36896_p3 = (!sel_tmp127_reg_51777.read()[0].is_01())? sc_lv<2>(): ((sel_tmp127_reg_51777.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_6_1_reg_52661.read(): sel_tmp1076_fu_36890_p3.read());
}

void a0_bin_conv::thread_sel_tmp1078_fu_36902_p3() {
    sel_tmp1078_fu_36902_p3 = (!sel_tmp128_reg_51797.read()[0].is_01())? sc_lv<2>(): ((sel_tmp128_reg_51797.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_5_6_1_reg_52594.read(): sel_tmp1077_fu_36896_p3.read());
}

void a0_bin_conv::thread_sel_tmp1079_fu_36914_p3() {
    sel_tmp1079_fu_36914_p3 = (!sel_tmp124_reg_51717.read()[0].is_01())? sc_lv<2>(): ((sel_tmp124_reg_51717.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_1_7_1_reg_52916.read(): ap_reg_pp0_iter2_word_buffer_1_6_7_1_reg_52531.read());
}

void a0_bin_conv::thread_sel_tmp107_fu_20629_p2() {
    sel_tmp107_fu_20629_p2 = (!tmp_1246_fu_20236_p1.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1246_fu_20236_p1.read() == ap_const_lv3_0);
}

void a0_bin_conv::thread_sel_tmp1080_fu_36919_p3() {
    sel_tmp1080_fu_36919_p3 = (!sel_tmp125_reg_51737.read()[0].is_01())? sc_lv<2>(): ((sel_tmp125_reg_51737.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_2_7_1_reg_52815.read(): sel_tmp1079_fu_36914_p3.read());
}

void a0_bin_conv::thread_sel_tmp1081_fu_36925_p3() {
    sel_tmp1081_fu_36925_p3 = (!sel_tmp126_reg_51757.read()[0].is_01())? sc_lv<2>(): ((sel_tmp126_reg_51757.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_3_7_1_reg_52726.read(): sel_tmp1080_fu_36919_p3.read());
}

void a0_bin_conv::thread_sel_tmp1082_fu_36931_p3() {
    sel_tmp1082_fu_36931_p3 = (!sel_tmp127_reg_51777.read()[0].is_01())? sc_lv<2>(): ((sel_tmp127_reg_51777.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_4_7_1_reg_52649.read(): sel_tmp1081_fu_36925_p3.read());
}

void a0_bin_conv::thread_sel_tmp1083_fu_36937_p3() {
    sel_tmp1083_fu_36937_p3 = (!sel_tmp128_reg_51797.read()[0].is_01())? sc_lv<2>(): ((sel_tmp128_reg_51797.read()[0].to_bool())? ap_reg_pp0_iter2_word_buffer_1_5_7_1_reg_52584.read(): sel_tmp1082_fu_36931_p3.read());
}

void a0_bin_conv::thread_sel_tmp1084_fu_36949_p3() {
    sel_tmp1084_fu_36949_p3 = (!sel_tmp124_reg_51717.read()[0].is_01())? sc_lv<2>(): ((sel_tmp124_reg_51717.read()[0].to_bool())? word_buffer_1_2_0_reg_55094.read(): word_buffer_1_7_0_1_reg_54711.read());
}

void a0_bin_conv::thread_sel_tmp1085_fu_36954_p3() {
    sel_tmp1085_fu_36954_p3 = (!sel_tmp125_reg_51737.read()[0].is_01())? sc_lv<2>(): ((sel_tmp125_reg_51737.read()[0].to_bool())? word_buffer_1_3_0_1_reg_54888.read(): sel_tmp1084_fu_36949_p3.read());
}

void a0_bin_conv::thread_sel_tmp1086_fu_36960_p3() {
    sel_tmp1086_fu_36960_p3 = (!sel_tmp126_reg_51757.read()[0].is_01())? sc_lv<2>(): ((sel_tmp126_reg_51757.read()[0].to_bool())? word_buffer_1_4_0_1_reg_54832.read(): sel_tmp1085_fu_36954_p3.read());
}

void a0_bin_conv::thread_sel_tmp1087_fu_36966_p3() {
    sel_tmp1087_fu_36966_p3 = (!sel_tmp127_reg_51777.read()[0].is_01())? sc_lv<2>(): ((sel_tmp127_reg_51777.read()[0].to_bool())? word_buffer_1_5_0_1_reg_54783.read(): sel_tmp1086_fu_36960_p3.read());
}

void a0_bin_conv::thread_sel_tmp1088_fu_36972_p3() {
    sel_tmp1088_fu_36972_p3 = (!sel_tmp128_reg_51797.read()[0].is_01())? sc_lv<2>(): ((sel_tmp128_reg_51797.read()[0].to_bool())? word_buffer_1_6_0_1_reg_54743.read(): sel_tmp1087_fu_36966_p3.read());
}

void a0_bin_conv::thread_sel_tmp1089_fu_36984_p3() {
    sel_tmp1089_fu_36984_p3 = (!tmp_177_reg_51837.read()[0].is_01())? sc_lv<2>(): ((tmp_177_reg_51837.read()[0].to_bool())? ap_const_lv2_0: word_buffer_1_6_0_reg_54726.read());
}

void a0_bin_conv::thread_sel_tmp108_fu_20635_p2() {
    sel_tmp108_fu_20635_p2 = (lb_5_reg_45883.read() ^ ap_const_lv1_1);
}

void a0_bin_conv::thread_sel_tmp1090_fu_36990_p3() {
    sel_tmp1090_fu_36990_p3 = (!sel_tmp132_reg_51843.read()[0].is_01())? sc_lv<2>(): ((sel_tmp132_reg_51843.read()[0].to_bool())? word_buffer_1_1_0_reg_54929.read(): sel_tmp1089_fu_36984_p3.read());
}

void a0_bin_conv::thread_sel_tmp1091_fu_36996_p3() {
    sel_tmp1091_fu_36996_p3 = (!sel_tmp133_reg_51849.read()[0].is_01())? sc_lv<2>(): ((sel_tmp133_reg_51849.read()[0].to_bool())? word_buffer_1_2_0_1_reg_55582.read(): sel_tmp1090_fu_36990_p3.read());
}

void a0_bin_conv::thread_sel_tmp1092_fu_37002_p3() {
    sel_tmp1092_fu_37002_p3 = (!sel_tmp134_reg_51855.read()[0].is_01())? sc_lv<2>(): ((sel_tmp134_reg_51855.read()[0].to_bool())? word_buffer_1_3_0_reg_54858.read(): sel_tmp1091_fu_36996_p3.read());
}

void a0_bin_conv::thread_sel_tmp1093_fu_37008_p3() {
    sel_tmp1093_fu_37008_p3 = (!sel_tmp135_reg_51861.read()[0].is_01())? sc_lv<2>(): ((sel_tmp135_reg_51861.read()[0].to_bool())? word_buffer_1_4_0_reg_54806.read(): sel_tmp1092_fu_37002_p3.read());
}

void a0_bin_conv::thread_sel_tmp109_fu_20640_p2() {
    sel_tmp109_fu_20640_p2 = (sel_tmp107_fu_20629_p2.read() & sel_tmp108_fu_20635_p2.read());
}

void a0_bin_conv::thread_sel_tmp110_fu_20651_p2() {
    sel_tmp110_fu_20651_p2 = (sel_tmp104_fu_20611_p2.read() & sel_tmp108_fu_20635_p2.read());
}

void a0_bin_conv::thread_sel_tmp111_fu_20657_p2() {
    sel_tmp111_fu_20657_p2 = (sel_tmp105_fu_20617_p2.read() & sel_tmp108_fu_20635_p2.read());
}

void a0_bin_conv::thread_sel_tmp112_fu_20663_p2() {
    sel_tmp112_fu_20663_p2 = (sel_tmp106_fu_20623_p2.read() & sel_tmp108_fu_20635_p2.read());
}

void a0_bin_conv::thread_sel_tmp113_fu_20669_p2() {
    sel_tmp113_fu_20669_p2 = (!tmp_1248_fu_20254_p1.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1248_fu_20254_p1.read() == ap_const_lv3_1);
}

void a0_bin_conv::thread_sel_tmp114_fu_20675_p2() {
    sel_tmp114_fu_20675_p2 = (!tmp_1248_fu_20254_p1.read().is_01() || !ap_const_lv3_2.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1248_fu_20254_p1.read() == ap_const_lv3_2);
}

void a0_bin_conv::thread_sel_tmp115_fu_20681_p2() {
    sel_tmp115_fu_20681_p2 = (!tmp_1248_fu_20254_p1.read().is_01() || !ap_const_lv3_3.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1248_fu_20254_p1.read() == ap_const_lv3_3);
}

void a0_bin_conv::thread_sel_tmp116_fu_20687_p2() {
    sel_tmp116_fu_20687_p2 = (!tmp_1248_fu_20254_p1.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1248_fu_20254_p1.read() == ap_const_lv3_4);
}

void a0_bin_conv::thread_sel_tmp117_fu_20693_p2() {
    sel_tmp117_fu_20693_p2 = (!tmp_1248_fu_20254_p1.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1248_fu_20254_p1.read() == ap_const_lv3_0);
}

void a0_bin_conv::thread_sel_tmp118_fu_20699_p2() {
    sel_tmp118_fu_20699_p2 = (lb_6_reg_45907.read() ^ ap_const_lv1_1);
}

void a0_bin_conv::thread_sel_tmp119_fu_20704_p2() {
    sel_tmp119_fu_20704_p2 = (sel_tmp117_fu_20693_p2.read() & sel_tmp118_fu_20699_p2.read());
}

void a0_bin_conv::thread_sel_tmp120_fu_20715_p2() {
    sel_tmp120_fu_20715_p2 = (sel_tmp113_fu_20669_p2.read() & sel_tmp118_fu_20699_p2.read());
}

void a0_bin_conv::thread_sel_tmp121_fu_20721_p2() {
    sel_tmp121_fu_20721_p2 = (sel_tmp114_fu_20675_p2.read() & sel_tmp118_fu_20699_p2.read());
}

void a0_bin_conv::thread_sel_tmp122_fu_20727_p2() {
    sel_tmp122_fu_20727_p2 = (sel_tmp115_fu_20681_p2.read() & sel_tmp118_fu_20699_p2.read());
}

void a0_bin_conv::thread_sel_tmp123_fu_20733_p2() {
    sel_tmp123_fu_20733_p2 = (sel_tmp116_fu_20687_p2.read() & sel_tmp118_fu_20699_p2.read());
}

void a0_bin_conv::thread_sel_tmp124_fu_20739_p2() {
    sel_tmp124_fu_20739_p2 = (!tmp_1250_fu_20272_p1.read().is_01() || !ap_const_lv3_1.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1250_fu_20272_p1.read() == ap_const_lv3_1);
}

void a0_bin_conv::thread_sel_tmp125_fu_20745_p2() {
    sel_tmp125_fu_20745_p2 = (!tmp_1250_fu_20272_p1.read().is_01() || !ap_const_lv3_2.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1250_fu_20272_p1.read() == ap_const_lv3_2);
}

void a0_bin_conv::thread_sel_tmp126_fu_20751_p2() {
    sel_tmp126_fu_20751_p2 = (!tmp_1250_fu_20272_p1.read().is_01() || !ap_const_lv3_3.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1250_fu_20272_p1.read() == ap_const_lv3_3);
}

void a0_bin_conv::thread_sel_tmp127_fu_20757_p2() {
    sel_tmp127_fu_20757_p2 = (!tmp_1250_fu_20272_p1.read().is_01() || !ap_const_lv3_4.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1250_fu_20272_p1.read() == ap_const_lv3_4);
}

void a0_bin_conv::thread_sel_tmp128_fu_20763_p2() {
    sel_tmp128_fu_20763_p2 = (!tmp_1250_fu_20272_p1.read().is_01() || !ap_const_lv3_5.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1250_fu_20272_p1.read() == ap_const_lv3_5);
}

void a0_bin_conv::thread_sel_tmp129_fu_20769_p2() {
    sel_tmp129_fu_20769_p2 = (!tmp_1250_fu_20272_p1.read().is_01() || !ap_const_lv3_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_1250_fu_20272_p1.read() == ap_const_lv3_0);
}

void a0_bin_conv::thread_sel_tmp130_fu_20775_p2() {
    sel_tmp130_fu_20775_p2 = (lb_7_reg_45931.read() ^ ap_const_lv1_1);
}

void a0_bin_conv::thread_sel_tmp131_fu_20780_p2() {
    sel_tmp131_fu_20780_p2 = (sel_tmp129_fu_20769_p2.read() & sel_tmp130_fu_20775_p2.read());
}

void a0_bin_conv::thread_sel_tmp132_fu_20791_p2() {
    sel_tmp132_fu_20791_p2 = (sel_tmp124_fu_20739_p2.read() & sel_tmp130_fu_20775_p2.read());
}

void a0_bin_conv::thread_sel_tmp133_fu_20797_p2() {
    sel_tmp133_fu_20797_p2 = (sel_tmp125_fu_20745_p2.read() & sel_tmp130_fu_20775_p2.read());
}

void a0_bin_conv::thread_sel_tmp134_fu_20803_p2() {
    sel_tmp134_fu_20803_p2 = (sel_tmp126_fu_20751_p2.read() & sel_tmp130_fu_20775_p2.read());
}

void a0_bin_conv::thread_sel_tmp135_fu_20809_p2() {
    sel_tmp135_fu_20809_p2 = (sel_tmp127_fu_20757_p2.read() & sel_tmp130_fu_20775_p2.read());
}

void a0_bin_conv::thread_sel_tmp136_fu_20815_p2() {
    sel_tmp136_fu_20815_p2 = (sel_tmp128_fu_20763_p2.read() & sel_tmp130_fu_20775_p2.read());
}

void a0_bin_conv::thread_sel_tmp137_fu_26082_p3() {
    sel_tmp137_fu_26082_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_2_11_fu_1418.read(): sel_tmp_fu_26075_p3.read());
}

void a0_bin_conv::thread_sel_tmp138_fu_26089_p3() {
    sel_tmp138_fu_26089_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_3_11_fu_1454.read(): sel_tmp137_fu_26082_p3.read());
}

void a0_bin_conv::thread_sel_tmp139_fu_26096_p3() {
    sel_tmp139_fu_26096_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_4_12_fu_1490.read(): sel_tmp138_fu_26089_p3.read());
}

void a0_bin_conv::thread_sel_tmp140_fu_26103_p3() {
    sel_tmp140_fu_26103_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_5_11_fu_1522.read(): sel_tmp139_fu_26096_p3.read());
}

void a0_bin_conv::thread_sel_tmp141_fu_26117_p3() {
    sel_tmp141_fu_26117_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_1_12_fu_1386.read(): old_word_buffer_0_7_11_fu_1598.read());
}

void a0_bin_conv::thread_sel_tmp142_fu_26124_p3() {
    sel_tmp142_fu_26124_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_2_12_fu_1422.read(): sel_tmp141_fu_26117_p3.read());
}

void a0_bin_conv::thread_sel_tmp143_fu_26131_p3() {
    sel_tmp143_fu_26131_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_3_12_fu_1458.read(): sel_tmp142_fu_26124_p3.read());
}

void a0_bin_conv::thread_sel_tmp144_fu_26138_p3() {
    sel_tmp144_fu_26138_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_4_13_fu_1494.read(): sel_tmp143_fu_26131_p3.read());
}

void a0_bin_conv::thread_sel_tmp145_fu_26145_p3() {
    sel_tmp145_fu_26145_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_5_12_fu_1526.read(): sel_tmp144_fu_26138_p3.read());
}

void a0_bin_conv::thread_sel_tmp146_fu_26159_p3() {
    sel_tmp146_fu_26159_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_1_13_fu_1390.read(): old_word_buffer_0_7_12_fu_1602.read());
}

void a0_bin_conv::thread_sel_tmp147_fu_26166_p3() {
    sel_tmp147_fu_26166_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_2_13_fu_1426.read(): sel_tmp146_fu_26159_p3.read());
}

void a0_bin_conv::thread_sel_tmp148_fu_26173_p3() {
    sel_tmp148_fu_26173_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_3_13_fu_1462.read(): sel_tmp147_fu_26166_p3.read());
}

void a0_bin_conv::thread_sel_tmp149_fu_26180_p3() {
    sel_tmp149_fu_26180_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_4_14_fu_1498.read(): sel_tmp148_fu_26173_p3.read());
}

void a0_bin_conv::thread_sel_tmp150_fu_26187_p3() {
    sel_tmp150_fu_26187_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_5_13_fu_1530.read(): sel_tmp149_fu_26180_p3.read());
}

void a0_bin_conv::thread_sel_tmp151_fu_26201_p3() {
    sel_tmp151_fu_26201_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_1_14_fu_1394.read(): old_word_buffer_0_7_13_fu_1606.read());
}

void a0_bin_conv::thread_sel_tmp152_fu_26208_p3() {
    sel_tmp152_fu_26208_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_2_14_fu_1430.read(): sel_tmp151_fu_26201_p3.read());
}

void a0_bin_conv::thread_sel_tmp153_fu_26215_p3() {
    sel_tmp153_fu_26215_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_3_14_fu_1466.read(): sel_tmp152_fu_26208_p3.read());
}

void a0_bin_conv::thread_sel_tmp154_fu_26222_p3() {
    sel_tmp154_fu_26222_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_4_15_fu_1502.read(): sel_tmp153_fu_26215_p3.read());
}

void a0_bin_conv::thread_sel_tmp155_fu_26229_p3() {
    sel_tmp155_fu_26229_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_5_14_fu_1534.read(): sel_tmp154_fu_26222_p3.read());
}

void a0_bin_conv::thread_sel_tmp156_fu_26243_p3() {
    sel_tmp156_fu_26243_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_1_15_fu_1398.read(): old_word_buffer_0_7_14_fu_1610.read());
}

void a0_bin_conv::thread_sel_tmp157_fu_26250_p3() {
    sel_tmp157_fu_26250_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_2_15_fu_1434.read(): sel_tmp156_fu_26243_p3.read());
}

void a0_bin_conv::thread_sel_tmp158_fu_26257_p3() {
    sel_tmp158_fu_26257_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_3_15_fu_1470.read(): sel_tmp157_fu_26250_p3.read());
}

void a0_bin_conv::thread_sel_tmp159_fu_26264_p3() {
    sel_tmp159_fu_26264_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_4_16_fu_1506.read(): sel_tmp158_fu_26257_p3.read());
}

void a0_bin_conv::thread_sel_tmp160_fu_26271_p3() {
    sel_tmp160_fu_26271_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_5_15_fu_1538.read(): sel_tmp159_fu_26264_p3.read());
}

void a0_bin_conv::thread_sel_tmp161_fu_26285_p3() {
    sel_tmp161_fu_26285_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_1_16_fu_1402.read(): old_word_buffer_0_7_15_fu_1614.read());
}

void a0_bin_conv::thread_sel_tmp162_fu_26292_p3() {
    sel_tmp162_fu_26292_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_2_16_fu_1438.read(): sel_tmp161_fu_26285_p3.read());
}

void a0_bin_conv::thread_sel_tmp163_fu_26299_p3() {
    sel_tmp163_fu_26299_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_3_16_fu_1474.read(): sel_tmp162_fu_26292_p3.read());
}

void a0_bin_conv::thread_sel_tmp164_fu_26306_p3() {
    sel_tmp164_fu_26306_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_4_11_fu_1342.read(): sel_tmp163_fu_26299_p3.read());
}

void a0_bin_conv::thread_sel_tmp165_fu_26313_p3() {
    sel_tmp165_fu_26313_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_5_16_fu_1542.read(): sel_tmp164_fu_26306_p3.read());
}

void a0_bin_conv::thread_sel_tmp166_fu_23657_p3() {
    sel_tmp166_fu_23657_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_1_17_fu_1406.read(): old_word_buffer_0_7_16_fu_1618.read());
}

void a0_bin_conv::thread_sel_tmp167_fu_23664_p3() {
    sel_tmp167_fu_23664_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_2_17_fu_1442.read(): sel_tmp166_fu_23657_p3.read());
}

void a0_bin_conv::thread_sel_tmp168_fu_23671_p3() {
    sel_tmp168_fu_23671_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_3_17_fu_1478.read(): sel_tmp167_fu_23664_p3.read());
}

void a0_bin_conv::thread_sel_tmp169_fu_23678_p3() {
    sel_tmp169_fu_23678_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_4_17_fu_1510.read(): sel_tmp168_fu_23671_p3.read());
}

void a0_bin_conv::thread_sel_tmp170_fu_23685_p3() {
    sel_tmp170_fu_23685_p3 = (!tmp_170_reg_51104.read()[0].is_01())? sc_lv<2>(): ((tmp_170_reg_51104.read()[0].to_bool())? old_word_buffer_0_5_17_fu_1546.read(): sel_tmp169_fu_23678_p3.read());
}

void a0_bin_conv::thread_sel_tmp171_fu_26327_p3() {
    sel_tmp171_fu_26327_p3 = (!cond6_reg_50242.read()[0].is_01())? sc_lv<2>(): ((cond6_reg_50242.read()[0].to_bool())? old_word_buffer_0_1_18_fu_1410.read(): old_word_buffer_0_7_49_reg_52193.read());
}

void a0_bin_conv::thread_sel_tmp172_fu_26333_p3() {
    sel_tmp172_fu_26333_p3 = (!tmp_168_reg_50922.read()[0].is_01())? sc_lv<2>(): ((tmp_168_reg_50922.read()[0].to_bool())? old_word_buffer_0_2_18_fu_1446.read(): sel_tmp171_fu_26327_p3.read());
}

void a0_bin_conv::thread_sel_tmp173_fu_26340_p3() {
    sel_tmp173_fu_26340_p3 = (!tmp_169_reg_51016.read()[0].is_01())? sc_lv<2>(): ((tmp_169_reg_51016.read()[0].to_bool())? old_word_buffer_0_3_18_fu_1482.read(): sel_tmp172_fu_26333_p3.read());
}

void a0_bin_conv::thread_sel_tmp174_fu_26347_p3() {
    sel_tmp174_fu_26347_p3 = (!tmp_171_reg_51180.read()[0].is_01())? sc_lv<2>(): ((tmp_171_reg_51180.read()[0].to_bool())? old_word_buffer_0_4_18_fu_1514.read(): sel_tmp173_fu_26340_p3.read());
}

}

