#include "a0_aes_expandEncKey.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[11];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage1() {
    ap_CS_fsm_pp0_stage1 = ap_CS_fsm.read()[12];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage10() {
    ap_CS_fsm_pp0_stage10 = ap_CS_fsm.read()[21];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage11() {
    ap_CS_fsm_pp0_stage11 = ap_CS_fsm.read()[22];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage12() {
    ap_CS_fsm_pp0_stage12 = ap_CS_fsm.read()[23];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage15() {
    ap_CS_fsm_pp0_stage15 = ap_CS_fsm.read()[26];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage16() {
    ap_CS_fsm_pp0_stage16 = ap_CS_fsm.read()[27];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage17() {
    ap_CS_fsm_pp0_stage17 = ap_CS_fsm.read()[28];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage19() {
    ap_CS_fsm_pp0_stage19 = ap_CS_fsm.read()[30];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage2() {
    ap_CS_fsm_pp0_stage2 = ap_CS_fsm.read()[13];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage5() {
    ap_CS_fsm_pp0_stage5 = ap_CS_fsm.read()[16];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage6() {
    ap_CS_fsm_pp0_stage6 = ap_CS_fsm.read()[17];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_pp0_stage7() {
    ap_CS_fsm_pp0_stage7 = ap_CS_fsm.read()[18];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state101() {
    ap_CS_fsm_state101 = ap_CS_fsm.read()[97];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state102() {
    ap_CS_fsm_state102 = ap_CS_fsm.read()[98];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state103() {
    ap_CS_fsm_state103 = ap_CS_fsm.read()[99];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state104() {
    ap_CS_fsm_state104 = ap_CS_fsm.read()[100];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state105() {
    ap_CS_fsm_state105 = ap_CS_fsm.read()[101];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state110() {
    ap_CS_fsm_state110 = ap_CS_fsm.read()[106];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state111() {
    ap_CS_fsm_state111 = ap_CS_fsm.read()[107];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state112() {
    ap_CS_fsm_state112 = ap_CS_fsm.read()[108];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state113() {
    ap_CS_fsm_state113 = ap_CS_fsm.read()[109];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state114() {
    ap_CS_fsm_state114 = ap_CS_fsm.read()[110];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state119() {
    ap_CS_fsm_state119 = ap_CS_fsm.read()[115];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state120() {
    ap_CS_fsm_state120 = ap_CS_fsm.read()[116];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state121() {
    ap_CS_fsm_state121 = ap_CS_fsm.read()[117];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state122() {
    ap_CS_fsm_state122 = ap_CS_fsm.read()[118];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state123() {
    ap_CS_fsm_state123 = ap_CS_fsm.read()[119];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state128() {
    ap_CS_fsm_state128 = ap_CS_fsm.read()[124];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state35() {
    ap_CS_fsm_state35 = ap_CS_fsm.read()[31];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state36() {
    ap_CS_fsm_state36 = ap_CS_fsm.read()[32];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state37() {
    ap_CS_fsm_state37 = ap_CS_fsm.read()[33];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state42() {
    ap_CS_fsm_state42 = ap_CS_fsm.read()[38];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state43() {
    ap_CS_fsm_state43 = ap_CS_fsm.read()[39];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state44() {
    ap_CS_fsm_state44 = ap_CS_fsm.read()[40];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state45() {
    ap_CS_fsm_state45 = ap_CS_fsm.read()[41];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state50() {
    ap_CS_fsm_state50 = ap_CS_fsm.read()[46];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state51() {
    ap_CS_fsm_state51 = ap_CS_fsm.read()[47];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state52() {
    ap_CS_fsm_state52 = ap_CS_fsm.read()[48];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state53() {
    ap_CS_fsm_state53 = ap_CS_fsm.read()[49];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state54() {
    ap_CS_fsm_state54 = ap_CS_fsm.read()[50];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state59() {
    ap_CS_fsm_state59 = ap_CS_fsm.read()[55];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state60() {
    ap_CS_fsm_state60 = ap_CS_fsm.read()[56];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state61() {
    ap_CS_fsm_state61 = ap_CS_fsm.read()[57];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state62() {
    ap_CS_fsm_state62 = ap_CS_fsm.read()[58];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state63() {
    ap_CS_fsm_state63 = ap_CS_fsm.read()[59];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state68() {
    ap_CS_fsm_state68 = ap_CS_fsm.read()[64];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state69() {
    ap_CS_fsm_state69 = ap_CS_fsm.read()[65];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state70() {
    ap_CS_fsm_state70 = ap_CS_fsm.read()[66];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state71() {
    ap_CS_fsm_state71 = ap_CS_fsm.read()[67];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state72() {
    ap_CS_fsm_state72 = ap_CS_fsm.read()[68];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state77() {
    ap_CS_fsm_state77 = ap_CS_fsm.read()[73];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state78() {
    ap_CS_fsm_state78 = ap_CS_fsm.read()[74];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state79() {
    ap_CS_fsm_state79 = ap_CS_fsm.read()[75];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state80() {
    ap_CS_fsm_state80 = ap_CS_fsm.read()[76];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state81() {
    ap_CS_fsm_state81 = ap_CS_fsm.read()[77];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state85() {
    ap_CS_fsm_state85 = ap_CS_fsm.read()[81];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state86() {
    ap_CS_fsm_state86 = ap_CS_fsm.read()[82];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state87() {
    ap_CS_fsm_state87 = ap_CS_fsm.read()[83];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state92() {
    ap_CS_fsm_state92 = ap_CS_fsm.read()[88];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state93() {
    ap_CS_fsm_state93 = ap_CS_fsm.read()[89];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state94() {
    ap_CS_fsm_state94 = ap_CS_fsm.read()[90];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state95() {
    ap_CS_fsm_state95 = ap_CS_fsm.read()[91];
}

void a0_aes_expandEncKey::thread_ap_CS_fsm_state96() {
    ap_CS_fsm_state96 = ap_CS_fsm.read()[92];
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage1() {
    ap_block_pp0_stage1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage10() {
    ap_block_pp0_stage10 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage10_11001() {
    ap_block_pp0_stage10_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage10_subdone() {
    ap_block_pp0_stage10_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage11() {
    ap_block_pp0_stage11 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage11_11001() {
    ap_block_pp0_stage11_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage11_subdone() {
    ap_block_pp0_stage11_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage12() {
    ap_block_pp0_stage12 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage12_11001() {
    ap_block_pp0_stage12_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage12_subdone() {
    ap_block_pp0_stage12_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage13_subdone() {
    ap_block_pp0_stage13_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage14_subdone() {
    ap_block_pp0_stage14_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage15() {
    ap_block_pp0_stage15 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage15_11001() {
    ap_block_pp0_stage15_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage15_subdone() {
    ap_block_pp0_stage15_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage16() {
    ap_block_pp0_stage16 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage16_11001() {
    ap_block_pp0_stage16_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage16_subdone() {
    ap_block_pp0_stage16_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage17() {
    ap_block_pp0_stage17 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage17_11001() {
    ap_block_pp0_stage17_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage17_subdone() {
    ap_block_pp0_stage17_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage18_subdone() {
    ap_block_pp0_stage18_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage19_subdone() {
    ap_block_pp0_stage19_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage1_11001() {
    ap_block_pp0_stage1_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage1_subdone() {
    ap_block_pp0_stage1_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage2() {
    ap_block_pp0_stage2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage2_11001() {
    ap_block_pp0_stage2_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage2_subdone() {
    ap_block_pp0_stage2_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage3_subdone() {
    ap_block_pp0_stage3_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage4_subdone() {
    ap_block_pp0_stage4_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage5() {
    ap_block_pp0_stage5 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage5_11001() {
    ap_block_pp0_stage5_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage5_subdone() {
    ap_block_pp0_stage5_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage6() {
    ap_block_pp0_stage6 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage6_11001() {
    ap_block_pp0_stage6_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage6_subdone() {
    ap_block_pp0_stage6_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage7() {
    ap_block_pp0_stage7 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage7_11001() {
    ap_block_pp0_stage7_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage7_subdone() {
    ap_block_pp0_stage7_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage8_subdone() {
    ap_block_pp0_stage8_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_pp0_stage9_subdone() {
    ap_block_pp0_stage9_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state12_pp0_stage0_iter0() {
    ap_block_state12_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state13_pp0_stage1_iter0() {
    ap_block_state13_pp0_stage1_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state14_pp0_stage2_iter0() {
    ap_block_state14_pp0_stage2_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state15_pp0_stage3_iter0() {
    ap_block_state15_pp0_stage3_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state16_pp0_stage4_iter0() {
    ap_block_state16_pp0_stage4_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state17_pp0_stage5_iter0() {
    ap_block_state17_pp0_stage5_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state18_pp0_stage6_iter0() {
    ap_block_state18_pp0_stage6_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state19_pp0_stage7_iter0() {
    ap_block_state19_pp0_stage7_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state20_pp0_stage8_iter0() {
    ap_block_state20_pp0_stage8_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state21_pp0_stage9_iter0() {
    ap_block_state21_pp0_stage9_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state22_pp0_stage10_iter0() {
    ap_block_state22_pp0_stage10_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state23_pp0_stage11_iter0() {
    ap_block_state23_pp0_stage11_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state24_pp0_stage12_iter0() {
    ap_block_state24_pp0_stage12_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state25_pp0_stage13_iter0() {
    ap_block_state25_pp0_stage13_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state26_pp0_stage14_iter0() {
    ap_block_state26_pp0_stage14_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state27_pp0_stage15_iter0() {
    ap_block_state27_pp0_stage15_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state28_pp0_stage16_iter0() {
    ap_block_state28_pp0_stage16_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state29_pp0_stage17_iter0() {
    ap_block_state29_pp0_stage17_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state30_pp0_stage18_iter0() {
    ap_block_state30_pp0_stage18_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state31_pp0_stage19_iter0() {
    ap_block_state31_pp0_stage19_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state32_pp0_stage0_iter1() {
    ap_block_state32_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state33_pp0_stage1_iter1() {
    ap_block_state33_pp0_stage1_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state34_pp0_stage2_iter1() {
    ap_block_state34_pp0_stage2_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void a0_aes_expandEncKey::thread_ap_block_state86() {
    ap_block_state86 = (esl_seteq<1,1,1>(tmp_351_reg_5514.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_k_BVALID.read()));
}

void a0_aes_expandEncKey::thread_ap_condition_pp0_exit_iter0_state12() {
    if (esl_seteq<1,1,1>(tmp_34_fu_630_p3.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state12 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state12 = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read()) && 
          !(esl_seteq<1,1,1>(tmp_351_reg_5514.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_k_BVALID.read())) && 
          (esl_seteq<1,1,1>(tmp_351_reg_5514.read(), ap_const_lv1_1) || 
           esl_seteq<1,1,1>(tmp_575_reg_5947.read(), ap_const_lv1_1))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void a0_aes_expandEncKey::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read()) && 
         !(esl_seteq<1,1,1>(tmp_351_reg_5514.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_k_BVALID.read())) && 
         (esl_seteq<1,1,1>(tmp_351_reg_5514.read(), ap_const_lv1_1) || 
          esl_seteq<1,1,1>(tmp_575_reg_5947.read(), ap_const_lv1_1)))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_ap_return() {
    ap_return = tmp_32_reg_5067.read();
}

void a0_aes_expandEncKey::thread_ap_sig_ioackin_m_axi_k_ARREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_ARREADY.read())) {
        ap_sig_ioackin_m_axi_k_ARREADY = m_axi_k_ARREADY.read();
    } else {
        ap_sig_ioackin_m_axi_k_ARREADY = ap_const_logic_1;
    }
}

void a0_aes_expandEncKey::thread_ap_sig_ioackin_m_axi_k_AWREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_AWREADY.read())) {
        ap_sig_ioackin_m_axi_k_AWREADY = m_axi_k_AWREADY.read();
    } else {
        ap_sig_ioackin_m_axi_k_AWREADY = ap_const_logic_1;
    }
}

void a0_aes_expandEncKey::thread_ap_sig_ioackin_m_axi_k_WREADY() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_WREADY.read())) {
        ap_sig_ioackin_m_axi_k_WREADY = m_axi_k_WREADY.read();
    } else {
        ap_sig_ioackin_m_axi_k_WREADY = ap_const_logic_1;
    }
}

void a0_aes_expandEncKey::thread_gep11011_part_set_1_fu_4975_p5() {
    gep11011_part_set_1_fu_4975_p5 = esl_partset<1024,1024,256,32,32>(gep_reg_350.read(), tmp_791_fu_4969_p2.read(), ap_const_lv32_0, ap_const_lv32_FF);
}

void a0_aes_expandEncKey::thread_gep11011_part_set_fu_3654_p5() {
    gep11011_part_set_fu_3654_p5 = esl_partset<1024,1024,256,32,32>(gep_reg_350.read(), tmp_573_reg_5925.read(), ap_const_lv32_0, ap_const_lv32_FF);
}

void a0_aes_expandEncKey::thread_gep17128130_part_set_fu_2050_p5() {
    gep17128130_part_set_fu_2050_p5 = esl_partset<1024,1024,256,32,32>(p_new1_reg_329.read(), tmp_350_fu_2044_p2.read(), ap_const_lv32_0, ap_const_lv32_FF);
}

void a0_aes_expandEncKey::thread_gep25188190_part_set_fu_591_p5() {
    gep25188190_part_set_fu_591_p5 = esl_partset<1024,1024,256,32,32>(k_addr_read_reg_4996.read(), tmp_73_fu_579_p5.read(), ap_const_lv32_0, ap_const_lv32_FF);
}

void a0_aes_expandEncKey::thread_gep96870_part_set_fu_2234_p5() {
    gep96870_part_set_fu_2234_p5 = esl_partset<1024,1024,256,32,32>(p_new1_reg_329.read(), tmp_85_fu_2223_p5.read(), ap_const_lv32_0, ap_const_lv32_FF);
}

void a0_aes_expandEncKey::thread_grp_fu_1028_p0() {
    grp_fu_1028_p0 = (!tmp_40_reg_5159.read()[0].is_01())? sc_lv<256>(): ((tmp_40_reg_5159.read()[0].to_bool())? tmp_44_fu_1008_p4.read(): tmp_38_fu_1004_p1.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1028_p1() {
    grp_fu_1028_p1 = esl_zext<256,9>(tmp_61_reg_5164.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1054_p0() {
    grp_fu_1054_p0 = (!tmp_99_reg_5174.read()[0].is_01())? sc_lv<256>(): ((tmp_99_reg_5174.read()[0].to_bool())? tmp_102_fu_1034_p4.read(): tmp_38_fu_1004_p1.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1054_p1() {
    grp_fu_1054_p1 = esl_zext<256,9>(tmp_108_reg_5179.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1357_p0() {
    grp_fu_1357_p0 = (!tmp_166_reg_5289.read()[0].is_01())? sc_lv<256>(): ((tmp_166_reg_5289.read()[0].to_bool())? tmp_175_fu_1337_p4.read(): tmp_162_fu_1331_p2.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1357_p1() {
    grp_fu_1357_p1 = esl_zext<256,9>(tmp_189_reg_5294.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1383_p0() {
    grp_fu_1383_p0 = (!tmp_201_reg_5304.read()[0].is_01())? sc_lv<256>(): ((tmp_201_reg_5304.read()[0].to_bool())? tmp_205_fu_1363_p4.read(): tmp_162_fu_1331_p2.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1383_p1() {
    grp_fu_1383_p1 = esl_zext<256,9>(tmp_212_reg_5309.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1634_p0() {
    grp_fu_1634_p0 = (!tmp_241_reg_5349.read()[0].is_01())? sc_lv<256>(): ((tmp_241_reg_5349.read()[0].to_bool())? tmp_244_fu_1614_p4.read(): tmp_240_fu_1608_p2.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1634_p1() {
    grp_fu_1634_p1 = esl_zext<256,9>(tmp_250_reg_5354.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1660_p0() {
    grp_fu_1660_p0 = (!tmp_258_reg_5364.read()[0].is_01())? sc_lv<256>(): ((tmp_258_reg_5364.read()[0].to_bool())? tmp_261_fu_1640_p4.read(): tmp_240_fu_1608_p2.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1660_p1() {
    grp_fu_1660_p1 = esl_zext<256,9>(tmp_267_reg_5369.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1911_p0() {
    grp_fu_1911_p0 = (!tmp_296_reg_5409.read()[0].is_01())? sc_lv<256>(): ((tmp_296_reg_5409.read()[0].to_bool())? tmp_299_fu_1891_p4.read(): tmp_295_fu_1885_p2.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1911_p1() {
    grp_fu_1911_p1 = esl_zext<256,9>(tmp_305_reg_5414.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1937_p0() {
    grp_fu_1937_p0 = (!tmp_313_reg_5424.read()[0].is_01())? sc_lv<256>(): ((tmp_313_reg_5424.read()[0].to_bool())? tmp_316_fu_1917_p4.read(): tmp_295_fu_1885_p2.read());
}

void a0_aes_expandEncKey::thread_grp_fu_1937_p1() {
    grp_fu_1937_p1 = esl_zext<256,9>(tmp_322_reg_5429.read());
}

void a0_aes_expandEncKey::thread_grp_fu_2438_p1() {
    grp_fu_2438_p1 = esl_zext<256,9>(tmp_363_reg_5544.read());
}

void a0_aes_expandEncKey::thread_grp_fu_2446_p1() {
    grp_fu_2446_p1 = esl_zext<256,9>(tmp_380_reg_5573.read());
}

void a0_aes_expandEncKey::thread_grp_fu_2787_p1() {
    grp_fu_2787_p1 = esl_zext<256,9>(tmp_418_reg_5643.read());
}

void a0_aes_expandEncKey::thread_grp_fu_2795_p1() {
    grp_fu_2795_p1 = esl_zext<256,9>(tmp_435_reg_5672.read());
}

void a0_aes_expandEncKey::thread_grp_fu_3136_p1() {
    grp_fu_3136_p1 = esl_zext<256,9>(tmp_473_reg_5742.read());
}

void a0_aes_expandEncKey::thread_grp_fu_3144_p1() {
    grp_fu_3144_p1 = esl_zext<256,9>(tmp_490_reg_5771.read());
}

void a0_aes_expandEncKey::thread_grp_fu_3485_p1() {
    grp_fu_3485_p1 = esl_zext<256,9>(tmp_528_reg_5841.read());
}

void a0_aes_expandEncKey::thread_grp_fu_3493_p1() {
    grp_fu_3493_p1 = esl_zext<256,9>(tmp_545_reg_5870.read());
}

void a0_aes_expandEncKey::thread_grp_fu_372_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
            grp_fu_372_p0 = tmp_97_reg_5088.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
            grp_fu_372_p0 = tmp_97_fu_648_p3.read();
        } else {
            grp_fu_372_p0 = "XXXXXXX";
        }
    } else {
        grp_fu_372_p0 = "XXXXXXX";
    }
}

void a0_aes_expandEncKey::thread_grp_fu_372_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
            grp_fu_372_p1 = tmp_98_reg_5095.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
            grp_fu_372_p1 = tmp_98_fu_657_p2.read();
        } else {
            grp_fu_372_p1 = "XXXXXXX";
        }
    } else {
        grp_fu_372_p1 = "XXXXXXX";
    }
}

void a0_aes_expandEncKey::thread_grp_fu_372_p2() {
    grp_fu_372_p2 = (!grp_fu_372_p0.read().is_01() || !grp_fu_372_p1.read().is_01())? sc_lv<1>(): (sc_biguint<7>(grp_fu_372_p0.read()) > sc_biguint<7>(grp_fu_372_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_376_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage6.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage6.read(), ap_const_boolean_0))) {
            grp_fu_376_p0 = tmp_117_reg_5110.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
            grp_fu_376_p0 = tmp_117_fu_670_p3.read();
        } else {
            grp_fu_376_p0 = "XXXXXXX";
        }
    } else {
        grp_fu_376_p0 = "XXXXXXX";
    }
}

void a0_aes_expandEncKey::thread_grp_fu_376_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage6.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage6.read(), ap_const_boolean_0))) {
            grp_fu_376_p1 = tmp_118_reg_5117.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
            grp_fu_376_p1 = tmp_118_fu_679_p2.read();
        } else {
            grp_fu_376_p1 = "XXXXXXX";
        }
    } else {
        grp_fu_376_p1 = "XXXXXXX";
    }
}

void a0_aes_expandEncKey::thread_grp_fu_376_p2() {
    grp_fu_376_p2 = (!grp_fu_376_p0.read().is_01() || !grp_fu_376_p1.read().is_01())? sc_lv<1>(): (sc_biguint<7>(grp_fu_376_p0.read()) > sc_biguint<7>(grp_fu_376_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_3795_p1() {
    grp_fu_3795_p1 = esl_zext<256,9>(tmp_585_reg_5956.read());
}

void a0_aes_expandEncKey::thread_grp_fu_3803_p1() {
    grp_fu_3803_p1 = esl_zext<256,9>(tmp_600_reg_5996.read());
}

void a0_aes_expandEncKey::thread_grp_fu_380_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage11.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage11.read(), ap_const_boolean_0))) {
            grp_fu_380_p0 = tmp_126_reg_5132.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
            grp_fu_380_p0 = tmp_126_fu_692_p3.read();
        } else {
            grp_fu_380_p0 = "XXXXXXX";
        }
    } else {
        grp_fu_380_p0 = "XXXXXXX";
    }
}

void a0_aes_expandEncKey::thread_grp_fu_380_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage11.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage11.read(), ap_const_boolean_0))) {
            grp_fu_380_p1 = tmp_127_reg_5139.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
            grp_fu_380_p1 = tmp_127_fu_701_p2.read();
        } else {
            grp_fu_380_p1 = "XXXXXXX";
        }
    } else {
        grp_fu_380_p1 = "XXXXXXX";
    }
}

void a0_aes_expandEncKey::thread_grp_fu_380_p2() {
    grp_fu_380_p2 = (!grp_fu_380_p0.read().is_01() || !grp_fu_380_p1.read().is_01())? sc_lv<1>(): (sc_biguint<7>(grp_fu_380_p0.read()) > sc_biguint<7>(grp_fu_380_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_384_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage16.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage16.read(), ap_const_boolean_0))) {
            grp_fu_384_p0 = tmp_135_reg_5225.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
            grp_fu_384_p0 = tmp_135_fu_988_p3.read();
        } else {
            grp_fu_384_p0 = "XXXXXXX";
        }
    } else {
        grp_fu_384_p0 = "XXXXXXX";
    }
}

void a0_aes_expandEncKey::thread_grp_fu_384_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read())) {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage16.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage16.read(), ap_const_boolean_0))) {
            grp_fu_384_p1 = tmp_136_reg_5232.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage1.read()) && 
                    esl_seteq<1,1,1>(ap_block_pp0_stage1.read(), ap_const_boolean_0))) {
            grp_fu_384_p1 = tmp_136_fu_997_p2.read();
        } else {
            grp_fu_384_p1 = "XXXXXXX";
        }
    } else {
        grp_fu_384_p1 = "XXXXXXX";
    }
}

void a0_aes_expandEncKey::thread_grp_fu_384_p2() {
    grp_fu_384_p2 = (!grp_fu_384_p0.read().is_01() || !grp_fu_384_p1.read().is_01())? sc_lv<1>(): (sc_biguint<7>(grp_fu_384_p0.read()) > sc_biguint<7>(grp_fu_384_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_388_p0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state51.read()))) {
        grp_fu_388_p0 = tmp_155_reg_5554.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state44.read())) {
        grp_fu_388_p0 = tmp_155_fu_2354_p3.read();
    } else {
        grp_fu_388_p0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_388_p1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state51.read()))) {
        grp_fu_388_p1 = tmp_156_reg_5561.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state44.read())) {
        grp_fu_388_p1 = tmp_156_fu_2362_p2.read();
    } else {
        grp_fu_388_p1 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_388_p2() {
    grp_fu_388_p2 = (!grp_fu_388_p0.read().is_01() || !grp_fu_388_p1.read().is_01())? sc_lv<1>(): (sc_biguint<8>(grp_fu_388_p0.read()) > sc_biguint<8>(grp_fu_388_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_392_p0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state60.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state95.read()))) {
        grp_fu_392_p0 = tmp_164_reg_5653.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read())) {
        grp_fu_392_p0 = tmp_164_fu_2702_p3.read();
    } else {
        grp_fu_392_p0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_392_p1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state60.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state95.read()))) {
        grp_fu_392_p1 = tmp_165_reg_5660.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read())) {
        grp_fu_392_p1 = tmp_165_fu_2711_p2.read();
    } else {
        grp_fu_392_p1 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_392_p2() {
    grp_fu_392_p2 = (!grp_fu_392_p0.read().is_01() || !grp_fu_392_p1.read().is_01())? sc_lv<1>(): (sc_biguint<8>(grp_fu_392_p0.read()) > sc_biguint<8>(grp_fu_392_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_396_p0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state69.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state104.read()))) {
        grp_fu_396_p0 = tmp_173_reg_5752.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state62.read())) {
        grp_fu_396_p0 = tmp_173_fu_3051_p3.read();
    } else {
        grp_fu_396_p0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_396_p1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state69.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state104.read()))) {
        grp_fu_396_p1 = tmp_174_reg_5759.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state62.read())) {
        grp_fu_396_p1 = tmp_174_fu_3060_p2.read();
    } else {
        grp_fu_396_p1 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_396_p2() {
    grp_fu_396_p2 = (!grp_fu_396_p0.read().is_01() || !grp_fu_396_p1.read().is_01())? sc_lv<1>(): (sc_biguint<8>(grp_fu_396_p0.read()) > sc_biguint<8>(grp_fu_396_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_400_p0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state78.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read()))) {
        grp_fu_400_p0 = tmp_182_reg_5851.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state71.read())) {
        grp_fu_400_p0 = tmp_182_fu_3400_p3.read();
    } else {
        grp_fu_400_p0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_400_p1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state78.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state113.read()))) {
        grp_fu_400_p1 = tmp_183_reg_5858.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state71.read())) {
        grp_fu_400_p1 = tmp_183_fu_3409_p2.read();
    } else {
        grp_fu_400_p1 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_400_p2() {
    grp_fu_400_p2 = (!grp_fu_400_p0.read().is_01() || !grp_fu_400_p1.read().is_01())? sc_lv<1>(): (sc_biguint<8>(grp_fu_400_p0.read()) > sc_biguint<8>(grp_fu_400_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_404_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state93.read())) {
        grp_fu_404_p0 = tmp_187_reg_5966.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read())) {
        grp_fu_404_p0 = tmp_187_fu_3746_p3.read();
    } else {
        grp_fu_404_p0 =  (sc_lv<9>) ("XXXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_404_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state93.read())) {
        grp_fu_404_p1 = tmp_188_reg_5977.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read())) {
        grp_fu_404_p1 = tmp_188_fu_3755_p2.read();
    } else {
        grp_fu_404_p1 =  (sc_lv<9>) ("XXXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_404_p2() {
    grp_fu_404_p2 = (!grp_fu_404_p0.read().is_01() || !grp_fu_404_p1.read().is_01())? sc_lv<1>(): (sc_biguint<9>(grp_fu_404_p0.read()) > sc_biguint<9>(grp_fu_404_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_408_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state93.read())) {
        grp_fu_408_p1 = tmp_187_reg_5966.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read())) {
        grp_fu_408_p1 = tmp_187_fu_3746_p3.read();
    } else {
        grp_fu_408_p1 =  (sc_lv<9>) ("XXXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_grp_fu_408_p2() {
    grp_fu_408_p2 = (!ap_const_lv9_FF.is_01() || !grp_fu_408_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(grp_fu_408_p1.read()));
}

void a0_aes_expandEncKey::thread_grp_fu_4143_p1() {
    grp_fu_4143_p1 = esl_zext<256,9>(tmp_636_reg_6075.read());
}

void a0_aes_expandEncKey::thread_grp_fu_4151_p1() {
    grp_fu_4151_p1 = esl_zext<256,9>(tmp_654_reg_6101.read());
}

void a0_aes_expandEncKey::thread_grp_fu_4479_p1() {
    grp_fu_4479_p1 = esl_zext<256,9>(tmp_691_reg_6178.read());
}

void a0_aes_expandEncKey::thread_grp_fu_4487_p1() {
    grp_fu_4487_p1 = esl_zext<256,9>(tmp_709_reg_6204.read());
}

void a0_aes_expandEncKey::thread_grp_fu_4815_p1() {
    grp_fu_4815_p1 = esl_zext<256,9>(tmp_746_reg_6281.read());
}

void a0_aes_expandEncKey::thread_grp_fu_4823_p1() {
    grp_fu_4823_p1 = esl_zext<256,9>(tmp_764_reg_6307.read());
}

void a0_aes_expandEncKey::thread_i_4_fu_708_p2() {
    i_4_fu_708_p2 = (!ap_const_lv5_4.is_01() || !i_phi_fu_343_p4.read().is_01())? sc_lv<5>(): (sc_biguint<5>(ap_const_lv5_4) + sc_biguint<5>(i_phi_fu_343_p4.read()));
}

void a0_aes_expandEncKey::thread_i_9_1_fu_3786_p2() {
    i_9_1_fu_3786_p2 = (!ap_const_lv6_8.is_01() || !i_1_reg_360.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_8) + sc_biguint<6>(i_1_reg_360.read()));
}

void a0_aes_expandEncKey::thread_i_9_fu_3666_p2() {
    i_9_fu_3666_p2 = (!ap_const_lv6_4.is_01() || !i_1_reg_360.read().is_01())? sc_lv<6>(): (sc_biguint<6>(ap_const_lv6_4) + sc_biguint<6>(i_1_reg_360.read()));
}

void a0_aes_expandEncKey::thread_i_phi_fu_343_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_34_reg_5071.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0))) {
        i_phi_fu_343_p4 = i_4_reg_5154.read();
    } else {
        i_phi_fu_343_p4 = i_reg_339.read();
    }
}

void a0_aes_expandEncKey::thread_k_blk_n_AR() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        k_blk_n_AR = m_axi_k_ARREADY.read();
    } else {
        k_blk_n_AR = ap_const_logic_1;
    }
}

void a0_aes_expandEncKey::thread_k_blk_n_AW() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state80.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state122.read()))) {
        k_blk_n_AW = m_axi_k_AWREADY.read();
    } else {
        k_blk_n_AW = ap_const_logic_1;
    }
}

void a0_aes_expandEncKey::thread_k_blk_n_B() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read()) && 
          esl_seteq<1,1,1>(tmp_351_reg_5514.read(), ap_const_lv1_0)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state128.read()))) {
        k_blk_n_B = m_axi_k_BVALID.read();
    } else {
        k_blk_n_B = ap_const_logic_1;
    }
}

void a0_aes_expandEncKey::thread_k_blk_n_R() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        k_blk_n_R = m_axi_k_RVALID.read();
    } else {
        k_blk_n_R = ap_const_logic_1;
    }
}

void a0_aes_expandEncKey::thread_k_blk_n_W() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state81.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state123.read()))) {
        k_blk_n_W = m_axi_k_WREADY.read();
    } else {
        k_blk_n_W = ap_const_logic_1;
    }
}

void a0_aes_expandEncKey::thread_k_offset_cast_fu_413_p1() {
    k_offset_cast_fu_413_p1 = esl_zext<32,25>(k_offset.read());
}

void a0_aes_expandEncKey::thread_m_axi_k_ARADDR() {
    m_axi_k_ARADDR = k_offset_cast_fu_413_p1.read();
}

void a0_aes_expandEncKey::thread_m_axi_k_ARBURST() {
    m_axi_k_ARBURST = ap_const_lv2_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARCACHE() {
    m_axi_k_ARCACHE = ap_const_lv4_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARID() {
    m_axi_k_ARID = ap_const_lv1_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARLEN() {
    m_axi_k_ARLEN = ap_const_lv32_1;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARLOCK() {
    m_axi_k_ARLOCK = ap_const_lv2_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARPROT() {
    m_axi_k_ARPROT = ap_const_lv3_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARQOS() {
    m_axi_k_ARQOS = ap_const_lv4_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARREGION() {
    m_axi_k_ARREGION = ap_const_lv4_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARSIZE() {
    m_axi_k_ARSIZE = ap_const_lv3_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARUSER() {
    m_axi_k_ARUSER = ap_const_lv1_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_ARVALID() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_ARREADY.read()))) {
        m_axi_k_ARVALID = ap_const_logic_1;
    } else {
        m_axi_k_ARVALID = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_m_axi_k_AWADDR() {
    m_axi_k_AWADDR = k_addr_reg_4987.read();
}

void a0_aes_expandEncKey::thread_m_axi_k_AWBURST() {
    m_axi_k_AWBURST = ap_const_lv2_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWCACHE() {
    m_axi_k_AWCACHE = ap_const_lv4_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWID() {
    m_axi_k_AWID = ap_const_lv1_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWLEN() {
    m_axi_k_AWLEN = ap_const_lv32_1;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWLOCK() {
    m_axi_k_AWLOCK = ap_const_lv2_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWPROT() {
    m_axi_k_AWPROT = ap_const_lv3_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWQOS() {
    m_axi_k_AWQOS = ap_const_lv4_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWREGION() {
    m_axi_k_AWREGION = ap_const_lv4_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWSIZE() {
    m_axi_k_AWSIZE = ap_const_lv3_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWUSER() {
    m_axi_k_AWUSER = ap_const_lv1_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_AWVALID() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state36.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_AWREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state80.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_AWREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state122.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_AWREADY.read())))) {
        m_axi_k_AWVALID = ap_const_logic_1;
    } else {
        m_axi_k_AWVALID = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_m_axi_k_BREADY() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state42.read()) && 
          esl_seteq<1,1,1>(m_axi_k_BVALID.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state128.read()) && 
          esl_seteq<1,1,1>(m_axi_k_BVALID.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state86.read()) && 
          esl_seteq<1,1,1>(tmp_351_reg_5514.read(), ap_const_lv1_0) && 
          !(esl_seteq<1,1,1>(tmp_351_reg_5514.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, m_axi_k_BVALID.read()))))) {
        m_axi_k_BREADY = ap_const_logic_1;
    } else {
        m_axi_k_BREADY = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_m_axi_k_RREADY() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()) && 
         esl_seteq<1,1,1>(m_axi_k_RVALID.read(), ap_const_logic_1))) {
        m_axi_k_RREADY = ap_const_logic_1;
    } else {
        m_axi_k_RREADY = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_m_axi_k_WDATA() {
    if (esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_WREADY.read())) {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state123.read())) {
            m_axi_k_WDATA = gep11011_part_set_1_reg_6374.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state81.read())) {
            m_axi_k_WDATA = gep11011_part_set_fu_3654_p5.read();
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read())) {
            m_axi_k_WDATA = gep96870_part_set_fu_2234_p5.read();
        } else {
            m_axi_k_WDATA =  (sc_lv<1024>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        m_axi_k_WDATA =  (sc_lv<1024>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_m_axi_k_WID() {
    m_axi_k_WID = ap_const_lv1_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_WLAST() {
    m_axi_k_WLAST = ap_const_logic_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_WSTRB() {
    m_axi_k_WSTRB = ap_const_lv128_lc_5;
}

void a0_aes_expandEncKey::thread_m_axi_k_WUSER() {
    m_axi_k_WUSER = ap_const_lv1_0;
}

void a0_aes_expandEncKey::thread_m_axi_k_WVALID() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state37.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_WREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state81.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_WREADY.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state123.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ioackin_m_axi_k_WREADY.read())))) {
        m_axi_k_WVALID = ap_const_logic_1;
    } else {
        m_axi_k_WVALID = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_p_demorgan10_fu_4597_p2() {
    p_demorgan10_fu_4597_p2 = (tmp_731_fu_4585_p2.read() & tmp_732_fu_4591_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan11_fu_4933_p2() {
    p_demorgan11_fu_4933_p2 = (tmp_786_fu_4921_p2.read() & tmp_787_fu_4927_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan1_fu_925_p2() {
    p_demorgan1_fu_925_p2 = (tmp_235_fu_913_p2.read() & tmp_236_fu_919_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan2_fu_977_p2() {
    p_demorgan2_fu_977_p2 = (tmp_290_fu_965_p2.read() & tmp_291_fu_971_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan3_fu_1106_p2() {
    p_demorgan3_fu_1106_p2 = (tmp_345_fu_1094_p2.read() & tmp_346_fu_1100_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan4_fu_2565_p2() {
    p_demorgan4_fu_2565_p2 = (tmp_403_fu_2553_p2.read() & tmp_404_fu_2559_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan5_fu_2914_p2() {
    p_demorgan5_fu_2914_p2 = (tmp_458_fu_2902_p2.read() & tmp_459_fu_2908_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan6_fu_3263_p2() {
    p_demorgan6_fu_3263_p2 = (tmp_513_fu_3251_p2.read() & tmp_514_fu_3257_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan7_fu_3612_p2() {
    p_demorgan7_fu_3612_p2 = (tmp_568_fu_3600_p2.read() & tmp_569_fu_3606_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan8_fu_3925_p2() {
    p_demorgan8_fu_3925_p2 = (tmp_621_fu_3913_p2.read() & tmp_622_fu_3919_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan9_fu_4261_p2() {
    p_demorgan9_fu_4261_p2 = (tmp_676_fu_4249_p2.read() & tmp_677_fu_4255_p2.read());
}

void a0_aes_expandEncKey::thread_p_demorgan_fu_873_p2() {
    p_demorgan_fu_873_p2 = (tmp_149_fu_861_p2.read() & tmp_150_fu_867_p2.read());
}

void a0_aes_expandEncKey::thread_p_new1_phi_fu_332_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_pp0_iter1_tmp_34_reg_5071.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage2.read(), ap_const_boolean_0))) {
        p_new1_phi_fu_332_p4 = gep17128130_part_set_fu_2050_p5.read();
    } else {
        p_new1_phi_fu_332_p4 = p_new1_reg_329.read();
    }
}

void a0_aes_expandEncKey::thread_sbox_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        sbox_address0 =  (sc_lv<8>) (tmp_46_fu_2072_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        sbox_address0 =  (sc_lv<8>) (tmp_fu_498_p1.read());
    } else {
        sbox_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_sbox_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        sbox_address1 =  (sc_lv<8>) (tmp_48_fu_2087_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        sbox_address1 =  (sc_lv<8>) (tmp_23_fu_502_p1.read());
    } else {
        sbox_address1 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_sbox_address2() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        sbox_address2 =  (sc_lv<8>) (tmp_50_fu_2102_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        sbox_address2 =  (sc_lv<8>) (tmp_25_fu_506_p1.read());
    } else {
        sbox_address2 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_sbox_address3() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read())) {
        sbox_address3 =  (sc_lv<8>) (tmp_52_fu_2117_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        sbox_address3 =  (sc_lv<8>) (tmp_27_fu_510_p1.read());
    } else {
        sbox_address3 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void a0_aes_expandEncKey::thread_sbox_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        sbox_ce0 = ap_const_logic_1;
    } else {
        sbox_ce0 = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_sbox_ce1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        sbox_ce1 = ap_const_logic_1;
    } else {
        sbox_ce1 = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_sbox_ce2() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        sbox_ce2 = ap_const_logic_1;
    } else {
        sbox_ce2 = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_sbox_ce3() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state35.read()))) {
        sbox_ce3 = ap_const_logic_1;
    } else {
        sbox_ce3 = ap_const_logic_0;
    }
}

void a0_aes_expandEncKey::thread_tmp1_fu_517_p2() {
    tmp1_fu_517_p2 = (tmp_30_fu_514_p1.read() ^ rc_read.read());
}

void a0_aes_expandEncKey::thread_tmp_100_fu_781_p1() {
    tmp_100_fu_781_p1 = esl_zext<9,7>(tmp_97_reg_5088.read());
}

void a0_aes_expandEncKey::thread_tmp_101_fu_784_p1() {
    tmp_101_fu_784_p1 = esl_zext<9,7>(tmp_98_reg_5095.read());
}

void a0_aes_expandEncKey::thread_tmp_102_fu_1034_p4() {
    tmp_102_fu_1034_p4 = p_new1_phi_fu_332_p4.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_103_fu_787_p2() {
    tmp_103_fu_787_p2 = (!tmp_100_fu_781_p1.read().is_01() || !tmp_101_fu_784_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_100_fu_781_p1.read()) - sc_biguint<9>(tmp_101_fu_784_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_104_fu_793_p2() {
    tmp_104_fu_793_p2 = (tmp_100_fu_781_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_105_fu_799_p2() {
    tmp_105_fu_799_p2 = (!tmp_101_fu_784_p1.read().is_01() || !tmp_100_fu_781_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_101_fu_784_p1.read()) - sc_biguint<9>(tmp_100_fu_781_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_106_fu_805_p3() {
    tmp_106_fu_805_p3 = (!grp_fu_372_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_372_p2.read()[0].to_bool())? tmp_103_fu_787_p2.read(): tmp_105_fu_799_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_108_fu_813_p3() {
    tmp_108_fu_813_p3 = (!grp_fu_372_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_372_p2.read()[0].to_bool())? tmp_104_fu_793_p2.read(): tmp_100_fu_781_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_109_fu_821_p2() {
    tmp_109_fu_821_p2 = (!ap_const_lv9_FF.is_01() || !tmp_106_fu_805_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_106_fu_805_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_111_fu_1249_p1() {
    tmp_111_fu_1249_p1 = esl_zext<256,9>(tmp_109_reg_5184.read());
}

void a0_aes_expandEncKey::thread_tmp_112_fu_1112_p2() {
    tmp_112_fu_1112_p2 = (!ap_const_lv4_D.is_01() || !tmp_37_reg_5075.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_D) + sc_biguint<4>(tmp_37_reg_5075.read()));
}

void a0_aes_expandEncKey::thread_tmp_113_fu_1117_p3() {
    tmp_113_fu_1117_p3 = esl_concat<4,3>(tmp_112_reg_5284.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_114_fu_1124_p2() {
    tmp_114_fu_1124_p2 = (tmp_113_fu_1117_p3.read() | ap_const_lv7_7);
}

void a0_aes_expandEncKey::thread_tmp_116_fu_664_p2() {
    tmp_116_fu_664_p2 = (tmp_37_fu_638_p1.read() | ap_const_lv4_1);
}

void a0_aes_expandEncKey::thread_tmp_117_fu_670_p3() {
    tmp_117_fu_670_p3 = esl_concat<4,3>(tmp_116_fu_664_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_118_fu_679_p2() {
    tmp_118_fu_679_p2 = (tmp_117_fu_670_p3.read() | ap_const_lv7_7);
}

void a0_aes_expandEncKey::thread_tmp_119_fu_1252_p2() {
    tmp_119_fu_1252_p2 = (!tmp_111_fu_1249_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_111_fu_1249_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_120_fu_1258_p2() {
    tmp_120_fu_1258_p2 = (grp_fu_1054_p2.read() & tmp_119_fu_1252_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_121_fu_1389_p2() {
    tmp_121_fu_1389_p2 = (!ap_const_lv4_E.is_01() || !tmp_37_reg_5075.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_E) + sc_biguint<4>(tmp_37_reg_5075.read()));
}

void a0_aes_expandEncKey::thread_tmp_122_fu_1394_p3() {
    tmp_122_fu_1394_p3 = esl_concat<4,3>(tmp_121_reg_5344.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_123_fu_1401_p2() {
    tmp_123_fu_1401_p2 = (tmp_122_fu_1394_p3.read() | ap_const_lv7_7);
}

void a0_aes_expandEncKey::thread_tmp_124_fu_1264_p1() {
    tmp_124_fu_1264_p1 = tmp_120_fu_1258_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_125_fu_686_p2() {
    tmp_125_fu_686_p2 = (tmp_37_fu_638_p1.read() | ap_const_lv4_2);
}

void a0_aes_expandEncKey::thread_tmp_126_fu_692_p3() {
    tmp_126_fu_692_p3 = esl_concat<4,3>(tmp_125_fu_686_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_127_fu_701_p2() {
    tmp_127_fu_701_p2 = (tmp_126_fu_692_p3.read() | ap_const_lv7_7);
}

void a0_aes_expandEncKey::thread_tmp_129_fu_827_p1() {
    tmp_129_fu_827_p1 = esl_zext<9,7>(tmp_97_reg_5088.read());
}

void a0_aes_expandEncKey::thread_tmp_130_fu_1666_p2() {
    tmp_130_fu_1666_p2 = (!ap_const_lv4_F.is_01() || !tmp_37_reg_5075.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_F) + sc_biguint<4>(tmp_37_reg_5075.read()));
}

void a0_aes_expandEncKey::thread_tmp_131_fu_1671_p3() {
    tmp_131_fu_1671_p3 = esl_concat<4,3>(tmp_130_reg_5404.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_132_fu_1678_p2() {
    tmp_132_fu_1678_p2 = (tmp_131_fu_1671_p3.read() | ap_const_lv7_7);
}

void a0_aes_expandEncKey::thread_tmp_133_fu_830_p1() {
    tmp_133_fu_830_p1 = esl_zext<9,7>(tmp_98_reg_5095.read());
}

void a0_aes_expandEncKey::thread_tmp_134_fu_983_p2() {
    tmp_134_fu_983_p2 = (tmp_37_reg_5075.read() | ap_const_lv4_3);
}

void a0_aes_expandEncKey::thread_tmp_135_fu_988_p3() {
    tmp_135_fu_988_p3 = esl_concat<4,3>(tmp_134_fu_983_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_136_fu_997_p2() {
    tmp_136_fu_997_p2 = (tmp_135_fu_988_p3.read() | ap_const_lv7_7);
}

void a0_aes_expandEncKey::thread_tmp_137_fu_1274_p1() {
    tmp_137_fu_1274_p1 = esl_zext<256,8>(tmp_36_fu_1268_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_138_fu_1278_p2() {
    tmp_138_fu_1278_p2 = (tmp_129_reg_5189.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_139_fu_833_p3() {
    tmp_139_fu_833_p3 = (!tmp_128_reg_5102.read()[0].is_01())? sc_lv<9>(): ((tmp_128_reg_5102.read()[0].to_bool())? tmp_129_fu_827_p1.read(): tmp_133_fu_830_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_140_fu_840_p3() {
    tmp_140_fu_840_p3 = (!tmp_128_reg_5102.read()[0].is_01())? sc_lv<9>(): ((tmp_128_reg_5102.read()[0].to_bool())? tmp_133_fu_830_p1.read(): tmp_129_fu_827_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_141_fu_1283_p3() {
    tmp_141_fu_1283_p3 = (!tmp_128_reg_5102.read()[0].is_01())? sc_lv<9>(): ((tmp_128_reg_5102.read()[0].to_bool())? tmp_138_fu_1278_p2.read(): tmp_129_reg_5189.read());
}

void a0_aes_expandEncKey::thread_tmp_142_fu_847_p2() {
    tmp_142_fu_847_p2 = (tmp_139_fu_833_p3.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_143_fu_1289_p1() {
    tmp_143_fu_1289_p1 = esl_zext<256,9>(tmp_141_fu_1283_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_144_fu_853_p1() {
    tmp_144_fu_853_p1 = esl_zext<256,9>(tmp_140_fu_840_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_145_fu_857_p1() {
    tmp_145_fu_857_p1 = esl_zext<256,9>(tmp_142_fu_847_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_146_fu_1293_p2() {
    tmp_146_fu_1293_p2 = (!tmp_143_fu_1289_p1.read().is_01())? sc_lv<256>(): tmp_137_fu_1274_p1.read() << (unsigned short)tmp_143_fu_1289_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_147_fu_1299_p4() {
    tmp_147_fu_1299_p4 = tmp_146_fu_1293_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_148_fu_1309_p3() {
    tmp_148_fu_1309_p3 = (!tmp_128_reg_5102.read()[0].is_01())? sc_lv<256>(): ((tmp_128_reg_5102.read()[0].to_bool())? tmp_147_fu_1299_p4.read(): tmp_146_fu_1293_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_149_fu_861_p2() {
    tmp_149_fu_861_p2 = (!tmp_144_fu_853_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_144_fu_853_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_150_fu_867_p2() {
    tmp_150_fu_867_p2 = (!tmp_145_fu_857_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_145_fu_857_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_151_fu_2259_p2() {
    tmp_151_fu_2259_p2 = (!ap_const_lv5_1C.is_01() || !tmp_352_fu_2255_p1.read().is_01())? sc_lv<5>(): (sc_bigint<5>(ap_const_lv5_1C) + sc_biguint<5>(tmp_352_fu_2255_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_152_fu_2269_p3() {
    tmp_152_fu_2269_p3 = esl_concat<5,3>(tmp_151_reg_5529.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_153_fu_2276_p2() {
    tmp_153_fu_2276_p2 = (tmp_152_fu_2269_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_154_fu_1316_p2() {
    tmp_154_fu_1316_p2 = (p_demorgan_reg_5195.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_155_fu_2354_p3() {
    tmp_155_fu_2354_p3 = esl_concat<5,3>(tmp_352_reg_5518.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_156_fu_2362_p2() {
    tmp_156_fu_2362_p2 = (tmp_155_fu_2354_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_157_fu_1321_p2() {
    tmp_157_fu_1321_p2 = (tmp_38_reg_5247.read() & tmp_154_fu_1316_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_158_fu_1326_p2() {
    tmp_158_fu_1326_p2 = (tmp_148_fu_1309_p3.read() & p_demorgan_reg_5195.read());
}

void a0_aes_expandEncKey::thread_tmp_159_fu_2571_p2() {
    tmp_159_fu_2571_p2 = (!ap_const_lv5_1D.is_01() || !tmp_352_reg_5518.read().is_01())? sc_lv<5>(): (sc_bigint<5>(ap_const_lv5_1D) + sc_biguint<5>(tmp_352_reg_5518.read()));
}

void a0_aes_expandEncKey::thread_tmp_160_fu_2612_p3() {
    tmp_160_fu_2612_p3 = esl_concat<5,3>(tmp_159_reg_5628.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_161_fu_2619_p2() {
    tmp_161_fu_2619_p2 = (tmp_160_fu_2612_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_162_fu_1331_p2() {
    tmp_162_fu_1331_p2 = (tmp_157_fu_1321_p2.read() | tmp_158_fu_1326_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_163_fu_2697_p2() {
    tmp_163_fu_2697_p2 = (tmp_352_reg_5518.read() | ap_const_lv5_1);
}

void a0_aes_expandEncKey::thread_tmp_164_fu_2702_p3() {
    tmp_164_fu_2702_p3 = esl_concat<5,3>(tmp_163_fu_2697_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_165_fu_2711_p2() {
    tmp_165_fu_2711_p2 = (tmp_164_fu_2702_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_166_fu_1130_p2() {
    tmp_166_fu_1130_p2 = (!tmp_113_fu_1117_p3.read().is_01() || !tmp_114_fu_1124_p2.read().is_01())? sc_lv<1>(): (sc_biguint<7>(tmp_113_fu_1117_p3.read()) > sc_biguint<7>(tmp_114_fu_1124_p2.read()));
}

void a0_aes_expandEncKey::thread_tmp_167_fu_1136_p1() {
    tmp_167_fu_1136_p1 = esl_zext<9,7>(tmp_113_fu_1117_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_168_fu_2920_p2() {
    tmp_168_fu_2920_p2 = (!ap_const_lv5_1E.is_01() || !tmp_352_reg_5518.read().is_01())? sc_lv<5>(): (sc_bigint<5>(ap_const_lv5_1E) + sc_biguint<5>(tmp_352_reg_5518.read()));
}

void a0_aes_expandEncKey::thread_tmp_169_fu_2961_p3() {
    tmp_169_fu_2961_p3 = esl_concat<5,3>(tmp_168_reg_5727.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_170_fu_2968_p2() {
    tmp_170_fu_2968_p2 = (tmp_169_fu_2961_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_171_fu_1140_p1() {
    tmp_171_fu_1140_p1 = esl_zext<9,7>(tmp_114_fu_1124_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_172_fu_3046_p2() {
    tmp_172_fu_3046_p2 = (tmp_352_reg_5518.read() | ap_const_lv5_2);
}

void a0_aes_expandEncKey::thread_tmp_173_fu_3051_p3() {
    tmp_173_fu_3051_p3 = esl_concat<5,3>(tmp_172_fu_3046_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_174_fu_3060_p2() {
    tmp_174_fu_3060_p2 = (tmp_173_fu_3051_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_175_fu_1337_p4() {
    tmp_175_fu_1337_p4 = tmp_162_fu_1331_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_176_fu_1144_p2() {
    tmp_176_fu_1144_p2 = (!tmp_167_fu_1136_p1.read().is_01() || !tmp_171_fu_1140_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_167_fu_1136_p1.read()) - sc_biguint<9>(tmp_171_fu_1140_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_177_fu_3269_p2() {
    tmp_177_fu_3269_p2 = (!ap_const_lv5_1F.is_01() || !tmp_352_reg_5518.read().is_01())? sc_lv<5>(): (sc_bigint<5>(ap_const_lv5_1F) + sc_biguint<5>(tmp_352_reg_5518.read()));
}

void a0_aes_expandEncKey::thread_tmp_178_fu_3310_p3() {
    tmp_178_fu_3310_p3 = esl_concat<5,3>(tmp_177_reg_5826.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_179_fu_3317_p2() {
    tmp_179_fu_3317_p2 = (tmp_178_fu_3310_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_180_fu_1150_p2() {
    tmp_180_fu_1150_p2 = (tmp_167_fu_1136_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_181_fu_3395_p2() {
    tmp_181_fu_3395_p2 = (tmp_352_reg_5518.read() | ap_const_lv5_3);
}

void a0_aes_expandEncKey::thread_tmp_182_fu_3400_p3() {
    tmp_182_fu_3400_p3 = esl_concat<5,3>(tmp_181_fu_3395_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_183_fu_3409_p2() {
    tmp_183_fu_3409_p2 = (tmp_182_fu_3400_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_184_fu_1156_p2() {
    tmp_184_fu_1156_p2 = (!tmp_171_fu_1140_p1.read().is_01() || !tmp_167_fu_1136_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_171_fu_1140_p1.read()) - sc_biguint<9>(tmp_167_fu_1136_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_185_fu_1162_p3() {
    tmp_185_fu_1162_p3 = (!tmp_166_fu_1130_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_166_fu_1130_p2.read()[0].to_bool())? tmp_176_fu_1144_p2.read(): tmp_184_fu_1156_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_187_fu_3746_p3() {
    tmp_187_fu_3746_p3 = esl_concat<6,3>(i_9_reg_5935.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_188_fu_3755_p2() {
    tmp_188_fu_3755_p2 = (tmp_187_fu_3746_p3.read() | ap_const_lv9_7);
}

void a0_aes_expandEncKey::thread_tmp_189_fu_1170_p3() {
    tmp_189_fu_1170_p3 = (!tmp_166_fu_1130_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_166_fu_1130_p2.read()[0].to_bool())? tmp_180_fu_1150_p2.read(): tmp_167_fu_1136_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_190_fu_1178_p2() {
    tmp_190_fu_1178_p2 = (!ap_const_lv9_FF.is_01() || !tmp_185_fu_1162_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_185_fu_1162_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_192_fu_4031_p2() {
    tmp_192_fu_4031_p2 = (tmp_574_reg_5940.read() | ap_const_lv5_1);
}

void a0_aes_expandEncKey::thread_tmp_193_fu_1507_p1() {
    tmp_193_fu_1507_p1 = esl_zext<256,9>(tmp_190_reg_5299.read());
}

void a0_aes_expandEncKey::thread_tmp_194_fu_4054_p3() {
    tmp_194_fu_4054_p3 = esl_concat<1,8>(ap_const_lv1_0, tmp_645_fu_4048_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_196_fu_1510_p2() {
    tmp_196_fu_1510_p2 = (!tmp_193_fu_1507_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_193_fu_1507_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_197_fu_1516_p2() {
    tmp_197_fu_1516_p2 = (grp_fu_1357_p2.read() & tmp_196_fu_1510_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_198_fu_4367_p2() {
    tmp_198_fu_4367_p2 = (tmp_574_reg_5940.read() | ap_const_lv5_2);
}

void a0_aes_expandEncKey::thread_tmp_199_fu_1522_p1() {
    tmp_199_fu_1522_p1 = tmp_197_fu_1516_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_200_fu_4390_p3() {
    tmp_200_fu_4390_p3 = esl_concat<1,8>(ap_const_lv1_0, tmp_700_fu_4384_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_202_fu_1184_p1() {
    tmp_202_fu_1184_p1 = esl_zext<9,7>(tmp_117_reg_5110.read());
}

void a0_aes_expandEncKey::thread_tmp_203_fu_1187_p1() {
    tmp_203_fu_1187_p1 = esl_zext<9,7>(tmp_118_reg_5117.read());
}

void a0_aes_expandEncKey::thread_tmp_204_fu_4703_p2() {
    tmp_204_fu_4703_p2 = (tmp_574_reg_5940.read() | ap_const_lv5_3);
}

void a0_aes_expandEncKey::thread_tmp_205_fu_1363_p4() {
    tmp_205_fu_1363_p4 = tmp_162_fu_1331_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_206_fu_4726_p3() {
    tmp_206_fu_4726_p3 = esl_concat<1,8>(ap_const_lv1_0, tmp_755_fu_4720_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_207_fu_1190_p2() {
    tmp_207_fu_1190_p2 = (!tmp_202_fu_1184_p1.read().is_01() || !tmp_203_fu_1187_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_202_fu_1184_p1.read()) - sc_biguint<9>(tmp_203_fu_1187_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_208_fu_1196_p2() {
    tmp_208_fu_1196_p2 = (tmp_202_fu_1184_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_209_fu_1202_p2() {
    tmp_209_fu_1202_p2 = (!tmp_203_fu_1187_p1.read().is_01() || !tmp_202_fu_1184_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_203_fu_1187_p1.read()) - sc_biguint<9>(tmp_202_fu_1184_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_210_fu_1208_p3() {
    tmp_210_fu_1208_p3 = (!grp_fu_376_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_376_p2.read()[0].to_bool())? tmp_207_fu_1190_p2.read(): tmp_209_fu_1202_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_212_fu_1216_p3() {
    tmp_212_fu_1216_p3 = (!grp_fu_376_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_376_p2.read()[0].to_bool())? tmp_208_fu_1196_p2.read(): tmp_202_fu_1184_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_213_fu_1224_p2() {
    tmp_213_fu_1224_p2 = (!ap_const_lv9_FF.is_01() || !tmp_210_fu_1208_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_210_fu_1208_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_215_fu_1526_p1() {
    tmp_215_fu_1526_p1 = esl_zext<256,9>(tmp_213_reg_5314.read());
}

void a0_aes_expandEncKey::thread_tmp_216_cast_fu_4044_p1() {
    tmp_216_cast_fu_4044_p1 = esl_zext<10,8>(tmp_644_fu_4036_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_217_cast_fu_4062_p1() {
    tmp_217_cast_fu_4062_p1 = esl_zext<10,9>(tmp_194_fu_4054_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_217_fu_1529_p2() {
    tmp_217_fu_1529_p2 = (!tmp_215_fu_1526_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_215_fu_1526_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_218_fu_1535_p2() {
    tmp_218_fu_1535_p2 = (grp_fu_1383_p2.read() & tmp_217_fu_1529_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_219_fu_1541_p1() {
    tmp_219_fu_1541_p1 = tmp_218_fu_1535_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_221_fu_879_p1() {
    tmp_221_fu_879_p1 = esl_zext<9,7>(tmp_117_reg_5110.read());
}

void a0_aes_expandEncKey::thread_tmp_222_fu_882_p1() {
    tmp_222_fu_882_p1 = esl_zext<9,7>(tmp_118_reg_5117.read());
}

void a0_aes_expandEncKey::thread_tmp_223_cast_fu_4380_p1() {
    tmp_223_cast_fu_4380_p1 = esl_zext<10,8>(tmp_699_fu_4372_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_223_fu_1551_p1() {
    tmp_223_fu_1551_p1 = esl_zext<256,8>(tmp_39_fu_1545_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_224_cast_fu_4398_p1() {
    tmp_224_cast_fu_4398_p1 = esl_zext<10,9>(tmp_200_fu_4390_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_224_fu_1555_p2() {
    tmp_224_fu_1555_p2 = (tmp_221_reg_5201.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_225_fu_885_p3() {
    tmp_225_fu_885_p3 = (!tmp_220_reg_5124.read()[0].is_01())? sc_lv<9>(): ((tmp_220_reg_5124.read()[0].to_bool())? tmp_221_fu_879_p1.read(): tmp_222_fu_882_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_226_fu_892_p3() {
    tmp_226_fu_892_p3 = (!tmp_220_reg_5124.read()[0].is_01())? sc_lv<9>(): ((tmp_220_reg_5124.read()[0].to_bool())? tmp_222_fu_882_p1.read(): tmp_221_fu_879_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_227_fu_1560_p3() {
    tmp_227_fu_1560_p3 = (!tmp_220_reg_5124.read()[0].is_01())? sc_lv<9>(): ((tmp_220_reg_5124.read()[0].to_bool())? tmp_224_fu_1555_p2.read(): tmp_221_reg_5201.read());
}

void a0_aes_expandEncKey::thread_tmp_228_fu_899_p2() {
    tmp_228_fu_899_p2 = (tmp_225_fu_885_p3.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_229_fu_1566_p1() {
    tmp_229_fu_1566_p1 = esl_zext<256,9>(tmp_227_fu_1560_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_22_fu_523_p2() {
    tmp_22_fu_523_p2 = (tmp1_fu_517_p2.read() ^ sbox_q0.read());
}

void a0_aes_expandEncKey::thread_tmp_230_cast_fu_4716_p1() {
    tmp_230_cast_fu_4716_p1 = esl_zext<10,8>(tmp_754_fu_4708_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_230_fu_905_p1() {
    tmp_230_fu_905_p1 = esl_zext<256,9>(tmp_226_fu_892_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_231_cast_fu_4734_p1() {
    tmp_231_cast_fu_4734_p1 = esl_zext<10,9>(tmp_206_fu_4726_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_231_fu_909_p1() {
    tmp_231_fu_909_p1 = esl_zext<256,9>(tmp_228_fu_899_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_232_fu_1570_p2() {
    tmp_232_fu_1570_p2 = (!tmp_229_fu_1566_p1.read().is_01())? sc_lv<256>(): tmp_223_fu_1551_p1.read() << (unsigned short)tmp_229_fu_1566_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_233_fu_1576_p4() {
    tmp_233_fu_1576_p4 = tmp_232_fu_1570_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_234_fu_1586_p3() {
    tmp_234_fu_1586_p3 = (!tmp_220_reg_5124.read()[0].is_01())? sc_lv<256>(): ((tmp_220_reg_5124.read()[0].to_bool())? tmp_233_fu_1576_p4.read(): tmp_232_fu_1570_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_235_fu_913_p2() {
    tmp_235_fu_913_p2 = (!tmp_230_fu_905_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_230_fu_905_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_236_fu_919_p2() {
    tmp_236_fu_919_p2 = (!tmp_231_fu_909_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_231_fu_909_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_237_fu_1593_p2() {
    tmp_237_fu_1593_p2 = (p_demorgan1_reg_5207.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_238_fu_1598_p2() {
    tmp_238_fu_1598_p2 = (tmp_162_reg_5319.read() & tmp_237_fu_1593_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_239_fu_1603_p2() {
    tmp_239_fu_1603_p2 = (tmp_234_fu_1586_p3.read() & p_demorgan1_reg_5207.read());
}

void a0_aes_expandEncKey::thread_tmp_23_fu_502_p1() {
    tmp_23_fu_502_p1 = esl_zext<32,8>(tmp_64_reg_5012.read());
}

void a0_aes_expandEncKey::thread_tmp_240_fu_1608_p2() {
    tmp_240_fu_1608_p2 = (tmp_238_fu_1598_p2.read() | tmp_239_fu_1603_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_241_fu_1407_p2() {
    tmp_241_fu_1407_p2 = (!tmp_122_fu_1394_p3.read().is_01() || !tmp_123_fu_1401_p2.read().is_01())? sc_lv<1>(): (sc_biguint<7>(tmp_122_fu_1394_p3.read()) > sc_biguint<7>(tmp_123_fu_1401_p2.read()));
}

void a0_aes_expandEncKey::thread_tmp_242_fu_1413_p1() {
    tmp_242_fu_1413_p1 = esl_zext<9,7>(tmp_122_fu_1394_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_243_fu_1417_p1() {
    tmp_243_fu_1417_p1 = esl_zext<9,7>(tmp_123_fu_1401_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_244_fu_1614_p4() {
    tmp_244_fu_1614_p4 = tmp_240_fu_1608_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_245_fu_1421_p2() {
    tmp_245_fu_1421_p2 = (!tmp_242_fu_1413_p1.read().is_01() || !tmp_243_fu_1417_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_242_fu_1413_p1.read()) - sc_biguint<9>(tmp_243_fu_1417_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_246_fu_1427_p2() {
    tmp_246_fu_1427_p2 = (tmp_242_fu_1413_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_247_fu_1433_p2() {
    tmp_247_fu_1433_p2 = (!tmp_243_fu_1417_p1.read().is_01() || !tmp_242_fu_1413_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_243_fu_1417_p1.read()) - sc_biguint<9>(tmp_242_fu_1413_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_248_fu_1439_p3() {
    tmp_248_fu_1439_p3 = (!tmp_241_fu_1407_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_241_fu_1407_p2.read()[0].to_bool())? tmp_245_fu_1421_p2.read(): tmp_247_fu_1433_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_24_fu_540_p2() {
    tmp_24_fu_540_p2 = (sbox_q1.read() ^ tmp_65_reg_5017.read());
}

void a0_aes_expandEncKey::thread_tmp_250_fu_1447_p3() {
    tmp_250_fu_1447_p3 = (!tmp_241_fu_1407_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_241_fu_1407_p2.read()[0].to_bool())? tmp_246_fu_1427_p2.read(): tmp_242_fu_1413_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_251_fu_1455_p2() {
    tmp_251_fu_1455_p2 = (!ap_const_lv9_FF.is_01() || !tmp_248_fu_1439_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_248_fu_1439_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_253_fu_1784_p1() {
    tmp_253_fu_1784_p1 = esl_zext<256,9>(tmp_251_reg_5359.read());
}

void a0_aes_expandEncKey::thread_tmp_255_fu_1787_p2() {
    tmp_255_fu_1787_p2 = (!tmp_253_fu_1784_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_253_fu_1784_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_256_fu_1793_p2() {
    tmp_256_fu_1793_p2 = (grp_fu_1634_p2.read() & tmp_255_fu_1787_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_257_fu_1799_p1() {
    tmp_257_fu_1799_p1 = tmp_256_fu_1793_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_259_fu_1461_p1() {
    tmp_259_fu_1461_p1 = esl_zext<9,7>(tmp_126_reg_5132.read());
}

void a0_aes_expandEncKey::thread_tmp_25_fu_506_p1() {
    tmp_25_fu_506_p1 = esl_zext<32,8>(tmp_68_reg_5022.read());
}

void a0_aes_expandEncKey::thread_tmp_260_fu_1464_p1() {
    tmp_260_fu_1464_p1 = esl_zext<9,7>(tmp_127_reg_5139.read());
}

void a0_aes_expandEncKey::thread_tmp_261_fu_1640_p4() {
    tmp_261_fu_1640_p4 = tmp_240_fu_1608_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_262_fu_1467_p2() {
    tmp_262_fu_1467_p2 = (!tmp_259_fu_1461_p1.read().is_01() || !tmp_260_fu_1464_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_259_fu_1461_p1.read()) - sc_biguint<9>(tmp_260_fu_1464_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_263_fu_1473_p2() {
    tmp_263_fu_1473_p2 = (tmp_259_fu_1461_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_264_fu_1479_p2() {
    tmp_264_fu_1479_p2 = (!tmp_260_fu_1464_p1.read().is_01() || !tmp_259_fu_1461_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_260_fu_1464_p1.read()) - sc_biguint<9>(tmp_259_fu_1461_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_265_fu_1485_p3() {
    tmp_265_fu_1485_p3 = (!grp_fu_380_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_380_p2.read()[0].to_bool())? tmp_262_fu_1467_p2.read(): tmp_264_fu_1479_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_267_fu_1493_p3() {
    tmp_267_fu_1493_p3 = (!grp_fu_380_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_380_p2.read()[0].to_bool())? tmp_263_fu_1473_p2.read(): tmp_259_fu_1461_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_268_fu_1501_p2() {
    tmp_268_fu_1501_p2 = (!ap_const_lv9_FF.is_01() || !tmp_265_fu_1485_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_265_fu_1485_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_26_fu_557_p2() {
    tmp_26_fu_557_p2 = (sbox_q2.read() ^ tmp_69_reg_5027.read());
}

void a0_aes_expandEncKey::thread_tmp_270_fu_1803_p1() {
    tmp_270_fu_1803_p1 = esl_zext<256,9>(tmp_268_reg_5374.read());
}

void a0_aes_expandEncKey::thread_tmp_272_fu_1806_p2() {
    tmp_272_fu_1806_p2 = (!tmp_270_fu_1803_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_270_fu_1803_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_273_fu_1812_p2() {
    tmp_273_fu_1812_p2 = (grp_fu_1660_p2.read() & tmp_272_fu_1806_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_274_fu_1818_p1() {
    tmp_274_fu_1818_p1 = tmp_273_fu_1812_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_276_fu_931_p1() {
    tmp_276_fu_931_p1 = esl_zext<9,7>(tmp_126_reg_5132.read());
}

void a0_aes_expandEncKey::thread_tmp_277_fu_934_p1() {
    tmp_277_fu_934_p1 = esl_zext<9,7>(tmp_127_reg_5139.read());
}

void a0_aes_expandEncKey::thread_tmp_278_fu_1828_p1() {
    tmp_278_fu_1828_p1 = esl_zext<256,8>(tmp_42_fu_1822_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_279_fu_1832_p2() {
    tmp_279_fu_1832_p2 = (tmp_276_reg_5213.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_27_fu_510_p1() {
    tmp_27_fu_510_p1 = esl_zext<32,8>(tmp_71_reg_5032.read());
}

void a0_aes_expandEncKey::thread_tmp_280_fu_937_p3() {
    tmp_280_fu_937_p3 = (!tmp_275_reg_5146.read()[0].is_01())? sc_lv<9>(): ((tmp_275_reg_5146.read()[0].to_bool())? tmp_276_fu_931_p1.read(): tmp_277_fu_934_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_281_fu_944_p3() {
    tmp_281_fu_944_p3 = (!tmp_275_reg_5146.read()[0].is_01())? sc_lv<9>(): ((tmp_275_reg_5146.read()[0].to_bool())? tmp_277_fu_934_p1.read(): tmp_276_fu_931_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_282_fu_1837_p3() {
    tmp_282_fu_1837_p3 = (!tmp_275_reg_5146.read()[0].is_01())? sc_lv<9>(): ((tmp_275_reg_5146.read()[0].to_bool())? tmp_279_fu_1832_p2.read(): tmp_276_reg_5213.read());
}

void a0_aes_expandEncKey::thread_tmp_283_fu_951_p2() {
    tmp_283_fu_951_p2 = (tmp_280_fu_937_p3.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_284_fu_1843_p1() {
    tmp_284_fu_1843_p1 = esl_zext<256,9>(tmp_282_fu_1837_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_285_fu_957_p1() {
    tmp_285_fu_957_p1 = esl_zext<256,9>(tmp_281_fu_944_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_286_fu_961_p1() {
    tmp_286_fu_961_p1 = esl_zext<256,9>(tmp_283_fu_951_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_287_fu_1847_p2() {
    tmp_287_fu_1847_p2 = (!tmp_284_fu_1843_p1.read().is_01())? sc_lv<256>(): tmp_278_fu_1828_p1.read() << (unsigned short)tmp_284_fu_1843_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_288_fu_1853_p4() {
    tmp_288_fu_1853_p4 = tmp_287_fu_1847_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_289_fu_1863_p3() {
    tmp_289_fu_1863_p3 = (!tmp_275_reg_5146.read()[0].is_01())? sc_lv<256>(): ((tmp_275_reg_5146.read()[0].to_bool())? tmp_288_fu_1853_p4.read(): tmp_287_fu_1847_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_28_fu_574_p2() {
    tmp_28_fu_574_p2 = (sbox_q3.read() ^ tmp_72_reg_5037.read());
}

void a0_aes_expandEncKey::thread_tmp_290_fu_965_p2() {
    tmp_290_fu_965_p2 = (!tmp_285_fu_957_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_285_fu_957_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_291_fu_971_p2() {
    tmp_291_fu_971_p2 = (!tmp_286_fu_961_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_286_fu_961_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_292_fu_1870_p2() {
    tmp_292_fu_1870_p2 = (p_demorgan2_reg_5219.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_293_fu_1875_p2() {
    tmp_293_fu_1875_p2 = (tmp_240_reg_5379.read() & tmp_292_fu_1870_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_294_fu_1880_p2() {
    tmp_294_fu_1880_p2 = (tmp_289_fu_1863_p3.read() & p_demorgan2_reg_5219.read());
}

void a0_aes_expandEncKey::thread_tmp_295_fu_1885_p2() {
    tmp_295_fu_1885_p2 = (tmp_293_fu_1875_p2.read() | tmp_294_fu_1880_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_296_fu_1684_p2() {
    tmp_296_fu_1684_p2 = (!tmp_131_fu_1671_p3.read().is_01() || !tmp_132_fu_1678_p2.read().is_01())? sc_lv<1>(): (sc_biguint<7>(tmp_131_fu_1671_p3.read()) > sc_biguint<7>(tmp_132_fu_1678_p2.read()));
}

void a0_aes_expandEncKey::thread_tmp_297_fu_1690_p1() {
    tmp_297_fu_1690_p1 = esl_zext<9,7>(tmp_131_fu_1671_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_298_fu_1694_p1() {
    tmp_298_fu_1694_p1 = esl_zext<9,7>(tmp_132_fu_1678_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_299_fu_1891_p4() {
    tmp_299_fu_1891_p4 = tmp_295_fu_1885_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_29_fu_424_p1() {
    tmp_29_fu_424_p1 = m_axi_k_RDATA.read().range(256-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_300_fu_1698_p2() {
    tmp_300_fu_1698_p2 = (!tmp_297_fu_1690_p1.read().is_01() || !tmp_298_fu_1694_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_297_fu_1690_p1.read()) - sc_biguint<9>(tmp_298_fu_1694_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_301_fu_1704_p2() {
    tmp_301_fu_1704_p2 = (tmp_297_fu_1690_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_302_fu_1710_p2() {
    tmp_302_fu_1710_p2 = (!tmp_298_fu_1694_p1.read().is_01() || !tmp_297_fu_1690_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_298_fu_1694_p1.read()) - sc_biguint<9>(tmp_297_fu_1690_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_303_fu_1716_p3() {
    tmp_303_fu_1716_p3 = (!tmp_296_fu_1684_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_296_fu_1684_p2.read()[0].to_bool())? tmp_300_fu_1698_p2.read(): tmp_302_fu_1710_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_305_fu_1724_p3() {
    tmp_305_fu_1724_p3 = (!tmp_296_fu_1684_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_296_fu_1684_p2.read()[0].to_bool())? tmp_301_fu_1704_p2.read(): tmp_297_fu_1690_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_306_fu_1732_p2() {
    tmp_306_fu_1732_p2 = (!ap_const_lv9_FF.is_01() || !tmp_303_fu_1716_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_303_fu_1716_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_308_fu_1943_p1() {
    tmp_308_fu_1943_p1 = esl_zext<256,9>(tmp_306_reg_5419.read());
}

void a0_aes_expandEncKey::thread_tmp_30_fu_514_p1() {
    tmp_30_fu_514_p1 = k_addr_read_reg_4996.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_310_fu_1946_p2() {
    tmp_310_fu_1946_p2 = (!tmp_308_fu_1943_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_308_fu_1943_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_311_fu_1952_p2() {
    tmp_311_fu_1952_p2 = (grp_fu_1911_p2.read() & tmp_310_fu_1946_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_312_fu_1958_p1() {
    tmp_312_fu_1958_p1 = tmp_311_fu_1952_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_314_fu_1738_p1() {
    tmp_314_fu_1738_p1 = esl_zext<9,7>(tmp_135_reg_5225.read());
}

void a0_aes_expandEncKey::thread_tmp_315_fu_1741_p1() {
    tmp_315_fu_1741_p1 = esl_zext<9,7>(tmp_136_reg_5232.read());
}

void a0_aes_expandEncKey::thread_tmp_316_fu_1917_p4() {
    tmp_316_fu_1917_p4 = tmp_295_fu_1885_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_317_fu_1744_p2() {
    tmp_317_fu_1744_p2 = (!tmp_314_fu_1738_p1.read().is_01() || !tmp_315_fu_1741_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_314_fu_1738_p1.read()) - sc_biguint<9>(tmp_315_fu_1741_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_318_fu_1750_p2() {
    tmp_318_fu_1750_p2 = (tmp_314_fu_1738_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_319_fu_1756_p2() {
    tmp_319_fu_1756_p2 = (!tmp_315_fu_1741_p1.read().is_01() || !tmp_314_fu_1738_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_315_fu_1741_p1.read()) - sc_biguint<9>(tmp_314_fu_1738_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_31_cast_cast_fu_616_p3() {
    tmp_31_cast_cast_fu_616_p3 = (!tmp_33_fu_608_p3.read()[0].is_01())? sc_lv<8>(): ((tmp_33_fu_608_p3.read()[0].to_bool())? ap_const_lv8_1B: ap_const_lv8_0);
}

void a0_aes_expandEncKey::thread_tmp_31_fu_602_p2() {
    tmp_31_fu_602_p2 = (!ap_const_lv8_1.is_01())? sc_lv<8>(): rc_read.read() << (unsigned short)ap_const_lv8_1.to_uint();
}

void a0_aes_expandEncKey::thread_tmp_320_fu_1762_p3() {
    tmp_320_fu_1762_p3 = (!grp_fu_384_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_384_p2.read()[0].to_bool())? tmp_317_fu_1744_p2.read(): tmp_319_fu_1756_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_322_fu_1770_p3() {
    tmp_322_fu_1770_p3 = (!grp_fu_384_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_384_p2.read()[0].to_bool())? tmp_318_fu_1750_p2.read(): tmp_314_fu_1738_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_323_fu_1778_p2() {
    tmp_323_fu_1778_p2 = (!ap_const_lv9_FF.is_01() || !tmp_320_fu_1762_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_320_fu_1762_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_325_fu_1962_p1() {
    tmp_325_fu_1962_p1 = esl_zext<256,9>(tmp_323_reg_5434.read());
}

void a0_aes_expandEncKey::thread_tmp_327_fu_1965_p2() {
    tmp_327_fu_1965_p2 = (!tmp_325_fu_1962_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_325_fu_1962_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_328_fu_1971_p2() {
    tmp_328_fu_1971_p2 = (grp_fu_1937_p2.read() & tmp_327_fu_1965_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_329_fu_1977_p1() {
    tmp_329_fu_1977_p1 = tmp_328_fu_1971_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_32_fu_624_p2() {
    tmp_32_fu_624_p2 = (tmp_31_cast_cast_fu_616_p3.read() ^ tmp_31_fu_602_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_331_fu_1060_p1() {
    tmp_331_fu_1060_p1 = esl_zext<9,7>(tmp_135_reg_5225.read());
}

void a0_aes_expandEncKey::thread_tmp_332_fu_1063_p1() {
    tmp_332_fu_1063_p1 = esl_zext<9,7>(tmp_136_reg_5232.read());
}

void a0_aes_expandEncKey::thread_tmp_333_fu_1987_p1() {
    tmp_333_fu_1987_p1 = esl_zext<256,8>(tmp_45_fu_1981_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_334_fu_1991_p2() {
    tmp_334_fu_1991_p2 = (tmp_331_reg_5272.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_335_fu_1066_p3() {
    tmp_335_fu_1066_p3 = (!tmp_330_reg_5239.read()[0].is_01())? sc_lv<9>(): ((tmp_330_reg_5239.read()[0].to_bool())? tmp_331_fu_1060_p1.read(): tmp_332_fu_1063_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_336_fu_1073_p3() {
    tmp_336_fu_1073_p3 = (!tmp_330_reg_5239.read()[0].is_01())? sc_lv<9>(): ((tmp_330_reg_5239.read()[0].to_bool())? tmp_332_fu_1063_p1.read(): tmp_331_fu_1060_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_337_fu_1996_p3() {
    tmp_337_fu_1996_p3 = (!ap_reg_pp0_iter1_tmp_330_reg_5239.read()[0].is_01())? sc_lv<9>(): ((ap_reg_pp0_iter1_tmp_330_reg_5239.read()[0].to_bool())? tmp_334_fu_1991_p2.read(): tmp_331_reg_5272.read());
}

void a0_aes_expandEncKey::thread_tmp_338_fu_1080_p2() {
    tmp_338_fu_1080_p2 = (tmp_335_fu_1066_p3.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_339_fu_2002_p1() {
    tmp_339_fu_2002_p1 = esl_zext<256,9>(tmp_337_fu_1996_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_33_fu_608_p3() {
    tmp_33_fu_608_p3 = rc_read.read().range(7, 7);
}

void a0_aes_expandEncKey::thread_tmp_340_fu_1086_p1() {
    tmp_340_fu_1086_p1 = esl_zext<256,9>(tmp_336_fu_1073_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_341_fu_1090_p1() {
    tmp_341_fu_1090_p1 = esl_zext<256,9>(tmp_338_fu_1080_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_342_fu_2006_p2() {
    tmp_342_fu_2006_p2 = (!tmp_339_fu_2002_p1.read().is_01())? sc_lv<256>(): tmp_333_fu_1987_p1.read() << (unsigned short)tmp_339_fu_2002_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_343_fu_2012_p4() {
    tmp_343_fu_2012_p4 = tmp_342_fu_2006_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_344_fu_2022_p3() {
    tmp_344_fu_2022_p3 = (!ap_reg_pp0_iter1_tmp_330_reg_5239.read()[0].is_01())? sc_lv<256>(): ((ap_reg_pp0_iter1_tmp_330_reg_5239.read()[0].to_bool())? tmp_343_fu_2012_p4.read(): tmp_342_fu_2006_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_345_fu_1094_p2() {
    tmp_345_fu_1094_p2 = (!tmp_340_fu_1086_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_340_fu_1086_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_346_fu_1100_p2() {
    tmp_346_fu_1100_p2 = (!tmp_341_fu_1090_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_341_fu_1090_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_347_fu_2029_p2() {
    tmp_347_fu_2029_p2 = (p_demorgan3_reg_5278.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_348_fu_2034_p2() {
    tmp_348_fu_2034_p2 = (tmp_295_reg_5439.read() & tmp_347_fu_2029_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_349_fu_2039_p2() {
    tmp_349_fu_2039_p2 = (tmp_344_fu_2022_p3.read() & p_demorgan3_reg_5278.read());
}

void a0_aes_expandEncKey::thread_tmp_34_fu_630_p3() {
    tmp_34_fu_630_p3 = i_phi_fu_343_p4.read().range(4, 4);
}

void a0_aes_expandEncKey::thread_tmp_350_fu_2044_p2() {
    tmp_350_fu_2044_p2 = (tmp_348_fu_2034_p2.read() | tmp_349_fu_2039_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_351_fu_2247_p3() {
    tmp_351_fu_2247_p3 = i_1_reg_360.read().range(5, 5);
}

void a0_aes_expandEncKey::thread_tmp_352_fu_2255_p1() {
    tmp_352_fu_2255_p1 = i_1_reg_360.read().range(5-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_353_fu_2265_p1() {
    tmp_353_fu_2265_p1 = gep_reg_350.read().range(256-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_354_fu_2282_p2() {
    tmp_354_fu_2282_p2 = (!tmp_152_fu_2269_p3.read().is_01() || !tmp_153_fu_2276_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_152_fu_2269_p3.read()) > sc_biguint<8>(tmp_153_fu_2276_p2.read()));
}

void a0_aes_expandEncKey::thread_tmp_355_fu_2288_p1() {
    tmp_355_fu_2288_p1 = esl_zext<9,8>(tmp_152_fu_2269_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_356_fu_2292_p1() {
    tmp_356_fu_2292_p1 = esl_zext<9,8>(tmp_153_fu_2276_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_357_fu_2296_p4() {
    tmp_357_fu_2296_p4 = gep_reg_350.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_358_fu_2306_p2() {
    tmp_358_fu_2306_p2 = (!tmp_355_fu_2288_p1.read().is_01() || !tmp_356_fu_2292_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_355_fu_2288_p1.read()) - sc_biguint<9>(tmp_356_fu_2292_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_359_fu_2312_p2() {
    tmp_359_fu_2312_p2 = (tmp_355_fu_2288_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_35_fu_2186_p1() {
    tmp_35_fu_2186_p1 = p_new1_reg_329.read().range(256-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_360_fu_2318_p2() {
    tmp_360_fu_2318_p2 = (!tmp_356_fu_2292_p1.read().is_01() || !tmp_355_fu_2288_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_356_fu_2292_p1.read()) - sc_biguint<9>(tmp_355_fu_2288_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_361_fu_2324_p3() {
    tmp_361_fu_2324_p3 = (!tmp_354_fu_2282_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_354_fu_2282_p2.read()[0].to_bool())? tmp_358_fu_2306_p2.read(): tmp_360_fu_2318_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_362_fu_2332_p3() {
    tmp_362_fu_2332_p3 = (!tmp_354_fu_2282_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_354_fu_2282_p2.read()[0].to_bool())? tmp_357_fu_2296_p4.read(): tmp_353_fu_2265_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_363_fu_2340_p3() {
    tmp_363_fu_2340_p3 = (!tmp_354_fu_2282_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_354_fu_2282_p2.read()[0].to_bool())? tmp_359_fu_2312_p2.read(): tmp_355_fu_2288_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_364_fu_2348_p2() {
    tmp_364_fu_2348_p2 = (!ap_const_lv9_FF.is_01() || !tmp_361_fu_2324_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_361_fu_2324_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_366_fu_2451_p1() {
    tmp_366_fu_2451_p1 = esl_zext<256,9>(tmp_364_reg_5549.read());
}

void a0_aes_expandEncKey::thread_tmp_368_fu_2454_p2() {
    tmp_368_fu_2454_p2 = (!tmp_366_fu_2451_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_366_fu_2451_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_369_fu_2460_p2() {
    tmp_369_fu_2460_p2 = (tmp_367_reg_5593.read() & tmp_368_fu_2454_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_36_fu_1268_p2() {
    tmp_36_fu_1268_p2 = (tmp_124_fu_1264_p1.read() ^ tmp_96_fu_1245_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_370_fu_2465_p1() {
    tmp_370_fu_2465_p1 = tmp_369_fu_2460_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_372_fu_2369_p1() {
    tmp_372_fu_2369_p1 = esl_zext<9,8>(tmp_155_fu_2354_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_373_fu_2373_p1() {
    tmp_373_fu_2373_p1 = esl_zext<9,8>(tmp_156_fu_2362_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_374_fu_2377_p4() {
    tmp_374_fu_2377_p4 = gep_reg_350.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_375_fu_2387_p2() {
    tmp_375_fu_2387_p2 = (!tmp_372_fu_2369_p1.read().is_01() || !tmp_373_fu_2373_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_372_fu_2369_p1.read()) - sc_biguint<9>(tmp_373_fu_2373_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_376_fu_2393_p2() {
    tmp_376_fu_2393_p2 = (tmp_372_fu_2369_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_377_fu_2399_p2() {
    tmp_377_fu_2399_p2 = (!tmp_373_fu_2373_p1.read().is_01() || !tmp_372_fu_2369_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_373_fu_2373_p1.read()) - sc_biguint<9>(tmp_372_fu_2369_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_378_fu_2405_p3() {
    tmp_378_fu_2405_p3 = (!grp_fu_388_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_388_p2.read()[0].to_bool())? tmp_375_fu_2387_p2.read(): tmp_377_fu_2399_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_379_fu_2413_p3() {
    tmp_379_fu_2413_p3 = (!grp_fu_388_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_388_p2.read()[0].to_bool())? tmp_374_fu_2377_p4.read(): tmp_353_fu_2265_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_37_fu_638_p1() {
    tmp_37_fu_638_p1 = i_phi_fu_343_p4.read().range(4-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_380_fu_2421_p3() {
    tmp_380_fu_2421_p3 = (!grp_fu_388_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_388_p2.read()[0].to_bool())? tmp_376_fu_2393_p2.read(): tmp_372_fu_2369_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_381_fu_2429_p2() {
    tmp_381_fu_2429_p2 = (!ap_const_lv9_FF.is_01() || !tmp_378_fu_2405_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_378_fu_2405_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_383_fu_2469_p1() {
    tmp_383_fu_2469_p1 = esl_zext<256,9>(tmp_381_reg_5578.read());
}

void a0_aes_expandEncKey::thread_tmp_385_fu_2472_p2() {
    tmp_385_fu_2472_p2 = (!tmp_383_fu_2469_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_383_fu_2469_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_386_fu_2478_p2() {
    tmp_386_fu_2478_p2 = (tmp_384_reg_5598.read() & tmp_385_fu_2472_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_387_fu_2483_p1() {
    tmp_387_fu_2483_p1 = tmp_386_fu_2478_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_389_fu_2493_p1() {
    tmp_389_fu_2493_p1 = esl_zext<9,8>(tmp_155_reg_5554.read());
}

void a0_aes_expandEncKey::thread_tmp_38_fu_1004_p1() {
    tmp_38_fu_1004_p1 = p_new1_phi_fu_332_p4.read().range(256-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_390_fu_2496_p1() {
    tmp_390_fu_2496_p1 = esl_zext<9,8>(tmp_156_reg_5561.read());
}

void a0_aes_expandEncKey::thread_tmp_391_fu_2499_p1() {
    tmp_391_fu_2499_p1 = esl_zext<256,8>(tmp_57_reg_5603.read());
}

void a0_aes_expandEncKey::thread_tmp_392_fu_2502_p2() {
    tmp_392_fu_2502_p2 = (tmp_389_fu_2493_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_393_fu_2508_p3() {
    tmp_393_fu_2508_p3 = (!tmp_388_reg_5608.read()[0].is_01())? sc_lv<9>(): ((tmp_388_reg_5608.read()[0].to_bool())? tmp_389_fu_2493_p1.read(): tmp_390_fu_2496_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_394_fu_2515_p3() {
    tmp_394_fu_2515_p3 = (!tmp_388_reg_5608.read()[0].is_01())? sc_lv<9>(): ((tmp_388_reg_5608.read()[0].to_bool())? tmp_390_fu_2496_p1.read(): tmp_389_fu_2493_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_395_fu_2522_p3() {
    tmp_395_fu_2522_p3 = (!tmp_388_reg_5608.read()[0].is_01())? sc_lv<9>(): ((tmp_388_reg_5608.read()[0].to_bool())? tmp_392_fu_2502_p2.read(): tmp_389_fu_2493_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_396_fu_2529_p2() {
    tmp_396_fu_2529_p2 = (tmp_393_fu_2508_p3.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_397_fu_2535_p1() {
    tmp_397_fu_2535_p1 = esl_zext<256,9>(tmp_395_fu_2522_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_398_fu_2539_p1() {
    tmp_398_fu_2539_p1 = esl_zext<256,9>(tmp_394_fu_2515_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_399_fu_2543_p1() {
    tmp_399_fu_2543_p1 = esl_zext<256,9>(tmp_396_fu_2529_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_39_fu_1545_p2() {
    tmp_39_fu_1545_p2 = (tmp_219_fu_1541_p1.read() ^ tmp_199_fu_1522_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_400_fu_2547_p2() {
    tmp_400_fu_2547_p2 = (!tmp_397_fu_2535_p1.read().is_01())? sc_lv<256>(): tmp_391_fu_2499_p1.read() << (unsigned short)tmp_397_fu_2535_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_401_fu_2576_p4() {
    tmp_401_fu_2576_p4 = tmp_400_reg_5616.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_402_fu_2585_p3() {
    tmp_402_fu_2585_p3 = (!tmp_388_reg_5608.read()[0].is_01())? sc_lv<256>(): ((tmp_388_reg_5608.read()[0].to_bool())? tmp_401_fu_2576_p4.read(): tmp_400_reg_5616.read());
}

void a0_aes_expandEncKey::thread_tmp_403_fu_2553_p2() {
    tmp_403_fu_2553_p2 = (!tmp_398_fu_2539_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_398_fu_2539_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_404_fu_2559_p2() {
    tmp_404_fu_2559_p2 = (!tmp_399_fu_2543_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_399_fu_2543_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_405_fu_2591_p2() {
    tmp_405_fu_2591_p2 = (p_demorgan4_reg_5622.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_406_fu_2596_p2() {
    tmp_406_fu_2596_p2 = (tmp_353_reg_5534.read() & tmp_405_fu_2591_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_407_fu_2601_p2() {
    tmp_407_fu_2601_p2 = (tmp_402_fu_2585_p3.read() & p_demorgan4_reg_5622.read());
}

void a0_aes_expandEncKey::thread_tmp_408_fu_2606_p2() {
    tmp_408_fu_2606_p2 = (tmp_406_fu_2596_p2.read() | tmp_407_fu_2601_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_409_fu_2625_p2() {
    tmp_409_fu_2625_p2 = (!tmp_160_fu_2612_p3.read().is_01() || !tmp_161_fu_2619_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_160_fu_2612_p3.read()) > sc_biguint<8>(tmp_161_fu_2619_p2.read()));
}

void a0_aes_expandEncKey::thread_tmp_40_fu_727_p2() {
    tmp_40_fu_727_p2 = (!tmp_88_fu_714_p3.read().is_01() || !tmp_89_fu_721_p2.read().is_01())? sc_lv<1>(): (sc_biguint<7>(tmp_88_fu_714_p3.read()) > sc_biguint<7>(tmp_89_fu_721_p2.read()));
}

void a0_aes_expandEncKey::thread_tmp_410_fu_2631_p1() {
    tmp_410_fu_2631_p1 = esl_zext<9,8>(tmp_160_fu_2612_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_411_fu_2635_p1() {
    tmp_411_fu_2635_p1 = esl_zext<9,8>(tmp_161_fu_2619_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_412_fu_2639_p4() {
    tmp_412_fu_2639_p4 = tmp_408_fu_2606_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_413_fu_2649_p2() {
    tmp_413_fu_2649_p2 = (!tmp_410_fu_2631_p1.read().is_01() || !tmp_411_fu_2635_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_410_fu_2631_p1.read()) - sc_biguint<9>(tmp_411_fu_2635_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_414_fu_2655_p2() {
    tmp_414_fu_2655_p2 = (tmp_410_fu_2631_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_415_fu_2661_p2() {
    tmp_415_fu_2661_p2 = (!tmp_411_fu_2635_p1.read().is_01() || !tmp_410_fu_2631_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_411_fu_2635_p1.read()) - sc_biguint<9>(tmp_410_fu_2631_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_416_fu_2667_p3() {
    tmp_416_fu_2667_p3 = (!tmp_409_fu_2625_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_409_fu_2625_p2.read()[0].to_bool())? tmp_413_fu_2649_p2.read(): tmp_415_fu_2661_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_417_fu_2675_p3() {
    tmp_417_fu_2675_p3 = (!tmp_409_fu_2625_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_409_fu_2625_p2.read()[0].to_bool())? tmp_412_fu_2639_p4.read(): tmp_408_fu_2606_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_418_fu_2683_p3() {
    tmp_418_fu_2683_p3 = (!tmp_409_fu_2625_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_409_fu_2625_p2.read()[0].to_bool())? tmp_414_fu_2655_p2.read(): tmp_410_fu_2631_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_419_fu_2691_p2() {
    tmp_419_fu_2691_p2 = (!ap_const_lv9_FF.is_01() || !tmp_416_fu_2667_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_416_fu_2667_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_41_fu_733_p1() {
    tmp_41_fu_733_p1 = esl_zext<9,7>(tmp_88_fu_714_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_421_fu_2800_p1() {
    tmp_421_fu_2800_p1 = esl_zext<256,9>(tmp_419_reg_5648.read());
}

void a0_aes_expandEncKey::thread_tmp_423_fu_2803_p2() {
    tmp_423_fu_2803_p2 = (!tmp_421_fu_2800_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_421_fu_2800_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_424_fu_2809_p2() {
    tmp_424_fu_2809_p2 = (tmp_422_reg_5692.read() & tmp_423_fu_2803_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_425_fu_2814_p1() {
    tmp_425_fu_2814_p1 = tmp_424_fu_2809_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_427_fu_2718_p1() {
    tmp_427_fu_2718_p1 = esl_zext<9,8>(tmp_164_fu_2702_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_428_fu_2722_p1() {
    tmp_428_fu_2722_p1 = esl_zext<9,8>(tmp_165_fu_2711_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_429_fu_2726_p4() {
    tmp_429_fu_2726_p4 = tmp_408_fu_2606_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_42_fu_1822_p2() {
    tmp_42_fu_1822_p2 = (tmp_274_fu_1818_p1.read() ^ tmp_257_fu_1799_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_430_fu_2736_p2() {
    tmp_430_fu_2736_p2 = (!tmp_427_fu_2718_p1.read().is_01() || !tmp_428_fu_2722_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_427_fu_2718_p1.read()) - sc_biguint<9>(tmp_428_fu_2722_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_431_fu_2742_p2() {
    tmp_431_fu_2742_p2 = (tmp_427_fu_2718_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_432_fu_2748_p2() {
    tmp_432_fu_2748_p2 = (!tmp_428_fu_2722_p1.read().is_01() || !tmp_427_fu_2718_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_428_fu_2722_p1.read()) - sc_biguint<9>(tmp_427_fu_2718_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_433_fu_2754_p3() {
    tmp_433_fu_2754_p3 = (!grp_fu_392_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_392_p2.read()[0].to_bool())? tmp_430_fu_2736_p2.read(): tmp_432_fu_2748_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_434_fu_2762_p3() {
    tmp_434_fu_2762_p3 = (!grp_fu_392_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_392_p2.read()[0].to_bool())? tmp_429_fu_2726_p4.read(): tmp_408_fu_2606_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_435_fu_2770_p3() {
    tmp_435_fu_2770_p3 = (!grp_fu_392_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_392_p2.read()[0].to_bool())? tmp_431_fu_2742_p2.read(): tmp_427_fu_2718_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_436_fu_2778_p2() {
    tmp_436_fu_2778_p2 = (!ap_const_lv9_FF.is_01() || !tmp_433_fu_2754_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_433_fu_2754_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_438_fu_2818_p1() {
    tmp_438_fu_2818_p1 = esl_zext<256,9>(tmp_436_reg_5677.read());
}

void a0_aes_expandEncKey::thread_tmp_43_fu_737_p1() {
    tmp_43_fu_737_p1 = esl_zext<9,7>(tmp_89_fu_721_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_440_fu_2821_p2() {
    tmp_440_fu_2821_p2 = (!tmp_438_fu_2818_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_438_fu_2818_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_441_fu_2827_p2() {
    tmp_441_fu_2827_p2 = (tmp_439_reg_5697.read() & tmp_440_fu_2821_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_442_fu_2832_p1() {
    tmp_442_fu_2832_p1 = tmp_441_fu_2827_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_444_fu_2842_p1() {
    tmp_444_fu_2842_p1 = esl_zext<9,8>(tmp_164_reg_5653.read());
}

void a0_aes_expandEncKey::thread_tmp_445_fu_2845_p1() {
    tmp_445_fu_2845_p1 = esl_zext<9,8>(tmp_165_reg_5660.read());
}

void a0_aes_expandEncKey::thread_tmp_446_fu_2848_p1() {
    tmp_446_fu_2848_p1 = esl_zext<256,8>(tmp_60_reg_5702.read());
}

void a0_aes_expandEncKey::thread_tmp_447_fu_2851_p2() {
    tmp_447_fu_2851_p2 = (tmp_444_fu_2842_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_448_fu_2857_p3() {
    tmp_448_fu_2857_p3 = (!tmp_443_reg_5707.read()[0].is_01())? sc_lv<9>(): ((tmp_443_reg_5707.read()[0].to_bool())? tmp_444_fu_2842_p1.read(): tmp_445_fu_2845_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_449_fu_2864_p3() {
    tmp_449_fu_2864_p3 = (!tmp_443_reg_5707.read()[0].is_01())? sc_lv<9>(): ((tmp_443_reg_5707.read()[0].to_bool())? tmp_445_fu_2845_p1.read(): tmp_444_fu_2842_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_44_fu_1008_p4() {
    tmp_44_fu_1008_p4 = p_new1_phi_fu_332_p4.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_450_fu_2871_p3() {
    tmp_450_fu_2871_p3 = (!tmp_443_reg_5707.read()[0].is_01())? sc_lv<9>(): ((tmp_443_reg_5707.read()[0].to_bool())? tmp_447_fu_2851_p2.read(): tmp_444_fu_2842_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_451_fu_2878_p2() {
    tmp_451_fu_2878_p2 = (tmp_448_fu_2857_p3.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_452_fu_2884_p1() {
    tmp_452_fu_2884_p1 = esl_zext<256,9>(tmp_450_fu_2871_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_453_fu_2888_p1() {
    tmp_453_fu_2888_p1 = esl_zext<256,9>(tmp_449_fu_2864_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_454_fu_2892_p1() {
    tmp_454_fu_2892_p1 = esl_zext<256,9>(tmp_451_fu_2878_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_455_fu_2896_p2() {
    tmp_455_fu_2896_p2 = (!tmp_452_fu_2884_p1.read().is_01())? sc_lv<256>(): tmp_446_fu_2848_p1.read() << (unsigned short)tmp_452_fu_2884_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_456_fu_2925_p4() {
    tmp_456_fu_2925_p4 = tmp_455_reg_5715.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_457_fu_2934_p3() {
    tmp_457_fu_2934_p3 = (!tmp_443_reg_5707.read()[0].is_01())? sc_lv<256>(): ((tmp_443_reg_5707.read()[0].to_bool())? tmp_456_fu_2925_p4.read(): tmp_455_reg_5715.read());
}

void a0_aes_expandEncKey::thread_tmp_458_fu_2902_p2() {
    tmp_458_fu_2902_p2 = (!tmp_453_fu_2888_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_453_fu_2888_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_459_fu_2908_p2() {
    tmp_459_fu_2908_p2 = (!tmp_454_fu_2892_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_454_fu_2892_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_45_fu_1981_p2() {
    tmp_45_fu_1981_p2 = (tmp_329_fu_1977_p1.read() ^ tmp_312_fu_1958_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_460_fu_2940_p2() {
    tmp_460_fu_2940_p2 = (p_demorgan5_reg_5721.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_461_fu_2945_p2() {
    tmp_461_fu_2945_p2 = (tmp_408_reg_5633.read() & tmp_460_fu_2940_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_462_fu_2950_p2() {
    tmp_462_fu_2950_p2 = (tmp_457_fu_2934_p3.read() & p_demorgan5_reg_5721.read());
}

void a0_aes_expandEncKey::thread_tmp_463_fu_2955_p2() {
    tmp_463_fu_2955_p2 = (tmp_461_fu_2945_p2.read() | tmp_462_fu_2950_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_464_fu_2974_p2() {
    tmp_464_fu_2974_p2 = (!tmp_169_fu_2961_p3.read().is_01() || !tmp_170_fu_2968_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_169_fu_2961_p3.read()) > sc_biguint<8>(tmp_170_fu_2968_p2.read()));
}

void a0_aes_expandEncKey::thread_tmp_465_fu_2980_p1() {
    tmp_465_fu_2980_p1 = esl_zext<9,8>(tmp_169_fu_2961_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_466_fu_2984_p1() {
    tmp_466_fu_2984_p1 = esl_zext<9,8>(tmp_170_fu_2968_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_467_fu_2988_p4() {
    tmp_467_fu_2988_p4 = tmp_463_fu_2955_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_468_fu_2998_p2() {
    tmp_468_fu_2998_p2 = (!tmp_465_fu_2980_p1.read().is_01() || !tmp_466_fu_2984_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_465_fu_2980_p1.read()) - sc_biguint<9>(tmp_466_fu_2984_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_469_fu_3004_p2() {
    tmp_469_fu_3004_p2 = (tmp_465_fu_2980_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_46_fu_2072_p1() {
    tmp_46_fu_2072_p1 = esl_zext<32,8>(tmp_74_fu_2062_p4.read());
}

void a0_aes_expandEncKey::thread_tmp_470_fu_3010_p2() {
    tmp_470_fu_3010_p2 = (!tmp_466_fu_2984_p1.read().is_01() || !tmp_465_fu_2980_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_466_fu_2984_p1.read()) - sc_biguint<9>(tmp_465_fu_2980_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_471_fu_3016_p3() {
    tmp_471_fu_3016_p3 = (!tmp_464_fu_2974_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_464_fu_2974_p2.read()[0].to_bool())? tmp_468_fu_2998_p2.read(): tmp_470_fu_3010_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_472_fu_3024_p3() {
    tmp_472_fu_3024_p3 = (!tmp_464_fu_2974_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_464_fu_2974_p2.read()[0].to_bool())? tmp_467_fu_2988_p4.read(): tmp_463_fu_2955_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_473_fu_3032_p3() {
    tmp_473_fu_3032_p3 = (!tmp_464_fu_2974_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_464_fu_2974_p2.read()[0].to_bool())? tmp_469_fu_3004_p2.read(): tmp_465_fu_2980_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_474_fu_3040_p2() {
    tmp_474_fu_3040_p2 = (!ap_const_lv9_FF.is_01() || !tmp_471_fu_3016_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_471_fu_3016_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_476_fu_3149_p1() {
    tmp_476_fu_3149_p1 = esl_zext<256,9>(tmp_474_reg_5747.read());
}

void a0_aes_expandEncKey::thread_tmp_478_fu_3152_p2() {
    tmp_478_fu_3152_p2 = (!tmp_476_fu_3149_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_476_fu_3149_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_479_fu_3158_p2() {
    tmp_479_fu_3158_p2 = (tmp_477_reg_5791.read() & tmp_478_fu_3152_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_47_fu_2132_p2() {
    tmp_47_fu_2132_p2 = (sbox_q0.read() ^ tmp_75_fu_2122_p4.read());
}

void a0_aes_expandEncKey::thread_tmp_480_fu_3163_p1() {
    tmp_480_fu_3163_p1 = tmp_479_fu_3158_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_482_fu_3067_p1() {
    tmp_482_fu_3067_p1 = esl_zext<9,8>(tmp_173_fu_3051_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_483_fu_3071_p1() {
    tmp_483_fu_3071_p1 = esl_zext<9,8>(tmp_174_fu_3060_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_484_fu_3075_p4() {
    tmp_484_fu_3075_p4 = tmp_463_fu_2955_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_485_fu_3085_p2() {
    tmp_485_fu_3085_p2 = (!tmp_482_fu_3067_p1.read().is_01() || !tmp_483_fu_3071_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_482_fu_3067_p1.read()) - sc_biguint<9>(tmp_483_fu_3071_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_486_fu_3091_p2() {
    tmp_486_fu_3091_p2 = (tmp_482_fu_3067_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_487_fu_3097_p2() {
    tmp_487_fu_3097_p2 = (!tmp_483_fu_3071_p1.read().is_01() || !tmp_482_fu_3067_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_483_fu_3071_p1.read()) - sc_biguint<9>(tmp_482_fu_3067_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_488_fu_3103_p3() {
    tmp_488_fu_3103_p3 = (!grp_fu_396_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_396_p2.read()[0].to_bool())? tmp_485_fu_3085_p2.read(): tmp_487_fu_3097_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_489_fu_3111_p3() {
    tmp_489_fu_3111_p3 = (!grp_fu_396_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_396_p2.read()[0].to_bool())? tmp_484_fu_3075_p4.read(): tmp_463_fu_2955_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_48_fu_2087_p1() {
    tmp_48_fu_2087_p1 = esl_zext<32,8>(tmp_77_fu_2077_p4.read());
}

void a0_aes_expandEncKey::thread_tmp_490_fu_3119_p3() {
    tmp_490_fu_3119_p3 = (!grp_fu_396_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_396_p2.read()[0].to_bool())? tmp_486_fu_3091_p2.read(): tmp_482_fu_3067_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_491_fu_3127_p2() {
    tmp_491_fu_3127_p2 = (!ap_const_lv9_FF.is_01() || !tmp_488_fu_3103_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_488_fu_3103_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_493_fu_3167_p1() {
    tmp_493_fu_3167_p1 = esl_zext<256,9>(tmp_491_reg_5776.read());
}

void a0_aes_expandEncKey::thread_tmp_495_fu_3170_p2() {
    tmp_495_fu_3170_p2 = (!tmp_493_fu_3167_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_493_fu_3167_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_496_fu_3176_p2() {
    tmp_496_fu_3176_p2 = (tmp_494_reg_5796.read() & tmp_495_fu_3170_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_497_fu_3181_p1() {
    tmp_497_fu_3181_p1 = tmp_496_fu_3176_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_499_fu_3191_p1() {
    tmp_499_fu_3191_p1 = esl_zext<9,8>(tmp_173_reg_5752.read());
}

void a0_aes_expandEncKey::thread_tmp_49_fu_2148_p2() {
    tmp_49_fu_2148_p2 = (sbox_q1.read() ^ tmp_78_fu_2138_p4.read());
}

void a0_aes_expandEncKey::thread_tmp_500_fu_3194_p1() {
    tmp_500_fu_3194_p1 = esl_zext<9,8>(tmp_174_reg_5759.read());
}

void a0_aes_expandEncKey::thread_tmp_501_fu_3197_p1() {
    tmp_501_fu_3197_p1 = esl_zext<256,8>(tmp_63_reg_5801.read());
}

void a0_aes_expandEncKey::thread_tmp_502_fu_3200_p2() {
    tmp_502_fu_3200_p2 = (tmp_499_fu_3191_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_503_fu_3206_p3() {
    tmp_503_fu_3206_p3 = (!tmp_498_reg_5806.read()[0].is_01())? sc_lv<9>(): ((tmp_498_reg_5806.read()[0].to_bool())? tmp_499_fu_3191_p1.read(): tmp_500_fu_3194_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_504_fu_3213_p3() {
    tmp_504_fu_3213_p3 = (!tmp_498_reg_5806.read()[0].is_01())? sc_lv<9>(): ((tmp_498_reg_5806.read()[0].to_bool())? tmp_500_fu_3194_p1.read(): tmp_499_fu_3191_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_505_fu_3220_p3() {
    tmp_505_fu_3220_p3 = (!tmp_498_reg_5806.read()[0].is_01())? sc_lv<9>(): ((tmp_498_reg_5806.read()[0].to_bool())? tmp_502_fu_3200_p2.read(): tmp_499_fu_3191_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_506_fu_3227_p2() {
    tmp_506_fu_3227_p2 = (tmp_503_fu_3206_p3.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_507_fu_3233_p1() {
    tmp_507_fu_3233_p1 = esl_zext<256,9>(tmp_505_fu_3220_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_508_fu_3237_p1() {
    tmp_508_fu_3237_p1 = esl_zext<256,9>(tmp_504_fu_3213_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_509_fu_3241_p1() {
    tmp_509_fu_3241_p1 = esl_zext<256,9>(tmp_506_fu_3227_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_50_fu_2102_p1() {
    tmp_50_fu_2102_p1 = esl_zext<32,8>(tmp_80_fu_2092_p4.read());
}

void a0_aes_expandEncKey::thread_tmp_510_fu_3245_p2() {
    tmp_510_fu_3245_p2 = (!tmp_507_fu_3233_p1.read().is_01())? sc_lv<256>(): tmp_501_fu_3197_p1.read() << (unsigned short)tmp_507_fu_3233_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_511_fu_3274_p4() {
    tmp_511_fu_3274_p4 = tmp_510_reg_5814.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_512_fu_3283_p3() {
    tmp_512_fu_3283_p3 = (!tmp_498_reg_5806.read()[0].is_01())? sc_lv<256>(): ((tmp_498_reg_5806.read()[0].to_bool())? tmp_511_fu_3274_p4.read(): tmp_510_reg_5814.read());
}

void a0_aes_expandEncKey::thread_tmp_513_fu_3251_p2() {
    tmp_513_fu_3251_p2 = (!tmp_508_fu_3237_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_508_fu_3237_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_514_fu_3257_p2() {
    tmp_514_fu_3257_p2 = (!tmp_509_fu_3241_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_509_fu_3241_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_515_fu_3289_p2() {
    tmp_515_fu_3289_p2 = (p_demorgan6_reg_5820.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_516_fu_3294_p2() {
    tmp_516_fu_3294_p2 = (tmp_463_reg_5732.read() & tmp_515_fu_3289_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_517_fu_3299_p2() {
    tmp_517_fu_3299_p2 = (tmp_512_fu_3283_p3.read() & p_demorgan6_reg_5820.read());
}

void a0_aes_expandEncKey::thread_tmp_518_fu_3304_p2() {
    tmp_518_fu_3304_p2 = (tmp_516_fu_3294_p2.read() | tmp_517_fu_3299_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_519_fu_3323_p2() {
    tmp_519_fu_3323_p2 = (!tmp_178_fu_3310_p3.read().is_01() || !tmp_179_fu_3317_p2.read().is_01())? sc_lv<1>(): (sc_biguint<8>(tmp_178_fu_3310_p3.read()) > sc_biguint<8>(tmp_179_fu_3317_p2.read()));
}

void a0_aes_expandEncKey::thread_tmp_51_fu_2164_p2() {
    tmp_51_fu_2164_p2 = (sbox_q2.read() ^ tmp_81_fu_2154_p4.read());
}

void a0_aes_expandEncKey::thread_tmp_520_fu_3329_p1() {
    tmp_520_fu_3329_p1 = esl_zext<9,8>(tmp_178_fu_3310_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_521_fu_3333_p1() {
    tmp_521_fu_3333_p1 = esl_zext<9,8>(tmp_179_fu_3317_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_522_fu_3337_p4() {
    tmp_522_fu_3337_p4 = tmp_518_fu_3304_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_523_fu_3347_p2() {
    tmp_523_fu_3347_p2 = (!tmp_520_fu_3329_p1.read().is_01() || !tmp_521_fu_3333_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_520_fu_3329_p1.read()) - sc_biguint<9>(tmp_521_fu_3333_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_524_fu_3353_p2() {
    tmp_524_fu_3353_p2 = (tmp_520_fu_3329_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_525_fu_3359_p2() {
    tmp_525_fu_3359_p2 = (!tmp_521_fu_3333_p1.read().is_01() || !tmp_520_fu_3329_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_521_fu_3333_p1.read()) - sc_biguint<9>(tmp_520_fu_3329_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_526_fu_3365_p3() {
    tmp_526_fu_3365_p3 = (!tmp_519_fu_3323_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_519_fu_3323_p2.read()[0].to_bool())? tmp_523_fu_3347_p2.read(): tmp_525_fu_3359_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_527_fu_3373_p3() {
    tmp_527_fu_3373_p3 = (!tmp_519_fu_3323_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_519_fu_3323_p2.read()[0].to_bool())? tmp_522_fu_3337_p4.read(): tmp_518_fu_3304_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_528_fu_3381_p3() {
    tmp_528_fu_3381_p3 = (!tmp_519_fu_3323_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_519_fu_3323_p2.read()[0].to_bool())? tmp_524_fu_3353_p2.read(): tmp_520_fu_3329_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_529_fu_3389_p2() {
    tmp_529_fu_3389_p2 = (!ap_const_lv9_FF.is_01() || !tmp_526_fu_3365_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_526_fu_3365_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_52_fu_2117_p1() {
    tmp_52_fu_2117_p1 = esl_zext<32,8>(tmp_83_fu_2107_p4.read());
}

void a0_aes_expandEncKey::thread_tmp_531_fu_3498_p1() {
    tmp_531_fu_3498_p1 = esl_zext<256,9>(tmp_529_reg_5846.read());
}

void a0_aes_expandEncKey::thread_tmp_533_fu_3501_p2() {
    tmp_533_fu_3501_p2 = (!tmp_531_fu_3498_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_531_fu_3498_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_534_fu_3507_p2() {
    tmp_534_fu_3507_p2 = (tmp_532_reg_5890.read() & tmp_533_fu_3501_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_535_fu_3512_p1() {
    tmp_535_fu_3512_p1 = tmp_534_fu_3507_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_537_fu_3416_p1() {
    tmp_537_fu_3416_p1 = esl_zext<9,8>(tmp_182_fu_3400_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_538_fu_3420_p1() {
    tmp_538_fu_3420_p1 = esl_zext<9,8>(tmp_183_fu_3409_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_539_fu_3424_p4() {
    tmp_539_fu_3424_p4 = tmp_518_fu_3304_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_53_fu_2180_p2() {
    tmp_53_fu_2180_p2 = (sbox_q3.read() ^ tmp_84_fu_2170_p4.read());
}

void a0_aes_expandEncKey::thread_tmp_540_fu_3434_p2() {
    tmp_540_fu_3434_p2 = (!tmp_537_fu_3416_p1.read().is_01() || !tmp_538_fu_3420_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_537_fu_3416_p1.read()) - sc_biguint<9>(tmp_538_fu_3420_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_541_fu_3440_p2() {
    tmp_541_fu_3440_p2 = (tmp_537_fu_3416_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_542_fu_3446_p2() {
    tmp_542_fu_3446_p2 = (!tmp_538_fu_3420_p1.read().is_01() || !tmp_537_fu_3416_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_538_fu_3420_p1.read()) - sc_biguint<9>(tmp_537_fu_3416_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_543_fu_3452_p3() {
    tmp_543_fu_3452_p3 = (!grp_fu_400_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_400_p2.read()[0].to_bool())? tmp_540_fu_3434_p2.read(): tmp_542_fu_3446_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_544_fu_3460_p3() {
    tmp_544_fu_3460_p3 = (!grp_fu_400_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_400_p2.read()[0].to_bool())? tmp_539_fu_3424_p4.read(): tmp_518_fu_3304_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_545_fu_3468_p3() {
    tmp_545_fu_3468_p3 = (!grp_fu_400_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_400_p2.read()[0].to_bool())? tmp_541_fu_3440_p2.read(): tmp_537_fu_3416_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_546_fu_3476_p2() {
    tmp_546_fu_3476_p2 = (!ap_const_lv9_FF.is_01() || !tmp_543_fu_3452_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_543_fu_3452_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_548_fu_3516_p1() {
    tmp_548_fu_3516_p1 = esl_zext<256,9>(tmp_546_reg_5875.read());
}

void a0_aes_expandEncKey::thread_tmp_54_fu_741_p2() {
    tmp_54_fu_741_p2 = (!tmp_41_fu_733_p1.read().is_01() || !tmp_43_fu_737_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_41_fu_733_p1.read()) - sc_biguint<9>(tmp_43_fu_737_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_550_fu_3519_p2() {
    tmp_550_fu_3519_p2 = (!tmp_548_fu_3516_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_548_fu_3516_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_551_fu_3525_p2() {
    tmp_551_fu_3525_p2 = (tmp_549_reg_5895.read() & tmp_550_fu_3519_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_552_fu_3530_p1() {
    tmp_552_fu_3530_p1 = tmp_551_fu_3525_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_554_fu_3540_p1() {
    tmp_554_fu_3540_p1 = esl_zext<9,8>(tmp_182_reg_5851.read());
}

void a0_aes_expandEncKey::thread_tmp_555_fu_3543_p1() {
    tmp_555_fu_3543_p1 = esl_zext<9,8>(tmp_183_reg_5858.read());
}

void a0_aes_expandEncKey::thread_tmp_556_fu_3546_p1() {
    tmp_556_fu_3546_p1 = esl_zext<256,8>(tmp_66_reg_5900.read());
}

void a0_aes_expandEncKey::thread_tmp_557_fu_3549_p2() {
    tmp_557_fu_3549_p2 = (tmp_554_fu_3540_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_558_fu_3555_p3() {
    tmp_558_fu_3555_p3 = (!tmp_553_reg_5905.read()[0].is_01())? sc_lv<9>(): ((tmp_553_reg_5905.read()[0].to_bool())? tmp_554_fu_3540_p1.read(): tmp_555_fu_3543_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_559_fu_3562_p3() {
    tmp_559_fu_3562_p3 = (!tmp_553_reg_5905.read()[0].is_01())? sc_lv<9>(): ((tmp_553_reg_5905.read()[0].to_bool())? tmp_555_fu_3543_p1.read(): tmp_554_fu_3540_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_55_fu_747_p2() {
    tmp_55_fu_747_p2 = (tmp_41_fu_733_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_560_fu_3569_p3() {
    tmp_560_fu_3569_p3 = (!tmp_553_reg_5905.read()[0].is_01())? sc_lv<9>(): ((tmp_553_reg_5905.read()[0].to_bool())? tmp_557_fu_3549_p2.read(): tmp_554_fu_3540_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_561_fu_3576_p2() {
    tmp_561_fu_3576_p2 = (tmp_558_fu_3555_p3.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_562_fu_3582_p1() {
    tmp_562_fu_3582_p1 = esl_zext<256,9>(tmp_560_fu_3569_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_563_fu_3586_p1() {
    tmp_563_fu_3586_p1 = esl_zext<256,9>(tmp_559_fu_3562_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_564_fu_3590_p1() {
    tmp_564_fu_3590_p1 = esl_zext<256,9>(tmp_561_fu_3576_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_565_fu_3594_p2() {
    tmp_565_fu_3594_p2 = (!tmp_562_fu_3582_p1.read().is_01())? sc_lv<256>(): tmp_556_fu_3546_p1.read() << (unsigned short)tmp_562_fu_3582_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_566_fu_3618_p4() {
    tmp_566_fu_3618_p4 = tmp_565_reg_5913.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_567_fu_3627_p3() {
    tmp_567_fu_3627_p3 = (!tmp_553_reg_5905.read()[0].is_01())? sc_lv<256>(): ((tmp_553_reg_5905.read()[0].to_bool())? tmp_566_fu_3618_p4.read(): tmp_565_reg_5913.read());
}

void a0_aes_expandEncKey::thread_tmp_568_fu_3600_p2() {
    tmp_568_fu_3600_p2 = (!tmp_563_fu_3586_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_563_fu_3586_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_569_fu_3606_p2() {
    tmp_569_fu_3606_p2 = (!tmp_564_fu_3590_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_564_fu_3590_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_56_fu_753_p2() {
    tmp_56_fu_753_p2 = (!tmp_43_fu_737_p1.read().is_01() || !tmp_41_fu_733_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_43_fu_737_p1.read()) - sc_biguint<9>(tmp_41_fu_733_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_570_fu_3633_p2() {
    tmp_570_fu_3633_p2 = (p_demorgan7_reg_5919.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_571_fu_3638_p2() {
    tmp_571_fu_3638_p2 = (tmp_518_reg_5831.read() & tmp_570_fu_3633_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_572_fu_3643_p2() {
    tmp_572_fu_3643_p2 = (tmp_567_fu_3627_p3.read() & p_demorgan7_reg_5919.read());
}

void a0_aes_expandEncKey::thread_tmp_573_fu_3648_p2() {
    tmp_573_fu_3648_p2 = (tmp_571_fu_3638_p2.read() | tmp_572_fu_3643_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_574_fu_3672_p1() {
    tmp_574_fu_3672_p1 = i_9_fu_3666_p2.read().range(5-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_577_fu_3684_p1() {
    tmp_577_fu_3684_p1 = esl_zext<9,8>(tmp_155_reg_5554.read());
}

void a0_aes_expandEncKey::thread_tmp_578_fu_3687_p1() {
    tmp_578_fu_3687_p1 = esl_zext<9,8>(tmp_156_reg_5561.read());
}

void a0_aes_expandEncKey::thread_tmp_579_fu_3690_p4() {
    tmp_579_fu_3690_p4 = tmp_573_reg_5925.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_57_1_fu_3865_p2() {
    tmp_57_1_fu_3865_p2 = (tmp_607_fu_3861_p1.read() ^ tmp_592_fu_3843_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_57_fu_2487_p2() {
    tmp_57_fu_2487_p2 = (tmp_387_fu_2483_p1.read() ^ tmp_370_fu_2465_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_580_fu_3699_p2() {
    tmp_580_fu_3699_p2 = (!tmp_577_fu_3684_p1.read().is_01() || !tmp_578_fu_3687_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_577_fu_3684_p1.read()) - sc_biguint<9>(tmp_578_fu_3687_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_581_fu_3705_p2() {
    tmp_581_fu_3705_p2 = (tmp_577_fu_3684_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_582_fu_3711_p2() {
    tmp_582_fu_3711_p2 = (!tmp_578_fu_3687_p1.read().is_01() || !tmp_577_fu_3684_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_578_fu_3687_p1.read()) - sc_biguint<9>(tmp_577_fu_3684_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_583_fu_3717_p3() {
    tmp_583_fu_3717_p3 = (!grp_fu_388_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_388_p2.read()[0].to_bool())? tmp_580_fu_3699_p2.read(): tmp_582_fu_3711_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_584_fu_3725_p3() {
    tmp_584_fu_3725_p3 = (!grp_fu_388_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_388_p2.read()[0].to_bool())? tmp_579_fu_3690_p4.read(): tmp_573_reg_5925.read());
}

void a0_aes_expandEncKey::thread_tmp_585_fu_3732_p3() {
    tmp_585_fu_3732_p3 = (!grp_fu_388_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_388_p2.read()[0].to_bool())? tmp_581_fu_3705_p2.read(): tmp_577_fu_3684_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_586_fu_3740_p2() {
    tmp_586_fu_3740_p2 = (!ap_const_lv9_FF.is_01() || !tmp_583_fu_3717_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_583_fu_3717_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_588_fu_3829_p1() {
    tmp_588_fu_3829_p1 = esl_zext<256,9>(tmp_586_reg_5961.read());
}

void a0_aes_expandEncKey::thread_tmp_58_fu_759_p3() {
    tmp_58_fu_759_p3 = (!tmp_40_fu_727_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_40_fu_727_p2.read()[0].to_bool())? tmp_54_fu_741_p2.read(): tmp_56_fu_753_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_590_fu_3832_p2() {
    tmp_590_fu_3832_p2 = (!tmp_588_fu_3829_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_588_fu_3829_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_591_fu_3838_p2() {
    tmp_591_fu_3838_p2 = (tmp_589_reg_6016.read() & tmp_590_fu_3832_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_592_fu_3843_p1() {
    tmp_592_fu_3843_p1 = tmp_591_fu_3838_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_594_fu_3762_p4() {
    tmp_594_fu_3762_p4 = tmp_573_reg_5925.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_595_fu_3808_p2() {
    tmp_595_fu_3808_p2 = (!tmp_187_reg_5966.read().is_01() || !tmp_188_reg_5977.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_187_reg_5966.read()) - sc_biguint<9>(tmp_188_reg_5977.read()));
}

void a0_aes_expandEncKey::thread_tmp_597_fu_3812_p2() {
    tmp_597_fu_3812_p2 = (!tmp_188_reg_5977.read().is_01() || !tmp_187_reg_5966.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_188_reg_5977.read()) - sc_biguint<9>(tmp_187_reg_5966.read()));
}

void a0_aes_expandEncKey::thread_tmp_598_fu_3816_p3() {
    tmp_598_fu_3816_p3 = (!tmp_593_reg_5986.read()[0].is_01())? sc_lv<9>(): ((tmp_593_reg_5986.read()[0].to_bool())? tmp_595_fu_3808_p2.read(): tmp_597_fu_3812_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_599_fu_3771_p3() {
    tmp_599_fu_3771_p3 = (!grp_fu_404_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_404_p2.read()[0].to_bool())? tmp_594_fu_3762_p4.read(): tmp_573_reg_5925.read());
}

void a0_aes_expandEncKey::thread_tmp_600_fu_3778_p3() {
    tmp_600_fu_3778_p3 = (!grp_fu_404_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_404_p2.read()[0].to_bool())? grp_fu_408_p2.read(): tmp_187_fu_3746_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_601_fu_3823_p2() {
    tmp_601_fu_3823_p2 = (!ap_const_lv9_FF.is_01() || !tmp_598_fu_3816_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_598_fu_3816_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_603_fu_3847_p1() {
    tmp_603_fu_3847_p1 = esl_zext<256,9>(tmp_601_reg_6021.read());
}

void a0_aes_expandEncKey::thread_tmp_605_fu_3850_p2() {
    tmp_605_fu_3850_p2 = (!tmp_603_fu_3847_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_603_fu_3847_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_606_fu_3856_p2() {
    tmp_606_fu_3856_p2 = (tmp_604_reg_6026.read() & tmp_605_fu_3850_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_607_fu_3861_p1() {
    tmp_607_fu_3861_p1 = tmp_606_fu_3856_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_609_fu_3883_p1() {
    tmp_609_fu_3883_p1 = esl_zext<256,8>(tmp_57_1_reg_6031.read());
}

void a0_aes_expandEncKey::thread_tmp_60_1_fu_4192_p2() {
    tmp_60_1_fu_4192_p2 = (tmp_661_fu_4188_p1.read() ^ tmp_643_fu_4170_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_60_fu_2836_p2() {
    tmp_60_fu_2836_p2 = (tmp_442_fu_2832_p1.read() ^ tmp_425_fu_2814_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_611_fu_3871_p3() {
    tmp_611_fu_3871_p3 = (!grp_fu_404_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_404_p2.read()[0].to_bool())? tmp_187_reg_5966.read(): tmp_188_reg_5977.read());
}

void a0_aes_expandEncKey::thread_tmp_612_fu_3886_p3() {
    tmp_612_fu_3886_p3 = (!tmp_608_reg_6036.read()[0].is_01())? sc_lv<9>(): ((tmp_608_reg_6036.read()[0].to_bool())? tmp_188_reg_5977.read(): tmp_187_reg_5966.read());
}

void a0_aes_expandEncKey::thread_tmp_613_fu_3891_p3() {
    tmp_613_fu_3891_p3 = (!tmp_608_reg_6036.read()[0].is_01())? sc_lv<9>(): ((tmp_608_reg_6036.read()[0].to_bool())? tmp_610_reg_6043.read(): tmp_187_reg_5966.read());
}

void a0_aes_expandEncKey::thread_tmp_614_fu_3877_p2() {
    tmp_614_fu_3877_p2 = (!ap_const_lv9_FF.is_01() || !tmp_611_fu_3871_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_611_fu_3871_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_615_fu_3896_p1() {
    tmp_615_fu_3896_p1 = esl_zext<256,9>(tmp_613_fu_3891_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_616_fu_3900_p1() {
    tmp_616_fu_3900_p1 = esl_zext<256,9>(tmp_612_fu_3886_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_617_fu_3904_p1() {
    tmp_617_fu_3904_p1 = esl_zext<256,9>(tmp_614_reg_6048.read());
}

void a0_aes_expandEncKey::thread_tmp_618_fu_3907_p2() {
    tmp_618_fu_3907_p2 = (!tmp_615_fu_3896_p1.read().is_01())? sc_lv<256>(): tmp_609_fu_3883_p1.read() << (unsigned short)tmp_615_fu_3896_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_619_fu_3931_p4() {
    tmp_619_fu_3931_p4 = tmp_618_reg_6053.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_61_fu_767_p3() {
    tmp_61_fu_767_p3 = (!tmp_40_fu_727_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_40_fu_727_p2.read()[0].to_bool())? tmp_55_fu_747_p2.read(): tmp_41_fu_733_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_620_fu_3940_p3() {
    tmp_620_fu_3940_p3 = (!tmp_608_reg_6036.read()[0].is_01())? sc_lv<256>(): ((tmp_608_reg_6036.read()[0].to_bool())? tmp_619_fu_3931_p4.read(): tmp_618_reg_6053.read());
}

void a0_aes_expandEncKey::thread_tmp_621_fu_3913_p2() {
    tmp_621_fu_3913_p2 = (!tmp_616_fu_3900_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_616_fu_3900_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_622_fu_3919_p2() {
    tmp_622_fu_3919_p2 = (!tmp_617_fu_3904_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_617_fu_3904_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_623_fu_3946_p2() {
    tmp_623_fu_3946_p2 = (p_demorgan8_reg_6059.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_624_fu_3951_p2() {
    tmp_624_fu_3951_p2 = (tmp_573_reg_5925.read() & tmp_623_fu_3946_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_625_fu_3956_p2() {
    tmp_625_fu_3956_p2 = (tmp_620_fu_3940_p3.read() & p_demorgan8_reg_6059.read());
}

void a0_aes_expandEncKey::thread_tmp_626_fu_3961_p2() {
    tmp_626_fu_3961_p2 = (tmp_624_fu_3951_p2.read() | tmp_625_fu_3956_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_628_fu_3967_p1() {
    tmp_628_fu_3967_p1 = esl_zext<9,8>(tmp_164_reg_5653.read());
}

void a0_aes_expandEncKey::thread_tmp_629_fu_3970_p1() {
    tmp_629_fu_3970_p1 = esl_zext<9,8>(tmp_165_reg_5660.read());
}

void a0_aes_expandEncKey::thread_tmp_630_fu_3973_p4() {
    tmp_630_fu_3973_p4 = tmp_626_fu_3961_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_631_fu_3983_p2() {
    tmp_631_fu_3983_p2 = (!tmp_628_fu_3967_p1.read().is_01() || !tmp_629_fu_3970_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_628_fu_3967_p1.read()) - sc_biguint<9>(tmp_629_fu_3970_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_632_fu_3989_p2() {
    tmp_632_fu_3989_p2 = (tmp_628_fu_3967_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_633_fu_3995_p2() {
    tmp_633_fu_3995_p2 = (!tmp_629_fu_3970_p1.read().is_01() || !tmp_628_fu_3967_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_629_fu_3970_p1.read()) - sc_biguint<9>(tmp_628_fu_3967_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_634_fu_4001_p3() {
    tmp_634_fu_4001_p3 = (!grp_fu_392_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_392_p2.read()[0].to_bool())? tmp_631_fu_3983_p2.read(): tmp_633_fu_3995_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_635_fu_4009_p3() {
    tmp_635_fu_4009_p3 = (!grp_fu_392_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_392_p2.read()[0].to_bool())? tmp_630_fu_3973_p4.read(): tmp_626_fu_3961_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_636_fu_4017_p3() {
    tmp_636_fu_4017_p3 = (!grp_fu_392_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_392_p2.read()[0].to_bool())? tmp_632_fu_3989_p2.read(): tmp_628_fu_3967_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_637_fu_4025_p2() {
    tmp_637_fu_4025_p2 = (!ap_const_lv9_FF.is_01() || !tmp_634_fu_4001_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_634_fu_4001_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_639_fu_4156_p1() {
    tmp_639_fu_4156_p1 = esl_zext<256,9>(tmp_637_reg_6080.read());
}

void a0_aes_expandEncKey::thread_tmp_63_1_fu_4528_p2() {
    tmp_63_1_fu_4528_p2 = (tmp_716_fu_4524_p1.read() ^ tmp_698_fu_4506_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_63_fu_3185_p2() {
    tmp_63_fu_3185_p2 = (tmp_497_fu_3181_p1.read() ^ tmp_480_fu_3163_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_641_fu_4159_p2() {
    tmp_641_fu_4159_p2 = (!tmp_639_fu_4156_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_639_fu_4156_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_642_fu_4165_p2() {
    tmp_642_fu_4165_p2 = (tmp_640_reg_6129.read() & tmp_641_fu_4159_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_643_fu_4170_p1() {
    tmp_643_fu_4170_p1 = tmp_642_fu_4165_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_644_fu_4036_p3() {
    tmp_644_fu_4036_p3 = esl_concat<5,3>(tmp_192_fu_4031_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_645_fu_4048_p2() {
    tmp_645_fu_4048_p2 = (tmp_644_fu_4036_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_646_fu_4066_p2() {
    tmp_646_fu_4066_p2 = (!tmp_216_cast_fu_4044_p1.read().is_01() || !tmp_217_cast_fu_4062_p1.read().is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_216_cast_fu_4044_p1.read()) > sc_biguint<10>(tmp_217_cast_fu_4062_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_647_fu_4072_p1() {
    tmp_647_fu_4072_p1 = esl_zext<9,8>(tmp_644_fu_4036_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_648_fu_4076_p4() {
    tmp_648_fu_4076_p4 = tmp_626_fu_3961_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_649_fu_4086_p2() {
    tmp_649_fu_4086_p2 = (!tmp_647_fu_4072_p1.read().is_01() || !tmp_194_fu_4054_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_647_fu_4072_p1.read()) - sc_biguint<9>(tmp_194_fu_4054_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_650_fu_4092_p2() {
    tmp_650_fu_4092_p2 = (tmp_647_fu_4072_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_651_fu_4098_p2() {
    tmp_651_fu_4098_p2 = (!tmp_194_fu_4054_p3.read().is_01() || !tmp_647_fu_4072_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_194_fu_4054_p3.read()) - sc_biguint<9>(tmp_647_fu_4072_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_652_fu_4104_p3() {
    tmp_652_fu_4104_p3 = (!tmp_646_fu_4066_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_646_fu_4066_p2.read()[0].to_bool())? tmp_649_fu_4086_p2.read(): tmp_651_fu_4098_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_653_fu_4112_p3() {
    tmp_653_fu_4112_p3 = (!tmp_646_fu_4066_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_646_fu_4066_p2.read()[0].to_bool())? tmp_648_fu_4076_p4.read(): tmp_626_fu_3961_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_654_fu_4120_p3() {
    tmp_654_fu_4120_p3 = (!tmp_646_fu_4066_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_646_fu_4066_p2.read()[0].to_bool())? tmp_650_fu_4092_p2.read(): tmp_647_fu_4072_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_655_fu_4128_p2() {
    tmp_655_fu_4128_p2 = (!ap_const_lv9_FF.is_01() || !tmp_652_fu_4104_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_652_fu_4104_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_657_fu_4174_p1() {
    tmp_657_fu_4174_p1 = esl_zext<256,9>(tmp_655_reg_6106.read());
}

void a0_aes_expandEncKey::thread_tmp_659_fu_4177_p2() {
    tmp_659_fu_4177_p2 = (!tmp_657_fu_4174_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_657_fu_4174_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_660_fu_4183_p2() {
    tmp_660_fu_4183_p2 = (tmp_658_reg_6134.read() & tmp_659_fu_4177_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_661_fu_4188_p1() {
    tmp_661_fu_4188_p1 = tmp_660_fu_4183_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_662_fu_4134_p2() {
    tmp_662_fu_4134_p2 = (!tmp_216_cast_fu_4044_p1.read().is_01() || !tmp_217_cast_fu_4062_p1.read().is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_216_cast_fu_4044_p1.read()) > sc_biguint<10>(tmp_217_cast_fu_4062_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_663_fu_4198_p1() {
    tmp_663_fu_4198_p1 = esl_zext<9,8>(tmp_644_reg_6085.read());
}

void a0_aes_expandEncKey::thread_tmp_664_fu_4213_p1() {
    tmp_664_fu_4213_p1 = esl_zext<256,8>(tmp_60_1_reg_6139.read());
}

void a0_aes_expandEncKey::thread_tmp_665_fu_4216_p2() {
    tmp_665_fu_4216_p2 = (tmp_663_reg_6144.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_666_fu_4201_p3() {
    tmp_666_fu_4201_p3 = (!tmp_662_reg_6111.read()[0].is_01())? sc_lv<9>(): ((tmp_662_reg_6111.read()[0].to_bool())? tmp_663_fu_4198_p1.read(): tmp_194_reg_6090.read());
}

void a0_aes_expandEncKey::thread_tmp_667_fu_4221_p3() {
    tmp_667_fu_4221_p3 = (!tmp_662_reg_6111.read()[0].is_01())? sc_lv<9>(): ((tmp_662_reg_6111.read()[0].to_bool())? tmp_194_reg_6090.read(): tmp_663_reg_6144.read());
}

void a0_aes_expandEncKey::thread_tmp_668_fu_4226_p3() {
    tmp_668_fu_4226_p3 = (!tmp_662_reg_6111.read()[0].is_01())? sc_lv<9>(): ((tmp_662_reg_6111.read()[0].to_bool())? tmp_665_fu_4216_p2.read(): tmp_663_reg_6144.read());
}

void a0_aes_expandEncKey::thread_tmp_669_fu_4207_p2() {
    tmp_669_fu_4207_p2 = (!ap_const_lv9_FF.is_01() || !tmp_666_fu_4201_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_666_fu_4201_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_66_1_fu_4864_p2() {
    tmp_66_1_fu_4864_p2 = (tmp_771_fu_4860_p1.read() ^ tmp_753_fu_4842_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_66_fu_3534_p2() {
    tmp_66_fu_3534_p2 = (tmp_552_fu_3530_p1.read() ^ tmp_535_fu_3512_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_670_fu_4232_p1() {
    tmp_670_fu_4232_p1 = esl_zext<256,9>(tmp_668_fu_4226_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_671_fu_4236_p1() {
    tmp_671_fu_4236_p1 = esl_zext<256,9>(tmp_667_fu_4221_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_672_fu_4240_p1() {
    tmp_672_fu_4240_p1 = esl_zext<256,9>(tmp_669_reg_6151.read());
}

void a0_aes_expandEncKey::thread_tmp_673_fu_4243_p2() {
    tmp_673_fu_4243_p2 = (!tmp_670_fu_4232_p1.read().is_01())? sc_lv<256>(): tmp_664_fu_4213_p1.read() << (unsigned short)tmp_670_fu_4232_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_674_fu_4267_p4() {
    tmp_674_fu_4267_p4 = tmp_673_reg_6156.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_675_fu_4276_p3() {
    tmp_675_fu_4276_p3 = (!tmp_662_reg_6111.read()[0].is_01())? sc_lv<256>(): ((tmp_662_reg_6111.read()[0].to_bool())? tmp_674_fu_4267_p4.read(): tmp_673_reg_6156.read());
}

void a0_aes_expandEncKey::thread_tmp_676_fu_4249_p2() {
    tmp_676_fu_4249_p2 = (!tmp_671_fu_4236_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_671_fu_4236_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_677_fu_4255_p2() {
    tmp_677_fu_4255_p2 = (!tmp_672_fu_4240_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_672_fu_4240_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_678_fu_4282_p2() {
    tmp_678_fu_4282_p2 = (p_demorgan9_reg_6162.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_679_fu_4287_p2() {
    tmp_679_fu_4287_p2 = (tmp_626_reg_6065.read() & tmp_678_fu_4282_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_67_fu_545_p5() {
    tmp_67_fu_545_p5 = esl_partset<256,256,8,32,32>(tmp_s_fu_529_p5.read(), tmp_24_fu_540_p2.read(), ap_const_lv32_8, ap_const_lv32_F);
}

void a0_aes_expandEncKey::thread_tmp_680_fu_4292_p2() {
    tmp_680_fu_4292_p2 = (tmp_675_fu_4276_p3.read() & p_demorgan9_reg_6162.read());
}

void a0_aes_expandEncKey::thread_tmp_681_fu_4297_p2() {
    tmp_681_fu_4297_p2 = (tmp_679_fu_4287_p2.read() | tmp_680_fu_4292_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_683_fu_4303_p1() {
    tmp_683_fu_4303_p1 = esl_zext<9,8>(tmp_173_reg_5752.read());
}

void a0_aes_expandEncKey::thread_tmp_684_fu_4306_p1() {
    tmp_684_fu_4306_p1 = esl_zext<9,8>(tmp_174_reg_5759.read());
}

void a0_aes_expandEncKey::thread_tmp_685_fu_4309_p4() {
    tmp_685_fu_4309_p4 = tmp_681_fu_4297_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_686_fu_4319_p2() {
    tmp_686_fu_4319_p2 = (!tmp_683_fu_4303_p1.read().is_01() || !tmp_684_fu_4306_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_683_fu_4303_p1.read()) - sc_biguint<9>(tmp_684_fu_4306_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_687_fu_4325_p2() {
    tmp_687_fu_4325_p2 = (tmp_683_fu_4303_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_688_fu_4331_p2() {
    tmp_688_fu_4331_p2 = (!tmp_684_fu_4306_p1.read().is_01() || !tmp_683_fu_4303_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_684_fu_4306_p1.read()) - sc_biguint<9>(tmp_683_fu_4303_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_689_fu_4337_p3() {
    tmp_689_fu_4337_p3 = (!grp_fu_396_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_396_p2.read()[0].to_bool())? tmp_686_fu_4319_p2.read(): tmp_688_fu_4331_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_690_fu_4345_p3() {
    tmp_690_fu_4345_p3 = (!grp_fu_396_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_396_p2.read()[0].to_bool())? tmp_685_fu_4309_p4.read(): tmp_681_fu_4297_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_691_fu_4353_p3() {
    tmp_691_fu_4353_p3 = (!grp_fu_396_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_396_p2.read()[0].to_bool())? tmp_687_fu_4325_p2.read(): tmp_683_fu_4303_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_692_fu_4361_p2() {
    tmp_692_fu_4361_p2 = (!ap_const_lv9_FF.is_01() || !tmp_689_fu_4337_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_689_fu_4337_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_694_fu_4492_p1() {
    tmp_694_fu_4492_p1 = esl_zext<256,9>(tmp_692_reg_6183.read());
}

void a0_aes_expandEncKey::thread_tmp_696_fu_4495_p2() {
    tmp_696_fu_4495_p2 = (!tmp_694_fu_4492_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_694_fu_4492_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_697_fu_4501_p2() {
    tmp_697_fu_4501_p2 = (tmp_695_reg_6232.read() & tmp_696_fu_4495_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_698_fu_4506_p1() {
    tmp_698_fu_4506_p1 = tmp_697_fu_4501_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_699_fu_4372_p3() {
    tmp_699_fu_4372_p3 = esl_concat<5,3>(tmp_198_fu_4367_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_700_fu_4384_p2() {
    tmp_700_fu_4384_p2 = (tmp_699_fu_4372_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_701_fu_4402_p2() {
    tmp_701_fu_4402_p2 = (!tmp_223_cast_fu_4380_p1.read().is_01() || !tmp_224_cast_fu_4398_p1.read().is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_223_cast_fu_4380_p1.read()) > sc_biguint<10>(tmp_224_cast_fu_4398_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_702_fu_4408_p1() {
    tmp_702_fu_4408_p1 = esl_zext<9,8>(tmp_699_fu_4372_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_703_fu_4412_p4() {
    tmp_703_fu_4412_p4 = tmp_681_fu_4297_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_704_fu_4422_p2() {
    tmp_704_fu_4422_p2 = (!tmp_702_fu_4408_p1.read().is_01() || !tmp_200_fu_4390_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_702_fu_4408_p1.read()) - sc_biguint<9>(tmp_200_fu_4390_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_705_fu_4428_p2() {
    tmp_705_fu_4428_p2 = (tmp_702_fu_4408_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_706_fu_4434_p2() {
    tmp_706_fu_4434_p2 = (!tmp_200_fu_4390_p3.read().is_01() || !tmp_702_fu_4408_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_200_fu_4390_p3.read()) - sc_biguint<9>(tmp_702_fu_4408_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_707_fu_4440_p3() {
    tmp_707_fu_4440_p3 = (!tmp_701_fu_4402_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_701_fu_4402_p2.read()[0].to_bool())? tmp_704_fu_4422_p2.read(): tmp_706_fu_4434_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_708_fu_4448_p3() {
    tmp_708_fu_4448_p3 = (!tmp_701_fu_4402_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_701_fu_4402_p2.read()[0].to_bool())? tmp_703_fu_4412_p4.read(): tmp_681_fu_4297_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_709_fu_4456_p3() {
    tmp_709_fu_4456_p3 = (!tmp_701_fu_4402_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_701_fu_4402_p2.read()[0].to_bool())? tmp_705_fu_4428_p2.read(): tmp_702_fu_4408_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_70_fu_562_p5() {
    tmp_70_fu_562_p5 = esl_partset<256,256,8,32,32>(tmp_67_fu_545_p5.read(), tmp_26_fu_557_p2.read(), ap_const_lv32_10, ap_const_lv32_17);
}

void a0_aes_expandEncKey::thread_tmp_710_fu_4464_p2() {
    tmp_710_fu_4464_p2 = (!ap_const_lv9_FF.is_01() || !tmp_707_fu_4440_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_707_fu_4440_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_712_fu_4510_p1() {
    tmp_712_fu_4510_p1 = esl_zext<256,9>(tmp_710_reg_6209.read());
}

void a0_aes_expandEncKey::thread_tmp_714_fu_4513_p2() {
    tmp_714_fu_4513_p2 = (!tmp_712_fu_4510_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_712_fu_4510_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_715_fu_4519_p2() {
    tmp_715_fu_4519_p2 = (tmp_713_reg_6237.read() & tmp_714_fu_4513_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_716_fu_4524_p1() {
    tmp_716_fu_4524_p1 = tmp_715_fu_4519_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_717_fu_4470_p2() {
    tmp_717_fu_4470_p2 = (!tmp_223_cast_fu_4380_p1.read().is_01() || !tmp_224_cast_fu_4398_p1.read().is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_223_cast_fu_4380_p1.read()) > sc_biguint<10>(tmp_224_cast_fu_4398_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_718_fu_4534_p1() {
    tmp_718_fu_4534_p1 = esl_zext<9,8>(tmp_699_reg_6188.read());
}

void a0_aes_expandEncKey::thread_tmp_719_fu_4549_p1() {
    tmp_719_fu_4549_p1 = esl_zext<256,8>(tmp_63_1_reg_6242.read());
}

void a0_aes_expandEncKey::thread_tmp_720_fu_4552_p2() {
    tmp_720_fu_4552_p2 = (tmp_718_reg_6247.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_721_fu_4537_p3() {
    tmp_721_fu_4537_p3 = (!tmp_717_reg_6214.read()[0].is_01())? sc_lv<9>(): ((tmp_717_reg_6214.read()[0].to_bool())? tmp_718_fu_4534_p1.read(): tmp_200_reg_6193.read());
}

void a0_aes_expandEncKey::thread_tmp_722_fu_4557_p3() {
    tmp_722_fu_4557_p3 = (!tmp_717_reg_6214.read()[0].is_01())? sc_lv<9>(): ((tmp_717_reg_6214.read()[0].to_bool())? tmp_200_reg_6193.read(): tmp_718_reg_6247.read());
}

void a0_aes_expandEncKey::thread_tmp_723_fu_4562_p3() {
    tmp_723_fu_4562_p3 = (!tmp_717_reg_6214.read()[0].is_01())? sc_lv<9>(): ((tmp_717_reg_6214.read()[0].to_bool())? tmp_720_fu_4552_p2.read(): tmp_718_reg_6247.read());
}

void a0_aes_expandEncKey::thread_tmp_724_fu_4543_p2() {
    tmp_724_fu_4543_p2 = (!ap_const_lv9_FF.is_01() || !tmp_721_fu_4537_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_721_fu_4537_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_725_fu_4568_p1() {
    tmp_725_fu_4568_p1 = esl_zext<256,9>(tmp_723_fu_4562_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_726_fu_4572_p1() {
    tmp_726_fu_4572_p1 = esl_zext<256,9>(tmp_722_fu_4557_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_727_fu_4576_p1() {
    tmp_727_fu_4576_p1 = esl_zext<256,9>(tmp_724_reg_6254.read());
}

void a0_aes_expandEncKey::thread_tmp_728_fu_4579_p2() {
    tmp_728_fu_4579_p2 = (!tmp_725_fu_4568_p1.read().is_01())? sc_lv<256>(): tmp_719_fu_4549_p1.read() << (unsigned short)tmp_725_fu_4568_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_729_fu_4603_p4() {
    tmp_729_fu_4603_p4 = tmp_728_reg_6259.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_730_fu_4612_p3() {
    tmp_730_fu_4612_p3 = (!tmp_717_reg_6214.read()[0].is_01())? sc_lv<256>(): ((tmp_717_reg_6214.read()[0].to_bool())? tmp_729_fu_4603_p4.read(): tmp_728_reg_6259.read());
}

void a0_aes_expandEncKey::thread_tmp_731_fu_4585_p2() {
    tmp_731_fu_4585_p2 = (!tmp_726_fu_4572_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_726_fu_4572_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_732_fu_4591_p2() {
    tmp_732_fu_4591_p2 = (!tmp_727_fu_4576_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_727_fu_4576_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_733_fu_4618_p2() {
    tmp_733_fu_4618_p2 = (p_demorgan10_reg_6265.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_734_fu_4623_p2() {
    tmp_734_fu_4623_p2 = (tmp_681_reg_6168.read() & tmp_733_fu_4618_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_735_fu_4628_p2() {
    tmp_735_fu_4628_p2 = (tmp_730_fu_4612_p3.read() & p_demorgan10_reg_6265.read());
}

void a0_aes_expandEncKey::thread_tmp_736_fu_4633_p2() {
    tmp_736_fu_4633_p2 = (tmp_734_fu_4623_p2.read() | tmp_735_fu_4628_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_738_fu_4639_p1() {
    tmp_738_fu_4639_p1 = esl_zext<9,8>(tmp_182_reg_5851.read());
}

void a0_aes_expandEncKey::thread_tmp_739_fu_4642_p1() {
    tmp_739_fu_4642_p1 = esl_zext<9,8>(tmp_183_reg_5858.read());
}

void a0_aes_expandEncKey::thread_tmp_73_fu_579_p5() {
    tmp_73_fu_579_p5 = esl_partset<256,256,8,32,32>(tmp_70_fu_562_p5.read(), tmp_28_fu_574_p2.read(), ap_const_lv32_18, ap_const_lv32_1F);
}

void a0_aes_expandEncKey::thread_tmp_740_fu_4645_p4() {
    tmp_740_fu_4645_p4 = tmp_736_fu_4633_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_741_fu_4655_p2() {
    tmp_741_fu_4655_p2 = (!tmp_738_fu_4639_p1.read().is_01() || !tmp_739_fu_4642_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_738_fu_4639_p1.read()) - sc_biguint<9>(tmp_739_fu_4642_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_742_fu_4661_p2() {
    tmp_742_fu_4661_p2 = (tmp_738_fu_4639_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_743_fu_4667_p2() {
    tmp_743_fu_4667_p2 = (!tmp_739_fu_4642_p1.read().is_01() || !tmp_738_fu_4639_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_739_fu_4642_p1.read()) - sc_biguint<9>(tmp_738_fu_4639_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_744_fu_4673_p3() {
    tmp_744_fu_4673_p3 = (!grp_fu_400_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_400_p2.read()[0].to_bool())? tmp_741_fu_4655_p2.read(): tmp_743_fu_4667_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_745_fu_4681_p3() {
    tmp_745_fu_4681_p3 = (!grp_fu_400_p2.read()[0].is_01())? sc_lv<256>(): ((grp_fu_400_p2.read()[0].to_bool())? tmp_740_fu_4645_p4.read(): tmp_736_fu_4633_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_746_fu_4689_p3() {
    tmp_746_fu_4689_p3 = (!grp_fu_400_p2.read()[0].is_01())? sc_lv<9>(): ((grp_fu_400_p2.read()[0].to_bool())? tmp_742_fu_4661_p2.read(): tmp_738_fu_4639_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_747_fu_4697_p2() {
    tmp_747_fu_4697_p2 = (!ap_const_lv9_FF.is_01() || !tmp_744_fu_4673_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_744_fu_4673_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_749_fu_4828_p1() {
    tmp_749_fu_4828_p1 = esl_zext<256,9>(tmp_747_reg_6286.read());
}

void a0_aes_expandEncKey::thread_tmp_74_fu_2062_p4() {
    tmp_74_fu_2062_p4 = p_new1_reg_329.read().range(103, 96);
}

void a0_aes_expandEncKey::thread_tmp_751_fu_4831_p2() {
    tmp_751_fu_4831_p2 = (!tmp_749_fu_4828_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_749_fu_4828_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_752_fu_4837_p2() {
    tmp_752_fu_4837_p2 = (tmp_750_reg_6335.read() & tmp_751_fu_4831_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_753_fu_4842_p1() {
    tmp_753_fu_4842_p1 = tmp_752_fu_4837_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_754_fu_4708_p3() {
    tmp_754_fu_4708_p3 = esl_concat<5,3>(tmp_204_fu_4703_p2.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_755_fu_4720_p2() {
    tmp_755_fu_4720_p2 = (tmp_754_fu_4708_p3.read() | ap_const_lv8_7);
}

void a0_aes_expandEncKey::thread_tmp_756_fu_4738_p2() {
    tmp_756_fu_4738_p2 = (!tmp_230_cast_fu_4716_p1.read().is_01() || !tmp_231_cast_fu_4734_p1.read().is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_230_cast_fu_4716_p1.read()) > sc_biguint<10>(tmp_231_cast_fu_4734_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_757_fu_4744_p1() {
    tmp_757_fu_4744_p1 = esl_zext<9,8>(tmp_754_fu_4708_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_758_fu_4748_p4() {
    tmp_758_fu_4748_p4 = tmp_736_fu_4633_p2.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_759_fu_4758_p2() {
    tmp_759_fu_4758_p2 = (!tmp_757_fu_4744_p1.read().is_01() || !tmp_206_fu_4726_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_757_fu_4744_p1.read()) - sc_biguint<9>(tmp_206_fu_4726_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_75_fu_2122_p4() {
    tmp_75_fu_2122_p4 = p_new1_reg_329.read().range(135, 128);
}

void a0_aes_expandEncKey::thread_tmp_760_fu_4764_p2() {
    tmp_760_fu_4764_p2 = (tmp_757_fu_4744_p1.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_761_fu_4770_p2() {
    tmp_761_fu_4770_p2 = (!tmp_206_fu_4726_p3.read().is_01() || !tmp_757_fu_4744_p1.read().is_01())? sc_lv<9>(): (sc_biguint<9>(tmp_206_fu_4726_p3.read()) - sc_biguint<9>(tmp_757_fu_4744_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_762_fu_4776_p3() {
    tmp_762_fu_4776_p3 = (!tmp_756_fu_4738_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_756_fu_4738_p2.read()[0].to_bool())? tmp_759_fu_4758_p2.read(): tmp_761_fu_4770_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_763_fu_4784_p3() {
    tmp_763_fu_4784_p3 = (!tmp_756_fu_4738_p2.read()[0].is_01())? sc_lv<256>(): ((tmp_756_fu_4738_p2.read()[0].to_bool())? tmp_758_fu_4748_p4.read(): tmp_736_fu_4633_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_764_fu_4792_p3() {
    tmp_764_fu_4792_p3 = (!tmp_756_fu_4738_p2.read()[0].is_01())? sc_lv<9>(): ((tmp_756_fu_4738_p2.read()[0].to_bool())? tmp_760_fu_4764_p2.read(): tmp_757_fu_4744_p1.read());
}

void a0_aes_expandEncKey::thread_tmp_765_fu_4800_p2() {
    tmp_765_fu_4800_p2 = (!ap_const_lv9_FF.is_01() || !tmp_762_fu_4776_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_762_fu_4776_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_767_fu_4846_p1() {
    tmp_767_fu_4846_p1 = esl_zext<256,9>(tmp_765_reg_6312.read());
}

void a0_aes_expandEncKey::thread_tmp_769_fu_4849_p2() {
    tmp_769_fu_4849_p2 = (!tmp_767_fu_4846_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_767_fu_4846_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_76_fu_2190_p5() {
    tmp_76_fu_2190_p5 = esl_partset<256,256,8,32,32>(tmp_35_fu_2186_p1.read(), tmp_47_reg_5489.read(), ap_const_lv32_80, ap_const_lv32_87);
}

void a0_aes_expandEncKey::thread_tmp_770_fu_4855_p2() {
    tmp_770_fu_4855_p2 = (tmp_768_reg_6340.read() & tmp_769_fu_4849_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_771_fu_4860_p1() {
    tmp_771_fu_4860_p1 = tmp_770_fu_4855_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_772_fu_4806_p2() {
    tmp_772_fu_4806_p2 = (!tmp_230_cast_fu_4716_p1.read().is_01() || !tmp_231_cast_fu_4734_p1.read().is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_230_cast_fu_4716_p1.read()) > sc_biguint<10>(tmp_231_cast_fu_4734_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_773_fu_4870_p1() {
    tmp_773_fu_4870_p1 = esl_zext<9,8>(tmp_754_reg_6291.read());
}

void a0_aes_expandEncKey::thread_tmp_774_fu_4885_p1() {
    tmp_774_fu_4885_p1 = esl_zext<256,8>(tmp_66_1_reg_6345.read());
}

void a0_aes_expandEncKey::thread_tmp_775_fu_4888_p2() {
    tmp_775_fu_4888_p2 = (tmp_773_reg_6350.read() ^ ap_const_lv9_FF);
}

void a0_aes_expandEncKey::thread_tmp_776_fu_4873_p3() {
    tmp_776_fu_4873_p3 = (!tmp_772_reg_6317.read()[0].is_01())? sc_lv<9>(): ((tmp_772_reg_6317.read()[0].to_bool())? tmp_773_fu_4870_p1.read(): tmp_206_reg_6296.read());
}

void a0_aes_expandEncKey::thread_tmp_777_fu_4893_p3() {
    tmp_777_fu_4893_p3 = (!tmp_772_reg_6317.read()[0].is_01())? sc_lv<9>(): ((tmp_772_reg_6317.read()[0].to_bool())? tmp_206_reg_6296.read(): tmp_773_reg_6350.read());
}

void a0_aes_expandEncKey::thread_tmp_778_fu_4898_p3() {
    tmp_778_fu_4898_p3 = (!tmp_772_reg_6317.read()[0].is_01())? sc_lv<9>(): ((tmp_772_reg_6317.read()[0].to_bool())? tmp_775_fu_4888_p2.read(): tmp_773_reg_6350.read());
}

void a0_aes_expandEncKey::thread_tmp_779_fu_4879_p2() {
    tmp_779_fu_4879_p2 = (!ap_const_lv9_FF.is_01() || !tmp_776_fu_4873_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_776_fu_4873_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_77_fu_2077_p4() {
    tmp_77_fu_2077_p4 = p_new1_reg_329.read().range(111, 104);
}

void a0_aes_expandEncKey::thread_tmp_780_fu_4904_p1() {
    tmp_780_fu_4904_p1 = esl_zext<256,9>(tmp_778_fu_4898_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_781_fu_4908_p1() {
    tmp_781_fu_4908_p1 = esl_zext<256,9>(tmp_777_fu_4893_p3.read());
}

void a0_aes_expandEncKey::thread_tmp_782_fu_4912_p1() {
    tmp_782_fu_4912_p1 = esl_zext<256,9>(tmp_779_reg_6357.read());
}

void a0_aes_expandEncKey::thread_tmp_783_fu_4915_p2() {
    tmp_783_fu_4915_p2 = (!tmp_780_fu_4904_p1.read().is_01())? sc_lv<256>(): tmp_774_fu_4885_p1.read() << (unsigned short)tmp_780_fu_4904_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_784_fu_4939_p4() {
    tmp_784_fu_4939_p4 = tmp_783_reg_6362.read().range(0, 255);
}

void a0_aes_expandEncKey::thread_tmp_785_fu_4948_p3() {
    tmp_785_fu_4948_p3 = (!tmp_772_reg_6317.read()[0].is_01())? sc_lv<256>(): ((tmp_772_reg_6317.read()[0].to_bool())? tmp_784_fu_4939_p4.read(): tmp_783_reg_6362.read());
}

void a0_aes_expandEncKey::thread_tmp_786_fu_4921_p2() {
    tmp_786_fu_4921_p2 = (!tmp_781_fu_4908_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 << (unsigned short)tmp_781_fu_4908_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_787_fu_4927_p2() {
    tmp_787_fu_4927_p2 = (!tmp_782_fu_4912_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_782_fu_4912_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_788_fu_4954_p2() {
    tmp_788_fu_4954_p2 = (p_demorgan11_reg_6368.read() ^ ap_const_lv256_lc_4);
}

void a0_aes_expandEncKey::thread_tmp_789_fu_4959_p2() {
    tmp_789_fu_4959_p2 = (tmp_736_reg_6271.read() & tmp_788_fu_4954_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_78_fu_2138_p4() {
    tmp_78_fu_2138_p4 = p_new1_reg_329.read().range(143, 136);
}

void a0_aes_expandEncKey::thread_tmp_790_fu_4964_p2() {
    tmp_790_fu_4964_p2 = (tmp_785_fu_4948_p3.read() & p_demorgan11_reg_6368.read());
}

void a0_aes_expandEncKey::thread_tmp_791_fu_4969_p2() {
    tmp_791_fu_4969_p2 = (tmp_789_fu_4959_p2.read() | tmp_790_fu_4964_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_79_fu_2201_p5() {
    tmp_79_fu_2201_p5 = esl_partset<256,256,8,32,32>(tmp_76_fu_2190_p5.read(), tmp_49_reg_5494.read(), ap_const_lv32_88, ap_const_lv32_8F);
}

void a0_aes_expandEncKey::thread_tmp_80_fu_2092_p4() {
    tmp_80_fu_2092_p4 = p_new1_reg_329.read().range(119, 112);
}

void a0_aes_expandEncKey::thread_tmp_81_fu_2154_p4() {
    tmp_81_fu_2154_p4 = p_new1_reg_329.read().range(151, 144);
}

void a0_aes_expandEncKey::thread_tmp_82_fu_2212_p5() {
    tmp_82_fu_2212_p5 = esl_partset<256,256,8,32,32>(tmp_79_fu_2201_p5.read(), tmp_51_reg_5499.read(), ap_const_lv32_90, ap_const_lv32_97);
}

void a0_aes_expandEncKey::thread_tmp_83_fu_2107_p4() {
    tmp_83_fu_2107_p4 = p_new1_reg_329.read().range(127, 120);
}

void a0_aes_expandEncKey::thread_tmp_84_fu_2170_p4() {
    tmp_84_fu_2170_p4 = p_new1_reg_329.read().range(159, 152);
}

void a0_aes_expandEncKey::thread_tmp_85_fu_2223_p5() {
    tmp_85_fu_2223_p5 = esl_partset<256,256,8,32,32>(tmp_82_fu_2212_p5.read(), tmp_53_reg_5504.read(), ap_const_lv32_98, ap_const_lv32_9F);
}

void a0_aes_expandEncKey::thread_tmp_87_fu_642_p2() {
    tmp_87_fu_642_p2 = (!ap_const_lv4_C.is_01() || !tmp_37_fu_638_p1.read().is_01())? sc_lv<4>(): (sc_bigint<4>(ap_const_lv4_C) + sc_biguint<4>(tmp_37_fu_638_p1.read()));
}

void a0_aes_expandEncKey::thread_tmp_88_fu_714_p3() {
    tmp_88_fu_714_p3 = esl_concat<4,3>(tmp_87_reg_5083.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_89_fu_721_p2() {
    tmp_89_fu_721_p2 = (tmp_88_fu_714_p3.read() | ap_const_lv7_7);
}

void a0_aes_expandEncKey::thread_tmp_90_fu_775_p2() {
    tmp_90_fu_775_p2 = (!ap_const_lv9_FF.is_01() || !tmp_58_fu_759_p3.read().is_01())? sc_lv<9>(): (sc_biguint<9>(ap_const_lv9_FF) - sc_biguint<9>(tmp_58_fu_759_p3.read()));
}

void a0_aes_expandEncKey::thread_tmp_92_fu_1230_p1() {
    tmp_92_fu_1230_p1 = esl_zext<256,9>(tmp_90_reg_5169.read());
}

void a0_aes_expandEncKey::thread_tmp_94_fu_1233_p2() {
    tmp_94_fu_1233_p2 = (!tmp_92_fu_1230_p1.read().is_01())? sc_lv<256>(): ap_const_lv256_lc_4 >> (unsigned short)tmp_92_fu_1230_p1.read().to_uint();
}

void a0_aes_expandEncKey::thread_tmp_95_fu_1239_p2() {
    tmp_95_fu_1239_p2 = (grp_fu_1028_p2.read() & tmp_94_fu_1233_p2.read());
}

void a0_aes_expandEncKey::thread_tmp_96_fu_1245_p1() {
    tmp_96_fu_1245_p1 = tmp_95_fu_1239_p2.read().range(8-1, 0);
}

void a0_aes_expandEncKey::thread_tmp_97_fu_648_p3() {
    tmp_97_fu_648_p3 = esl_concat<4,3>(tmp_37_fu_638_p1.read(), ap_const_lv3_0);
}

void a0_aes_expandEncKey::thread_tmp_98_fu_657_p2() {
    tmp_98_fu_657_p2 = (tmp_97_fu_648_p3.read() | ap_const_lv7_7);
}

void a0_aes_expandEncKey::thread_tmp_fu_498_p1() {
    tmp_fu_498_p1 = esl_zext<32,8>(tmp_62_reg_5007.read());
}

void a0_aes_expandEncKey::thread_tmp_s_fu_529_p5() {
    tmp_s_fu_529_p5 = esl_partset<256,256,8,32,32>(tmp_29_reg_5002.read(), tmp_22_fu_523_p2.read(), ap_const_lv32_0, ap_const_lv32_7);
}

}

