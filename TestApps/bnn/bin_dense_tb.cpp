#include <random>
#include <ap_int.h>

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

enum LayerTypeEnum {LAYER_CONV1, LAYER_CONV, LAYER_DENSE, LAYER_LAST};

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
);

typedef ap_uint<1> Input;
typedef ap_uint<1> Output;
typedef ap_int<16> Sum;
typedef ap_uint<1> Weight;
typedef ap_int<16> Norm_coef;
typedef ap_uint<4> Pred;
typedef ap_fixed<16, 2> Scale;
typedef ap_fixed<16, 4> Offset;

void bin_dense_0(Input input[8192], Output output[1024], Weight weights[8192 * 1024], Norm_coef norm_coefs[1024]);
void bin_dense_1(Input input[1024], Output output[1024], Weight weights[1024 * 1024], Norm_coef norm_coefs[1024]);
void bin_dense_2(Input input[1024], Pred & pred, Weight weights[1024 * 10], Scale scales[10], Offset offsets[10]);

template <unsigned in_cnt, unsigned out_cnt> int bin_dense_tb_core()
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

  bin_dense_orig(wt_mem, kh_mem, dmem, out_cnt == 1024 ? LAYER_DENSE : LAYER_LAST, 0, 1, 0, in_cnt, out_cnt);

  auto input = new Input[in_cnt];
  for (int i = 0; i < in_cnt / WORD_SIZE / CONVOLVERS; i++)
    for (int j = 0; j < CONVOLVERS; j++)
      for (int k = 0; k < WORD_SIZE; k++)
        input[(i * CONVOLVERS + j) * WORD_SIZE + k] = dmem[0][j][i][k];

  auto output = new Output[out_cnt];
  Pred pred;

  auto weights = new Weight[in_cnt * out_cnt];
  for (int i = 0; i < in_cnt * out_cnt / WORD_SIZE / CONVOLVERS; i++)
    for (int j = 0; j < CONVOLVERS; j++)
      for (int k = 0; k < WORD_SIZE; k++)
        weights[(i * CONVOLVERS + j) * WORD_SIZE + k] = wt_mem[j][i][k];

  auto norm_coefs = new Norm_coef[out_cnt];
  for (int i = 0; i < out_cnt; i++)
    norm_coefs[i] = kh_mem[i / 4].range(16 * (i % 4) + 15, 16 * (i % 4));

  auto scales = new Scale[out_cnt];
  auto offsets = new Offset[out_cnt];
  for (int i = 0; i < 2 * out_cnt; i++)
  {
    ap_uint<16> value = kh_mem[i / 4].range(16 * (i % 4) + 15, 16 * (i % 4));
    if (i % 2 == 0)
      scales[i / 2](15, 0) = value;
    else
      offsets[i / 2](15, 0) = value;
  }

  if (in_cnt == 8192)
    bin_dense_0(input, output, weights, norm_coefs);
  else if (out_cnt == 1024)
    bin_dense_1(input, output, weights, norm_coefs);
  else
    bin_dense_2(input, pred, weights, scales, offsets);

  if (out_cnt == 1024)
  {
    for (int i = 0; i < out_cnt / WORD_SIZE / CONVOLVERS; i++)
      for (int j = 0; j < CONVOLVERS; j++)
        for (int k = 0; k < WORD_SIZE; k++)
          if (output[(i * CONVOLVERS + j) * WORD_SIZE + k] != dmem[1][j][i][k])
            return true;
  }
  else
    if (dmem[1][0][0].range(3, 0) != pred)
      return true;

  delete[] wt_mem;
  delete[] kh_mem;
  delete[] dmem;
  delete[] input;
  delete[] output;
  delete[] weights;
  delete[] norm_coefs;
  delete[] scales;
  delete[] offsets;

  return false;
}

int bin_dense_tb()
{
  if (bin_dense_tb_core<8192, 1024>())
    return true;
  if (bin_dense_tb_core<1024, 1024>())
    return true;
  if (bin_dense_tb_core<1024, 10>())
    return true;

  printf("bin_dense_tb was successful.\n");
  return false;
}
