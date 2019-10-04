#include <random>
#include <ap_int.h>
#include <ap_fixed.h>

const unsigned WORD_SIZE = 64;

const unsigned CONVOLVERS = 2;
const unsigned CONV_W_PER_WORD = 7;
const unsigned WT_L         = 16*4*512*64; // parameter to control wt mem size
const unsigned C_WT_WORDS   = ((WT_L+CONV_W_PER_WORD-1)/CONV_W_PER_WORD + CONVOLVERS-1) / CONVOLVERS;  // wt words per convolver
const unsigned KH_WORDS     = WT_L/128*16 / WORD_SIZE;
const unsigned DMEM_WORDS   = 128*32*32 / WORD_SIZE;
const unsigned C_DMEM_WORDS = DMEM_WORDS / CONVOLVERS;

typedef ap_int<WORD_SIZE> Word;
typedef ap_uint<22> Address;

void fp_conv_orig(
    Word wt_mem[CONVOLVERS][C_WT_WORDS],
    Word kh_mem[KH_WORDS],
    Word dmem[2][CONVOLVERS][C_DMEM_WORDS],
    ap_uint<1> d_i_idx,
    ap_uint<1> d_o_idx,
    const Address kh_index,
    const Address o_index,
    const unsigned N
);

const unsigned FMAP_CNT = 128;
const unsigned FMAP_HEIGHT = 32;
const unsigned FMAP_WIDTH = 32;
const unsigned COLOR_CNT = 3;
const unsigned WIN_HEIGHT = 3;
const unsigned WIN_WIDTH = 3;

const unsigned PIXEL_WIDTH = 20;
const unsigned PIXEL_INT_WIDTH = 2;
const unsigned SUM_WIDTH = 24;
const unsigned SUM_INT_WIDTH = 6;
const unsigned FEATURE_WIDTH = 1;
const unsigned WEIGHT_WIDTH = 1;
const unsigned NORM_COEF_WIDTH = 16;
const unsigned NORM_COEF_INT_WIDTH = 4;

typedef ap_fixed<PIXEL_WIDTH, PIXEL_INT_WIDTH, AP_RND> Pixel;
typedef ap_uint<FEATURE_WIDTH> Feature;
typedef ap_fixed<SUM_WIDTH, SUM_INT_WIDTH, AP_RND> Sum;
typedef ap_uint<WEIGHT_WIDTH> Weight;
typedef ap_fixed<NORM_COEF_WIDTH, NORM_COEF_INT_WIDTH> Norm_coef;

void fp_conv(Pixel input[FMAP_HEIGHT][FMAP_WIDTH][COLOR_CNT],
             Feature output[FMAP_CNT][FMAP_HEIGHT][FMAP_WIDTH],
             Weight weights[FMAP_CNT][COLOR_CNT][WIN_HEIGHT][WIN_WIDTH],
             Norm_coef norm_coefs[FMAP_CNT]);

bool fp_conv_tb()
{
  std::random_device rd;
  std::default_random_engine generator;
  std::uniform_int_distribution<long long unsigned> distribution(0, 0xFFFFFFFFFFFFFFFF);

  auto wt_mem = new Word[CONVOLVERS][C_WT_WORDS];
  for (int i = 0; i < CONVOLVERS; i++)
    for (int j = 0; j < C_WT_WORDS; j++)
      wt_mem[i][j] = distribution(generator);

  auto kh_mem = new Word[KH_WORDS];
  for (int i = 0; i < KH_WORDS; i++)
    kh_mem[i] = distribution(generator);

  auto dmem = new Word[2][CONVOLVERS][C_DMEM_WORDS];
  for (int i = 0; i < 2; i++)
    for (int j = 0; j < CONVOLVERS; j++)
      for (int k = 0; k < C_DMEM_WORDS; k++)
        dmem[i][j][k] = distribution(generator);

  fp_conv_orig(wt_mem, kh_mem, dmem, 0, 1, 0, 0, 128);

  auto input = new Pixel[FMAP_HEIGHT][FMAP_WIDTH][COLOR_CNT];
  int addr = 0;
  for (int j = 0; j < FMAP_HEIGHT; j++)
    for (int k = 0; k < FMAP_WIDTH; k++)
    {
      Word word = dmem[0][addr / C_DMEM_WORDS][addr % C_DMEM_WORDS];
      addr++;
      for (int l = 0; l < COLOR_CNT; l++)
      {
        input[j][k][l](19, 0) = word & 0xFFFFF;
        word >>= 20;
      }
    }

  auto output = new Feature[FMAP_CNT][FMAP_HEIGHT][FMAP_WIDTH];

  auto weights = new Weight[FMAP_CNT][COLOR_CNT][WIN_HEIGHT][WIN_WIDTH];
  for (int i = 0; i < FMAP_CNT; i++)
  {
    Word weight = wt_mem[i % CONVOLVERS][i / CONVOLVERS];
    for (int j = 0; j < COLOR_CNT; j++)
      for (int k = 0; k < WIN_HEIGHT; k++)
        for (int l = 0; l < WIN_WIDTH; l++)
          weights[i][j][k][l] = weight[j * 9 + 8 - 3 * k - l];
  }

  auto norm_coefs = new Norm_coef[FMAP_CNT];
  for (int i = 0; i < FMAP_CNT / 4; i++)
  {
    Word word = kh_mem[i];
    for (int j = 0; j < 4; j++)
    {
      norm_coefs[4 * i + j](15, 0) = word & 0xFFFF;
      word >>= 16;
    }
  }

  fp_conv(input, output, weights, norm_coefs);

  addr = 0;
  for (int i = 0; i < FMAP_CNT; i++)
    for (int j = 0; j < FMAP_HEIGHT; j++)
      for (int k = 0; k < FMAP_WIDTH; k++)
      {
        Word word = dmem[1][i % CONVOLVERS][(i / CONVOLVERS) * 16 + (32 * j + k) / 64];
        if (output[i][j][k] != word[(32 * j + k) % 64])
          return true;
        addr++;
      }

  delete[] wt_mem;
  delete[] kh_mem;
  delete[] dmem;
  delete[] input;
  delete[] output;
  delete[] weights;
  delete[] norm_coefs;

  printf("fp_conv_tb was successful.\n");

  return false;
}
