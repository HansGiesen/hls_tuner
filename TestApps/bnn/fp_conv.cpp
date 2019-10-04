#include <ap_int.h>
#include <ap_fixed.h>

const int FMAP_CNT = 128;
const int FMAP_HEIGHT = 32;
const int FMAP_WIDTH = 32;
const int COLOR_CNT = 3;
const int WIN_HEIGHT = 3;
const int WIN_WIDTH = 3;

const int PIXEL_WIDTH = 20;
const int PIXEL_INT_WIDTH = 2;
const int SUM_WIDTH = 24;
const int SUM_INT_WIDTH = 6;
const int FEATURE_WIDTH = 1;
const int WEIGHT_WIDTH = 1;
const int NORM_COEF_WIDTH = 16;
const int NORM_COEF_INT_WIDTH = 4;

typedef ap_fixed<PIXEL_WIDTH, PIXEL_INT_WIDTH, AP_RND> Pixel;
typedef ap_uint<FEATURE_WIDTH> Feature;
typedef ap_fixed<SUM_WIDTH, SUM_INT_WIDTH, AP_RND> Sum;
typedef ap_uint<WEIGHT_WIDTH> Weight;
typedef ap_fixed<NORM_COEF_WIDTH, NORM_COEF_INT_WIDTH> Norm_coef;

void fp_conv(Pixel input[FMAP_HEIGHT][FMAP_WIDTH][COLOR_CNT],
             Feature output[FMAP_CNT][FMAP_HEIGHT][FMAP_WIDTH],
             Weight weights[FMAP_CNT][COLOR_CNT][WIN_HEIGHT][WIN_WIDTH],
             Norm_coef norm_coefs[FMAP_CNT])
{
  for (int fmap = 0; fmap < FMAP_CNT; fmap++)
    for (int fmap_row = 0; fmap_row < FMAP_HEIGHT; fmap_row++)
      for (int fmap_col = 0; fmap_col < FMAP_WIDTH; fmap_col++)
      {
        Sum sum = 0;
        for (int color = 0; color < COLOR_CNT; color++)
          for (int pix_row = -(WIN_HEIGHT - 1) / 2; pix_row <= (WIN_HEIGHT - 1) / 2; pix_row++)
            for (int pix_col = -(WIN_WIDTH - 1) / 2; pix_col <= (WIN_WIDTH - 1) / 2; pix_col++)
            {
              Pixel pixel;
              if (fmap_row + pix_row >= 0 && fmap_row + pix_row < FMAP_HEIGHT &&
                  fmap_col + pix_col >= 0 && fmap_col + pix_col < FMAP_WIDTH)
                pixel = input[fmap_row + pix_row][fmap_col + pix_col][color];
              else
                pixel = 0;
              unsigned weight = weights[fmap][color][pix_row + (WIN_HEIGHT - 1) / 2][pix_col + (WIN_HEIGHT - 1) / 2].to_uint();
              Pixel prod = weight ? static_cast<Pixel>(-pixel) : pixel;
              sum += prod;
              printf("fp_conv: %s %i %s %s\n", pixel.to_string().c_str(), -(int) weight, prod.to_string().c_str(), sum.to_string().c_str());
            }

        output[fmap][fmap_row][fmap_col] = sum < norm_coefs[fmap];
        printf("fp_conv: %s %s %u\n", sum.to_string().c_str(), norm_coefs[fmap].to_string().c_str(), output[fmap][fmap_row][fmap_col].to_uint());
      }
}
