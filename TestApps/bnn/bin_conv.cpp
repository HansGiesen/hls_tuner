#include <ap_int.h>

const int NORM_COEF_WIDTH = 16;
const int WIN_HEIGHT = 3;
const int WIN_WIDTH = 3;

typedef ap_uint<1> Feature;
typedef ap_uint<1> Weight;
typedef ap_int<NORM_COEF_WIDTH> Norm_coef;

template<unsigned in_fmap_cnt, unsigned out_fmap_cnt, unsigned in_fmap_height, unsigned in_fmap_width,
         unsigned out_fmap_height, unsigned out_fmap_width>
  void bin_conv(Feature input[in_fmap_cnt][in_fmap_height][in_fmap_width],
                Feature output[out_fmap_cnt][out_fmap_height][out_fmap_width],
                Weight weights[out_fmap_cnt][in_fmap_cnt][WIN_HEIGHT][WIN_WIDTH],
                Norm_coef norm_coefs[out_fmap_cnt])
{
  int pool_height = in_fmap_height / out_fmap_height;
  int pool_width = in_fmap_width / out_fmap_width;
  for (int out_fmap = 0; out_fmap < out_fmap_cnt; out_fmap++)
    for (int out_fmap_row = 0; out_fmap_row < out_fmap_height; out_fmap_row++)
      for (int out_fmap_col = 0; out_fmap_col < out_fmap_width; out_fmap_col++)
      {
        unsigned result = 1;
        for (int pool_row = 0; pool_row < pool_height; pool_row++)
          for (int pool_col = 0; pool_col < pool_width; pool_col++)
          {
            int sum = 0;
            for (int in_fmap = 0; in_fmap < in_fmap_cnt; in_fmap++)
              for (int pix_row = -(WIN_HEIGHT - 1) / 2; pix_row <= (WIN_HEIGHT - 1) / 2; pix_row++)
                for (int pix_col = -(WIN_WIDTH - 1) / 2; pix_col <= (WIN_WIDTH - 1) / 2; pix_col++)
                {
                  if (out_fmap == 0 && in_fmap == 0 && out_fmap_row == 3 && pix_row == -1 && pix_col == -1)
//                  if (out_fmap == 44 && out_fmap_row == 3 && out_fmap_col == 2 && pix_row == -1 && pix_col == -1)
                    printf("bin_conv: in_fmap: %i\n", in_fmap);
                  int in_fmap_row = pool_height * out_fmap_row + pool_row;
                  int in_fmap_col = pool_width * out_fmap_col + pool_col;
                  int feature;
                  if (in_fmap_row + pix_row >= 0 && in_fmap_row + pix_row < in_fmap_height &&
                      in_fmap_col + pix_col >= 0 && in_fmap_col + pix_col < in_fmap_width)
                    feature = input[in_fmap][in_fmap_row + pix_row][in_fmap_col + pix_col] ? -1 : 1;
                  else
                    feature = 0;
                  int weight = weights[out_fmap][in_fmap][pix_row + (WIN_HEIGHT - 1) / 2][pix_col + (WIN_WIDTH - 1) / 2].to_int();
                  if (out_fmap == 0 && in_fmap == 0 && out_fmap_row == 3)
//                  if (out_fmap == 44 && out_fmap_row == 1 && out_fmap_col == 1)
                    printf("bin_conv:   %i %i: %i %i\n", pix_row + 1, pix_col + 1, feature, weight);
                  sum += weight ? -feature : feature;
//                  printf("bin_conv: (%i %i %i %i %i %i) %i %i %i\n", out_fmap, 2 * out_fmap_row + pool_row, 2 * out_fmap_col + pool_col, in_fmap, pix_row + 1, pix_col + 1, feature, weight, sum);
                }
            result &= sum < norm_coefs[out_fmap];
          }
        output[out_fmap][out_fmap_row][out_fmap_col] = result;
      }
}

void bin_conv_0(Feature input[128][32][32], Feature output[128][16][16], Weight weights[128][128][3][3],
                Norm_coef norm_coefs[128])
{
  bin_conv<128, 128, 32, 32, 16, 16>(input, output, weights, norm_coefs);
}

void bin_conv_1(Feature input[128][16][16], Feature output[256][16][16], Weight weights[256][128][3][3],
                Norm_coef norm_coefs[128])
{
  bin_conv<128, 256, 16, 16, 16, 16>(input, output, weights, norm_coefs);
}

void bin_conv_2(Feature input[256][16][16], Feature output[256][8][8], Weight weights[256][256][3][3],
                Norm_coef norm_coefs[256])
{
  bin_conv<256, 256, 16, 16, 8, 8>(input, output, weights, norm_coefs);
}

void bin_conv_3(Feature input[256][8][8], Feature output[512][8][8], Weight weights[512][256][3][3],
                Norm_coef norm_coefs[256])
{
  bin_conv<256, 512, 8, 8, 8, 8>(input, output, weights, norm_coefs);
}

void bin_conv_4(Feature input[512][8][8], Feature output[512][4][4], Weight weights[512][512][3][3],
                Norm_coef norm_coefs[512])
{
  bin_conv<512, 512, 8, 8, 4, 4>(input, output, weights, norm_coefs);
}

