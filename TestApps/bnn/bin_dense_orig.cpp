#include <ap_int.h>
#include <cassert>

#define DB(lvl, x)
#define DB_PRINT(lvl, ...)

//-------------------------------------------------------------------
// Constants
//-------------------------------------------------------------------
const unsigned CONVOLVERS = 2;

const unsigned WORD_SIZE = 64;
const unsigned WT_SIZE = 9;
const unsigned CONV_W_PER_WORD = 7;
const unsigned CONV1_W_PER_WORD = 4;
const unsigned KH_PER_WORD = 4;
const unsigned BYTE_SIZE = 8;
const unsigned K = 3;
const unsigned WT_L         = 16*4*512*64; // parameter to control wt mem size
const unsigned C_WT_WORDS   = ((WT_L+CONV_W_PER_WORD-1)/CONV_W_PER_WORD + CONVOLVERS-1) / CONVOLVERS;  // wt words per convolver
const unsigned WT_WORDS     = C_WT_WORDS*CONVOLVERS;
const unsigned KH_WORDS     = WT_L/128*16 / WORD_SIZE;

const unsigned DMEM_WORDS   = 128*32*32 / WORD_SIZE;
const unsigned C_DMEM_WORDS = DMEM_WORDS / CONVOLVERS;
const unsigned DMEM_O_WORDS = 512*4*4 / WORD_SIZE;
const unsigned DB_MEM_WORDS = 32*32;

const unsigned PIX_PER_PHASE = 2*32*32;

const unsigned MAX_WIDTH = WORD_SIZE;
const unsigned BANK_WIDTH = 8;
const unsigned LOG_BANK_WIDTH = 3;

const unsigned CONV_ROWS = 3;
const unsigned CONV_COLS = BANK_WIDTH+2;
const unsigned CONV_BANKS = WORD_SIZE / BANK_WIDTH;

//-------------------------------------------------------------------
// Typedefs
//-------------------------------------------------------------------
enum LayerTypeEnum {LAYER_CONV1, LAYER_CONV, LAYER_DENSE, LAYER_LAST};

// Quantized 32-bit input images in the range [-1,1]
typedef ap_fixed<32,2, AP_RND> InputFixed;

// Types for weights
typedef ap_int<1> Bit;
typedef ap_int<2> TwoBit;

typedef ap_fixed<16,2> KType;
typedef ap_fixed<16,4> HType;

typedef ap_fixed<16,5> NormOutput;
typedef ap_int<14> ConvOutput;

typedef ap_int<WORD_SIZE> Word;
typedef ap_int<WT_SIZE> WtType;
typedef ap_uint<22> Address;
typedef ap_int<12> ConvSum;
typedef ap_int<5> ConvOut;
typedef ap_uint<10> IdxType;
typedef ap_fixed<16,4> C1Comp;
typedef ap_int<16> NormComp;
typedef ap_int<16> DenseSum;
typedef ap_fixed<16,12> DenseNorm;

typedef ap_fixed<20,2, AP_RND> C1InputType;
typedef ap_fixed<24,6, AP_RND> C1ConvType;

const static Word m1("0x5555555555555555", 16);
const static Word m2("0x3333333333333333", 16);
const static Word m4("0x0f0f0f0f0f0f0f0f", 16);

