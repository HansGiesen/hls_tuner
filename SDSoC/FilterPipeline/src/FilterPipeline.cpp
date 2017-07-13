#include "hls_tuner.h"

#ifdef __SDSCC__
#include <sds_lib.h>
#include <hls_stream.h>
#endif

#include <iostream>
#include <cstdlib>

#ifndef UNROLL_FACTOR_OUTER_HOR
#define UNROLL_FACTOR_OUTER_HOR 1
#endif

#ifndef UNROLL_FACTOR_INNER_HOR
#define UNROLL_FACTOR_INNER_HOR 1
#endif

#ifndef UNROLL_FACTOR_OUTER_VER
#define UNROLL_FACTOR_OUTER_VER 1
#endif

#ifndef UNROLL_FACTOR_INNER_VER
#define UNROLL_FACTOR_INNER_VER 1
#endif

#ifndef UNROLL_SKIP_CHECK_OUTER_HOR
#define UNROLL_SKIP_CHECK_OUTER_HOR
#endif

#ifndef UNROLL_SKIP_CHECK_INNER_HOR
#define UNROLL_SKIP_CHECK_INNER_HOR
#endif

#ifndef UNROLL_SKIP_CHECK_OUTER_VER
#define UNROLL_SKIP_CHECK_OUTER_VER
#endif

#ifndef UNROLL_SKIP_CHECK_INNER_VER
#define UNROLL_SKIP_CHECK_INNER_VER
#endif

#ifndef INIT_INTERVAL_HOR
#define INIT_INTERVAL_HOR 16
#endif

#ifndef INIT_INTERVAL_VER
#define INIT_INTERVAL_VER 16
#endif

#define MATRIX_WIDTH  (128)
#define MATRIX_HEIGHT (128)

#define FILTER_LENGTH (16)

typedef int matrix_type;

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
    exit(EXIT_FAILURE);
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

#pragma SDS data mem_attribute(iInput:PHYSICAL_CONTIGUOUS, oOutput:PHYSICAL_CONTIGUOUS)
#pragma SDS data access_pattern(iInput:SEQUENTIAL, oOutput:SEQUENTIAL)
void Filter_hor_HW(const matrix_type iInput[MATRIX_HEIGHT * MATRIX_WIDTH],
    matrix_type oOutput[MATRIX_HEIGHT * MATRIX_WIDTH])
{
  hls::stream<matrix_type> Input;
  for (int Y = 0; Y < MATRIX_HEIGHT + FILTER_LENGTH - 1; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
      Input.write(iInput[Y * MATRIX_WIDTH + X]);

#pragma HLS DATAFLOW

  hls::stream<matrix_type> Output;
  matrix_type Buffer[FILTER_LENGTH - 1];
  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
  {
    PRAGMA(HLS unroll factor=UNROLL_FACTOR_OUTER_HOR UNROLL_SKIP_CHECK_OUTER_HOR)
    for (int X = 0; X < MATRIX_WIDTH + FILTER_LENGTH - 1; X++)
    {
      PRAGMA(HLS unroll factor=UNROLL_FACTOR_INNER_HOR UNROLL_SKIP_CHECK_INNER_HOR)
      PRAGMA(HLS pipeline ii=INIT_INTERVAL_HOR)

      matrix_type Sum = 0;
      for (int Tap = 0; Tap < FILTER_LENGTH; Tap++)
      {
        matrix_type Value = 0;
        if (Tap < FILTER_LENGTH - 1)
          Value = Buffer[Tap];
        else if (X < MATRIX_WIDTH)
          Value = Input.read();

        Sum += Value;

        if (Tap > 0)
          Buffer[Tap - 1] = Value;
      }

      if (X >= FILTER_LENGTH - 1)
        Output.write(Sum / FILTER_LENGTH);
    }
  }

#pragma HLS DATAFLOW

  for (int Y = 0; Y < MATRIX_HEIGHT + FILTER_LENGTH - 1; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
      oOutput[Y * MATRIX_WIDTH + X] = Output.read();
}

#pragma SDS data mem_attribute(iInput:PHYSICAL_CONTIGUOUS, oOutput:PHYSICAL_CONTIGUOUS)
#pragma SDS data access_pattern(iInput:SEQUENTIAL, oOutput:SEQUENTIAL)
void Filter_ver_HW(const matrix_type iInput[MATRIX_HEIGHT * MATRIX_WIDTH],
    matrix_type oOutput[MATRIX_HEIGHT * MATRIX_WIDTH])
{
  hls::stream<matrix_type> Input;
  for (int Y = 0; Y < MATRIX_HEIGHT + FILTER_LENGTH - 1; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
      Input.write(iInput[Y * MATRIX_WIDTH + X]);

#pragma HLS DATAFLOW

  hls::stream<matrix_type> Output;
  matrix_type Buffer[FILTER_LENGTH - 1][MATRIX_WIDTH];
  for (int Y = 0; Y < MATRIX_HEIGHT + FILTER_LENGTH - 1; Y++)
  {
    PRAGMA(HLS unroll factor=UNROLL_FACTOR_OUTER_VER UNROLL_SKIP_CHECK_OUTER_VER)
    for (int X = 0; X < MATRIX_WIDTH; X++)
    {
#pragma HLS DEPENDENCE variable=Buffer inter false
      PRAGMA(HLS unroll factor=UNROLL_FACTOR_INNER_VER UNROLL_SKIP_CHECK_INNER_VER)
      PRAGMA(HLS pipeline ii=INIT_INTERVAL_VER)

      matrix_type Sum = 0;
      for (int Tap = 0; Tap < FILTER_LENGTH; Tap++)
      {
        matrix_type Value = 0;
        if (Tap < FILTER_LENGTH - 1)
          Value = Buffer[Tap][X];
        else if (Y < MATRIX_HEIGHT)
          Value = Input.read();

        Sum += Value;

        if (Tap > 0)
          Buffer[Tap - 1][X] = Value;
      }

      if (Y >= FILTER_LENGTH - 1)
        Output.write(Sum / FILTER_LENGTH);
    }
  }

  #pragma HLS DATAFLOW

  for (int Y = 0; Y < MATRIX_HEIGHT + FILTER_LENGTH - 1; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
      oOutput[Y * MATRIX_WIDTH + X] = Output.read();
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

  Destroy_matrix(Input_matrix);
  Destroy_matrix(Temp_matrix_SW);
  Destroy_matrix(Temp_matrix_HW);
  Destroy_matrix(Output_matrix_SW);
  Destroy_matrix(Output_matrix_HW);
  return 0;
}
