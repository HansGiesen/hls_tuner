#include <ap_int.h>

typedef ap_uint<1> Input;
typedef ap_uint<1> Output;
typedef ap_int<16> Sum;
typedef ap_uint<1> Weight;
typedef ap_int<16> Norm_coef;
typedef ap_uint<4> Pred;
typedef ap_fixed<16, 2> Scale;
typedef ap_fixed<16, 4> Offset;

template <unsigned in_cnt, unsigned out_cnt>
  void bin_dense(Input input[in_cnt], Output output[out_cnt], Weight weights[in_cnt * out_cnt],
                 Norm_coef norm_coefs[out_cnt])
{
  for (unsigned out_idx = 0; out_idx < out_cnt; out_idx++)
  {
    Sum sum = 0;
    for (unsigned in_idx = 0; in_idx < in_cnt; in_idx++)
      sum += weights[out_idx * in_cnt + in_idx] ^ input[in_idx];

    Sum norm_sum = in_cnt - 2 * sum;
    output[out_idx] = norm_sum < norm_coefs[out_idx];

    printf("bin_dense: %s %s %u\n", norm_sum.to_string().c_str(), norm_coefs[out_idx].to_string().c_str(), output[out_idx].to_uint());
  }
}

void bin_dense_0(Input input[8192], Output output[1024], Weight weights[8192 * 1024], Norm_coef norm_coefs[1024])
{
  bin_dense<8192, 1024>(input, output, weights, norm_coefs);
}

void bin_dense_1(Input input[1024], Output output[1024], Weight weights[1024 * 1024], Norm_coef norm_coefs[1024])
{
  bin_dense<1024, 1024>(input, output, weights, norm_coefs);
}

void bin_dense_2(Input input[1024], Pred & pred, Weight weights[1024 * 10], Scale scales[10], Offset offsets[10])
{
  ap_fixed<16, 12> best;
  for (unsigned out_idx = 0; out_idx < 10; out_idx++)
  {
    Sum sum = 0;
    for (unsigned in_idx = 0; in_idx < 1024; in_idx++)
      sum += weights[out_idx * 1024 + in_idx] ^ input[in_idx];

    Sum norm_sum = 1024 - 2 * sum;
    ap_fixed<20, 10> output = scales[out_idx] * norm_sum + offsets[out_idx];

    if (out_idx == 0 || output > best) {
      pred = out_idx;
      best = output;
    }

    printf("bin_dense: %s %s %s %s %s %s\n", norm_sum.to_string().c_str(), scales[out_idx].to_string().c_str(),
           offsets[out_idx].to_string().c_str(), output.to_string().c_str(), pred.to_string().c_str(),
           best.to_string().c_str());
  }
}