void bin_dense_orig(
    const Word wt_mem[CONVOLVERS][C_WT_WORDS],
    const Word kh_mem[KH_WORDS],
    Word dmem[2][CONVOLVERS][C_DMEM_WORDS],
    ap_uint<2> layer_type,
    ap_uint<1> d_i_idx,
    ap_uint<1> d_o_idx,
    const Address o_index,
    const unsigned n_inputs,
    const unsigned n_outputs
) {
  //assert(n_outputs % WORD_SIZE == 0);
  assert(layer_type == LAYER_DENSE || n_outputs == 10);
  assert(n_inputs/WORD_SIZE % CONVOLVERS == 0);

  DenseSum sum_m[CONVOLVERS];
  // for last layer
  DenseNorm best_out = -1024;
  ap_int<8> prediction = -1;

  // read words from dmem and the wt store, dot them
  // o is the output bit, i is the input bit
  LOOP_DENSE_O:
  for (Address o = 0; o < n_outputs; ++o) {
    const Address o_addr = (o_index+o)/WORD_SIZE;
    const ap_uint<6> o_offset = (o_index+o) % WORD_SIZE;
    Word o_word = dmem[d_o_idx][o_addr%CONVOLVERS][o_addr/CONVOLVERS];

    DenseSum sum = 0;

    LOOP_DENSE_I:
    for (Address i = 0; i < n_inputs; i+=CONVOLVERS*WORD_SIZE) {
      const Address wt_addr = (o*n_inputs+i) / WORD_SIZE;

      for (IdxType j = 0; j < CONVOLVERS; ++j) {
        // in_wrd addr = [(i/WORD_SIZE+j) % CONVOLVERS][(i/WORD_SIZE+j) / CONVOLVERS]
        // wt_wrd addr = [wt_addr % CONVOLVERS][wt_addr / CONVOLVERS]
        const Word in_wrd = dmem[d_i_idx][j][i/WORD_SIZE/CONVOLVERS];
        const Word wt_wrd = wt_mem[j][wt_addr / CONVOLVERS];

        Word x = wt_wrd ^ in_wrd;

        // count_set bit for 64 bits, returns 2*cnt
        x -= (x >> 1) & m1;
        x = (x & m2) + ((x >> 2) & m2);
        x = (x + (x >> 4)) & m4;
        x += x >> 8;
        x += x >> 16;
        x += x >> 32;
        x = x & 0x7f;

        sum_m[j] = WORD_SIZE - (DenseSum)(x<<1);
      }

      for (IdxType j = 0; j < CONVOLVERS; ++j)
        sum += sum_m[j];
    } // n_inputs

    // not last layer -> biniarize,
    // otherwise just store the value as a 64bit word
    if (layer_type == LAYER_DENSE) {
      Address kh_addr = o / KH_PER_WORD;
      Word kh_word = kh_mem[kh_addr];

      NormComp nc;
      IdxType kh_off = o % KH_PER_WORD;
      if (kh_off == 0)
        nc(15,0) = kh_word(15, 0);
      else if (kh_off == 1)
        nc(15,0) = kh_word(31,16);
      else if (kh_off == 2)
        nc(15,0) = kh_word(47,32);
      else
        nc(15,0) = kh_word(63,48);

      o_word[o_offset] = (sum >= nc) ? 0 : 1;

      printf("bin_dense_orig: %s %s %s\n", sum.to_string().c_str(), nc.to_string().c_str(), o_word[o_offset].to_string().c_str());
    } else {
      Address kh_addr = o / (const unsigned)2;
      Word kh_word = kh_mem[kh_addr];

      KType ki;  HType hi;
      IdxType kh_off = o % 2;
      if (kh_off == 0) {
        ki(15,0) = kh_word(15, 0);
        hi(15,0) = kh_word(31,16);
      } else {
        ki(15,0) = kh_word(47,32);
        hi(15,0) = kh_word(63,48);
      }

      //printf (" >> %d * %f + %f\n", sum.to_int(), ki.to_float(), hi.to_float());
      ap_fixed<20,10> out = ap_fixed<20,10>(sum)*ki + hi;

      if (o == 0 || out > best_out) {
        prediction = o;
        best_out = out;
      }

      printf("bin_dense_orig: %s %s %s %s %s %s\n", sum.to_string().c_str(), ki.to_string().c_str(),
             hi.to_string().c_str(), out.to_string().c_str(), prediction.to_string().c_str(),
             best_out.to_string().c_str());
    }

    dmem[d_o_idx][o_addr%CONVOLVERS][o_addr/CONVOLVERS] = o_word;
  } // n_outputs

  // Here we are using o_index as a bit index, not a word index!
  if (layer_type == LAYER_LAST) {
    Word o_word;
    o_word(7,0) = prediction(7,0);
    o_word(WORD_SIZE-1, 8) = 0;
    dmem[d_o_idx][0][0] = o_word;
  }
}
