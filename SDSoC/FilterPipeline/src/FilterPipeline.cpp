#include "FilterPipeline.h"

#include <hls_stream.h>

#pragma SDS data mem_attribute(iInput:PHYSICAL_CONTIGUOUS, oOutput:PHYSICAL_CONTIGUOUS)
#pragma SDS data access_pattern(iInput:SEQUENTIAL, oOutput:SEQUENTIAL)
void Filter_hor_HW(const matrix_type iInput[MATRIX_HEIGHT * MATRIX_WIDTH],
    matrix_type oOutput[MATRIX_HEIGHT * MATRIX_WIDTH])
{
  hls::stream<matrix_type> Input;
  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
    {
PRAGMA(HLS pipeline ii=INIT_INTERVAL_HOR_1)
      Input.write(iInput[Y * MATRIX_WIDTH + X]);
    }

#pragma HLS DATAFLOW

  hls::stream<matrix_type> Output;
  matrix_type Buffer[FILTER_LENGTH - 1];
  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
    for (int X = 0; X < MATRIX_WIDTH + FILTER_LENGTH - 1; X++)
    {
PRAGMA(HLS pipeline ii=INIT_INTERVAL_HOR_2)

      matrix_type Input_value = X < MATRIX_WIDTH ? Input.read() : 0;

      matrix_type Sum = 0;
      for (int Tap = 0; Tap < FILTER_LENGTH; Tap++)
      {
        matrix_type Value = Tap < FILTER_LENGTH - 1 ? Buffer[Tap] : Input_value;

        Sum += Value;

        if (Tap > 0)
          Buffer[Tap - 1] = Value;
      }

      if (X >= FILTER_LENGTH - 1)
        Output.write(Sum / FILTER_LENGTH);
    }

#pragma HLS DATAFLOW

  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
      oOutput[Y * MATRIX_WIDTH + X] = Output.read();
}

#pragma SDS data mem_attribute(iInput:PHYSICAL_CONTIGUOUS, oOutput:PHYSICAL_CONTIGUOUS)
#pragma SDS data access_pattern(iInput:SEQUENTIAL, oOutput:SEQUENTIAL)
void Filter_ver_HW(const matrix_type iInput[MATRIX_HEIGHT * MATRIX_WIDTH],
    matrix_type oOutput[MATRIX_HEIGHT * MATRIX_WIDTH])
{
  hls::stream<matrix_type> Input;
  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
    {
PRAGMA(HLS pipeline ii=INIT_INTERVAL_VER_1)
      Input.write(iInput[Y * MATRIX_WIDTH + X]);
    }

#pragma HLS DATAFLOW

  hls::stream<matrix_type> Output;
  matrix_type Buffer[FILTER_LENGTH - 1][MATRIX_WIDTH];
  for (int Y = 0; Y < MATRIX_HEIGHT + FILTER_LENGTH - 1; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
    {
#pragma HLS DEPENDENCE variable=Buffer inter false
PRAGMA(HLS array_partition variable=Buffer dim=1 cyclic factor=ARRAY_PARTITION_FACTOR)
PRAGMA(HLS pipeline ii=INIT_INTERVAL_VER_2)

      matrix_type Input_value = Y < MATRIX_WIDTH ? Input.read() : 0;

      matrix_type Sum = 0;
      for (int Tap = 0; Tap < FILTER_LENGTH; Tap++)
      {
        matrix_type Value = Tap < FILTER_LENGTH - 1 ? Buffer[Tap][X] : Input_value;

        Sum += Value;

        if (Tap > 0)
          Buffer[Tap - 1][X] = Value;
      }

      if (Y >= FILTER_LENGTH - 1)
        Output.write(Sum / FILTER_LENGTH);
    }

#pragma HLS DATAFLOW

  for (int Y = 0; Y < MATRIX_HEIGHT; Y++)
    for (int X = 0; X < MATRIX_WIDTH; X++)
      oOutput[Y * MATRIX_WIDTH + X] = Output.read();
}
