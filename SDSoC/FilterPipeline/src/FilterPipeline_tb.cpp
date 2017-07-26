#include "FilterPipeline.h"

#ifdef __SDSCC__
#include <sds_lib.h>
#endif

#include <iostream>
#include <cstdlib>

enum direction
{
  DIRECTION_HORIZONTAL, DIRECTION_VERTICAL
};

matrix_type * Create_matrix(void)
{
  matrix_type * Matrix = static_cast<matrix_type *>(
#ifdef __SDSCC__
      sds_alloc(MATRIX_WIDTH * MATRIX_HEIGHT * sizeof(int)));
#else
      malloc(MATRIX_WIDTH * MATRIX_HEIGHT * sizeof(int)));
#endif
  if (Matrix == NULL)
  {
    std::cerr << "Could not allocate matrix." << std::endl;
    exit (EXIT_FAILURE);
  }

  return Matrix;
}

void Destroy_matrix(matrix_type * iMatrix)
{
#ifdef __SDSCC__
  sds_free(iMatrix);
#else
  free(iMatrix);
#endif
}

void Randomize_matrix(matrix_type * oMatrix)
{
  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
    for (int X = 0; X < MATRIX_HEIGHT; X++)
      oMatrix[Y * MATRIX_WIDTH + X] = rand();
}

void Filter_SW(const matrix_type iInput[MATRIX_HEIGHT * MATRIX_WIDTH],
    matrix_type oOutput[MATRIX_HEIGHT * MATRIX_WIDTH], direction iDirection)
{
  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
    for (int X = 0; X < MATRIX_HEIGHT; X++)
    {
      int Sum = 0;
      for (int Tap = 0; Tap < FILTER_LENGTH; Tap++)
        if (iDirection == DIRECTION_HORIZONTAL)
          Sum += (
              X + Tap < MATRIX_WIDTH ? iInput[Y * MATRIX_WIDTH + X + Tap] : 0);
        else
          Sum +=
              (Y + Tap < MATRIX_HEIGHT ?
                  iInput[(Y + Tap) * MATRIX_WIDTH + X] : 0);
      oOutput[Y * MATRIX_WIDTH + X] = Sum / FILTER_LENGTH;
    }
}

void Show_matrix(const matrix_type * iMatrix)
{
  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
  {
    for (int X = 0; X < MATRIX_HEIGHT; X++)
    {
      if (X > 0) std::cout << ' ';
      std::cout << iMatrix[Y * MATRIX_WIDTH + X];
    }
    std::cout << std::endl;
  }
}

bool Compare_matrices(const matrix_type * iMatrix_1,
    const matrix_type * iMatrix_2)
{
  bool Equal = true;
  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
    for (int X = 0; X < MATRIX_HEIGHT; X++)
      if (iMatrix_1[Y * MATRIX_WIDTH + X] != iMatrix_2[Y * MATRIX_WIDTH + X])
        Equal = false;
  return Equal;
}

int main()
{
  matrix_type * Input_matrix = Create_matrix();
  matrix_type * Temp_matrix_SW = Create_matrix();
  matrix_type * Temp_matrix_HW = Create_matrix();
  matrix_type * Output_matrix_SW = Create_matrix();
  matrix_type * Output_matrix_HW = Create_matrix();

  Randomize_matrix(Input_matrix);

  Filter_SW(Input_matrix, Temp_matrix_SW, DIRECTION_HORIZONTAL);
  Filter_SW(Temp_matrix_SW, Output_matrix_SW, DIRECTION_VERTICAL);

  Filter_hor_HW(Input_matrix, Temp_matrix_HW);
  Filter_ver_HW(Temp_matrix_HW, Output_matrix_HW);

  std::cout << "Input\n";
  Show_matrix(Input_matrix);
  std::cout << "Output of software implementation\n";
  Show_matrix(Output_matrix_SW);
  std::cout << "Output of hardware implementation\n";
  Show_matrix(Output_matrix_HW);

  bool Equal = Compare_matrices(Output_matrix_SW, Output_matrix_HW);

  Destroy_matrix(Input_matrix);
  Destroy_matrix(Temp_matrix_SW);
  Destroy_matrix(Temp_matrix_HW);
  Destroy_matrix(Output_matrix_SW);
  Destroy_matrix(Output_matrix_HW);

  if (Equal)
  {
    std::cout << "TEST PASSED" << std::endl;
    return 0;
  }
  else
  {
    std::cout << "TEST FAILED" << std::endl;
    return 1;
  }
}
