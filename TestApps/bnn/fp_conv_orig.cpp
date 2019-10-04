#include <ap_int.h>

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


//-------------------------------------------------------------------
// Template functions
//-------------------------------------------------------------------
template<typename T>
void load_kh(T& comp, const Word kh_mem[KH_WORDS], Address idx) {
  Word kh_word = kh_mem[idx/KH_PER_WORD];
  IdxType off = idx % KH_PER_WORD;
  if (off == 0)
    comp(15,0) = kh_word(15, 0);
  else if (off == 1)
    comp(15,0) = kh_word(31,16);
  else if (off == 2)
    comp(15,0) = kh_word(47,32);
  else
    comp(15,0) = kh_word(63,48);
}

// -----------------------------------------------------------------------
// Module to do the first conv layer
// -----------------------------------------------------------------------
void fp_conv_orig(
    Word wt_mem[CONVOLVERS][C_WT_WORDS],
    Word kh_mem[KH_WORDS],
    Word dmem[2][CONVOLVERS][C_DMEM_WORDS],
    ap_uint<1> d_i_idx,
    ap_uint<1> d_o_idx,
    const Address kh_index,
    const Address o_index,
    const unsigned N
) {
  const unsigned M = 3;
  const unsigned S = 32;
  const unsigned OUTWORDS = 16; // words per output image

  C1InputType win[M][K][K];
  C1InputType lbuf[M][K-1][S];
  Word outwords[OUTWORDS];
  WtType wtbuf[M];

  Address wt_offset = 0;
  ap_uint<3> wt_addr = 0;

  // Parallelized across m, better for HLS
  LOOP_FP_CONV_O:
  for (IdxType n = 0; n < N; ++n) {

    // clear linebuffers for each new output map
    LOOP_RESET_LINEBUFFERS:
    for (IdxType m = 0; m < M; ++m) {
      PROLOG_COLS: for (IdxType c = 0; c < S; ++c) {
        PROLOG_ROWS: for (IdxType r = 0; r < K/2; ++r) {
          for (IdxType lr = 0; lr < K-2; ++lr) {
            lbuf[m][lr][c] = lbuf[m][lr+1][c];
          }
          lbuf[m][K-2][c] = 0;
      } }
    }

    // The weights for the 1st conv layer are just laid out
    // linearly across wt_mem, 3 weights per 64-bit word
    DB_PRINT(3, "n = %u\n", n.to_int());
    Word wt_word = wt_mem[n % CONVOLVERS][n / CONVOLVERS];
    LOOP_LOAD_WTS:
    for (ap_uint<2> m = 0; m < M; ++m) {
      wtbuf[m] = wt_word((m+1)*WT_SIZE-1, m*WT_SIZE);
      DB(3, print_wt(wtbuf[m]));
      DB(3, printf("--\n"));
    }

    // load batch norm params
    C1Comp nc;
    load_kh(nc, kh_mem, (kh_index+n));
    //printf ("  n=%3d, nc=%6.3f\n", n.to_int(), nc.to_float());

    // begin convolution
    LOOP_CONV_ROWS: for (IdxType r = 0; r < S+1; ++r) {
      LOOP_CONV_COLS: for (IdxType c = 0; c < S+1; ++c) {
        // load input word
        Word inword = 0;
        if (r < S && c < S) {
          const Address addr = r*S + c;
          inword = dmem[d_i_idx][addr/C_DMEM_WORDS][addr%C_DMEM_WORDS];
        }

        for (ap_uint<2> m = 0; m < M; ++m) {
          // load data: the value of pix is either the pixel at [r,c]
          // 0 -> +1, -1 -> -1
          // or -> 0 for padding around the boundaries
          C1InputType pix;
          const unsigned W = pix.length();
          pix(W-1,0) = inword(W-1+m*W, m*W);

          // window: shift left, leaving rightmost col for new data
          for (IdxType wr = 0; wr < K; ++wr) {
            for (IdxType wc = 0; wc < K-1; ++wc) {
              win[m][wr][wc] = win[m][wr][wc+1];
          } }

          // window: fill top K-1 pixels of rightmost column from lbuf
          for (IdxType wr = 0; wr < K-1; ++wr) {
            C1InputType val = (c != S) ? lbuf[m][wr][c] : C1InputType(0);
            win[m][wr][K-1] = val;
          }

          // window: fill bottom right with new input pixel
          win[m][K-1][K-1] = pix;

          // lbuf: shift up column c
          if (c != S) {
            for (IdxType lr = 0; lr < K-2; ++lr) {
              lbuf[m][lr][c] = lbuf[m][lr+1][c];
            }
            lbuf[m][K-2][c] = pix;
          }
        } // m

        // only perform the conv and store if legal position
        if (r > 0 && c > 0) {
          C1ConvType res = 0;
          for (ap_uint<2> m = 0; m < M; ++m) {
            for (ap_uint<2> wr = 0; wr < K; ++wr) {
              for (ap_uint<2> wc = 0; wc < K; ++wc) {
                const C1InputType& pix = win[m][wr][wc];
                const Bit& b = wtbuf[m][8-(wr*K+wc)];
                res += (b==0) ? pix : (C1InputType)(-pix);
                C1InputType prod = (b==0) ? pix : (C1InputType)(-pix);
                printf("fp_conv_orig: %s %i %s %s\n", pix.to_string().c_str(), b.to_int(), prod.to_string().c_str(), res.to_string().c_str());
            } }
          }

          // perform normalization right here
          outwords[(r-1)/2][((r-1)%2)*S + (c-1)] =
            (res >= nc) ? Bit(0) : Bit(-1);
          printf("fp_conv_orig: %s %s %s\n", res.to_string().c_str(), nc.to_string().c_str(), outwords[(r-1)/2][((r-1)%2)*S + (c-1)].to_string().c_str());
        }

      } // CONV_COLS
    } // CONV_ROWS

    // Here i is the word offset within the outwords buffer
    LOOP_OUTPUT:
    for (IdxType i = 0; i < OUTWORDS; ++i) {
      Address img_idx = o_index+n;
      Address bank_idx = img_idx % CONVOLVERS;
      Address bank_off = img_idx / CONVOLVERS;
      dmem[d_o_idx][bank_idx][bank_off*OUTWORDS + i] = outwords[i];
    }
  } // n
}
