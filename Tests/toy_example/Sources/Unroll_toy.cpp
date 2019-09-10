// Copyright 2019 Xilinx, Inc.

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

int Memory_1[1024];
int Memory_2[1024];

void Kernel(int Input[1024], int Output[1024])
{
#pragma HLS array_partition variable = Memory_1 cyclic factor = 256 dim = 1
#pragma HLS array_partition variable = Memory_2 cyclic factor = 256 dim = 1

  Loop_1: for (int i = 0; i < 1024; i++)
  {
    Memory_1[i] = Input[i];
  }

  Loop_2: for (int i = 0; i < 1024; i++)
  {
    int X = Memory_1[i];
    Memory_2[i] = ((((X << 27) | ((unsigned) X >> 5)) + 132) * 39 - 5843) / 3943;
  }

  Loop_3: for (int i = 0; i < 1024; i++)
  {
    Output[i] = Memory_2[i];
  }
}
