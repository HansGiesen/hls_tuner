# Vivado HLS Pragma Tuner

Copyright 2019 Xilinx, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Introduction
This is the pragma tuner for Vivado HLS developed by Hans Giesen, an intern from the University of Pennsylvania, during
his internship in San Jose, CA between 6/5/2019 and 8/23/2019.  For an introduction to the tuner, please consult the
presentation that is located in the `Presentation` directory.

## Copyright
The pragma tuner is based on OpenTuner.  OpenTuner, which is located in the file `OpenTuner/LICENSE.txt`, is governed by
a license that is provided in that same directory.  All other content in the repository is governed by the license in
`HLS_tuner/LICENSE`.

## Installation
The tuner requires Python 2.  Version 2.7.5 worked great for me.  All required packages are described in
`requirements.txt`.  I installed them in a virtual environment using `virtualenv` version 15.1.0.  That should be
sufficient to run the tuner, which is located at `HLS_tuner/hlstuner/hls_tuner.py`.

## Debugging
Debugging is rather time-consuming if you have to wait for builds to complete.  Hence, the tuner has an option
`--use-prebuilt` to reuse an old build, which is located in the `Prebuilt` directory.  The option will replace the
latency with a number from a artificial design space, useful for debugging the surrogate models.

## Graphs
Graphs were plot using the Jupyter that is part of Anaconda 2019.03.  The notebooks can be found in the `Notebook`.
Directories are hardcoded, and some tuner sources have changed since I last ran some of the scripts, so you will likely
encounter some issues when running this code.
