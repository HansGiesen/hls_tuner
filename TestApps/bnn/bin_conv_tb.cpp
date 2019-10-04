#include <random>
#include <ap_int.h>
#include <ap_fixed.h>
#include "bin_conv.h"

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

void bin_conv_orig(
    Word wt_mem[CONVOLVERS][C_WT_WORDS],
    const Word kh_mem[KH_WORDS],
    Word dmem[2][CONVOLVERS][C_DMEM_WORDS],
    ap_uint<1> d_i_idx,
    ap_uint<1> d_o_idx,
    const unsigned   n_inputs,
    const Address    n_outputs,
    const ap_uint<2> width_mode,  // 0=8'b, 1=16'b, 2=32'b
    const ap_uint<2> norm_mode    // 0='do nothing', 1='do norm', 2='do pool'
);


template <unsigned in_fmap_cnt, unsigned out_fmap_cnt, unsigned in_fmap_height, unsigned in_fmap_width,
          unsigned out_fmap_height, unsigned out_fmap_width> int bin_conv_tb_core()
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

  unsigned width_mode = 0;
  if (in_fmap_width == 32)
    width_mode = 2;
  else if (in_fmap_width == 16)
    width_mode = 1;
  bin_conv_orig(wt_mem, kh_mem, dmem, 0, 1, in_fmap_cnt, out_fmap_cnt, width_mode, in_fmap_width != out_fmap_width ? 2 : 1);

  auto input = new Feature[in_fmap_cnt][in_fmap_height][in_fmap_width];
  int addr = 0;
  for (int i = 0; i < in_fmap_cnt; i++)
    for (int j = 0; j < in_fmap_height; j++)
      for (int k = 0; k < in_fmap_width; k++)
      {
        input[i][j][k] = dmem[0][(addr / 64) % CONVOLVERS][(addr / 64) / CONVOLVERS][addr % 64];
        addr++;
      }

  auto output = new Feature[out_fmap_cnt][out_fmap_height][out_fmap_width];

  auto weights = new Weight[out_fmap_cnt][in_fmap_cnt][3][3];
  addr = 0;
  int offs = 0;
  for (int h = 0; h < out_fmap_cnt; h++)
  {
    for (int i = 0; i < in_fmap_cnt / CONVOLVERS; i++)
    {
      for (int j = 0; j < CONVOLVERS; j++)
        for (int k = 0; k < 3; k++)
          for (int l = 0; l < 3; l++)
            weights[h][i * CONVOLVERS + j][2 - k][2 - l] = wt_mem[j][addr][offs + 3 * k + l];
      offs += 9;
      if (offs == 63)
      {
        offs = 0;
        addr++;
      }
    }
  }

  auto norm_coefs = new Norm_coef[out_fmap_cnt];
  for (int i = 0; i < out_fmap_cnt / 4; i++)
  {
    Word word = kh_mem[i];
    for (int j = 0; j < 4; j++)
    {
      norm_coefs[4 * i + j](15, 0) = word & 0xFFFF;
      word >>= 16;
    }
  }

  bin_conv<in_fmap_cnt, out_fmap_cnt, in_fmap_height, in_fmap_width, out_fmap_height, out_fmap_width>(input, output, weights, norm_coefs);

  addr = 0;
  for (int i = 0; i < out_fmap_cnt; i++)
    for (int j = 0; j < out_fmap_height; j++)
      for (int k = 0; k < out_fmap_width; k++)
      {
        Word word = dmem[1][i % CONVOLVERS][(i / CONVOLVERS) * (out_fmap_height * out_fmap_width / 64) + (out_fmap_width * j + k) / 64];
        if (output[i][j][k] != word[(out_fmap_width * j + k) % 64])
        {
          printf("%i %i %i\n", i, j, k);
          return true;
        }
        addr++;
      }

  delete[] wt_mem;
  delete[] kh_mem;
  delete[] dmem;
}

bool bin_conv_tb()
{
/*
  std::random_device rd;
  std::default_random_engine generator(rd());
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

  bin_conv_orig(wt_mem, kh_mem, dmem, 0, 1, 128, 128, 2, 2);

  auto input = new Feature[128][32][32];
  int addr = 0;
  for (int i = 0; i < 128; i++)
    for (int j = 0; j < 32; j++)
      for (int k = 0; k < 32; k++)
      {
        input[i][j][k] = dmem[0][(addr / 64) % CONVOLVERS][(addr / 64) / CONVOLVERS][addr % 64];
        addr++;
      }

  auto output = new Feature[128][16][16];

  auto weights = new Weight[128][128][3][3];
  addr = 0;
  int offs = 0;
  for (int h = 0; h < 128; h++)
  {
    for (int i = 0; i < 128 / CONVOLVERS; i++)
    {
      for (int j = 0; j < CONVOLVERS; j++)
        for (int k = 0; k < 3; k++)
          for (int l = 0; l < 3; l++)
            weights[h][i * CONVOLVERS + j][2 - k][2 - l] = wt_mem[j][addr][offs + 3 * k + l];
      offs += 9;
      if (offs == 63)
      {
        offs = 0;
        addr++;
      }
    }
  }

  auto norm_coefs = new Norm_coef[128];
  for (int i = 0; i < 128 / 4; i++)
  {
    Word word = kh_mem[i];
    for (int j = 0; j < 4; j++)
    {
      norm_coefs[4 * i + j](15, 0) = word & 0xFFFF;
      word >>= 16;
    }
  }

  bin_conv_0(input, output, weights, norm_coefs);

  addr = 0;
  for (int i = 0; i < 128; i++)
    for (int j = 0; j < 16; j++)
      for (int k = 0; k < 16; k++)
      {
        Word word = dmem[1][i % CONVOLVERS][(i / CONVOLVERS) * (16 * 16 / 64) + (16 * j + k) / 64];
        if (output[i][j][k] != word[(16 * j + k) % 64])
          return true;
        addr++;
      }

  delete[] wt_mem;
  delete[] kh_mem;
  delete[] dmem;
*/
/*  if (bin_conv_tb_core<128, 128, 32, 32, 16, 16>())
    printf("0 error.\n");
  if (bin_conv_tb_core<128, 256, 16, 16, 16, 16>())
    printf("1 error.\n");
  if (bin_conv_tb_core<256, 256, 16, 16, 8, 8>())
    printf("2 error.\n");
  if (bin_conv_tb_core<256, 512, 8, 8, 8, 8>())
    printf("3 error.\n");
  if (bin_conv_tb_core<512, 512, 8, 8, 4, 4>())
    printf("4 error.\n");*/

//  if (bin_conv_tb_core<128, 128, 32, 32, 16, 16>())
//    return true;
//  printf("tb 0 done.\n");
  if (bin_conv_tb_core<128, 256, 16, 16, 16, 16>())
    return true;
  printf("tb 1 done.\n");
  if (bin_conv_tb_core<256, 256, 16, 16, 8, 8>())
    return true;
  printf("tb 2 done.\n");
  if (bin_conv_tb_core<256, 512, 8, 8, 8, 8>())
    return true;
  printf("tb 3 done.\n");
  if (bin_conv_tb_core<512, 512, 8, 8, 4, 4>())
    return true;

  printf("bin_conv_tb was successful.\n");

  return false;
}

