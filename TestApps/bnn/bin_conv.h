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
                  int in_fmap_row = pool_height * out_fmap_row + pool_row;
                  int in_fmap_col = pool_width * out_fmap_col + pool_col;
                  int feature;
                  if (in_fmap_row + pix_row >= 0 && in_fmap_row + pix_row < in_fmap_height &&
                      in_fmap_col + pix_col >= 0 && in_fmap_col + pix_col < in_fmap_width)
                    feature = input[in_fmap][in_fmap_row + pix_row][in_fmap_col + pix_col] ? -1 : 1;
                  else
                    feature = 0;
                  int weight = weights[out_fmap][in_fmap][pix_row + (WIN_HEIGHT - 1) / 2][pix_col + (WIN_WIDTH - 1) / 2].to_int();
                  sum += weight ? -feature : feature;
//                  printf("bin_conv: (%i %i %i %i %i %i) %i %i %i\n", out_fmap, 2 * out_fmap_row + pool_row, 2 * out_fmap_col + pool_col, in_fmap, pix_row + 1, pix_col + 1, feature, weight, sum);
                }
            result &= sum < norm_coefs[out_fmap];
          }
        output[out_fmap][out_fmap_row][out_fmap_col] = result;
      }
}

