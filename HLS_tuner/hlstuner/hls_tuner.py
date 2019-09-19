#!/usr/bin/env python2
'''
Standalone HLS tuner

Created on Jun 17, 2019
@author: Hans Giesen (giesen@seas.upenn.edu)

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
'''
#######################################################################################################################

import argparse
import logging
import os
import shutil
import sys

tuner_root = sys.path[0]
while True:
  [tuner_root, last_dir] = os.path.split(tuner_root)
  if os.path.isdir(tuner_root + "/.git"):
    break
  if tuner_root == "/":
    raise RuntimeError("Cannot find root of HLS tuner workspace.")

sys.path.insert(0, tuner_root + '/OpenTuner')
sys.path.insert(0, tuner_root + '/HLS_tuner')

from measurement.vivado_hls_interface import VivadoHLSInterface
import search.exhaustivetechniques
import search.bayesianoptimization
import opentuner
from opentuner.measurement.inputmanager import FixedInputManager
from opentuner.search.objective import ThresholdAreaMinimizeTime, MinimizeTime
from opentuner.search.technique import register
from search.bayesianoptimization import BayesianOptimization
from search.combinedmodels import CumulativeModel
from search.simplemodels import SimpleLatencyModel
from search.simplemodels import SimpleLutCountModel, SimpleRegisterCountModel, SimpleDspCountModel, SimpleBramCountModel
from search.gaussianprocess import GaussianProcess

try:
  # python 2.7
  from logging.config import dictConfig
except:
  # python 2.6
  from opentuner.utils.dictconfig import dictConfig

log = logging.getLogger(__name__)

#######################################################################################################################

class HLSTuner:
  """
  Main class of standalone HLS pragma tuner
  """

  def main(self):
    """
    Main function
    """

    argparser = argparse.ArgumentParser(description = 'Standalone HLS tuner')
    argparser.add_argument('src_dir', help = 'Directory with sources', type = os.path.abspath)
    argparser.add_argument('pragma_file', help = 'Pragma specification file', type = os.path.abspath)
    argparser.add_argument('output_dir', help = 'Output directory', type = os.path.abspath)
    argparser.add_argument('--overwrite', action = 'store_true', help = 'Overwrite existing tuning runs')
    argparser.add_argument('--append', action = 'store_true', help = 'Append new tuning run to existing runs')
    argparser.add_argument('--technique', action = 'store', nargs = '*', help = "Search technique",
                           default = ['AUCBanditMetaTechniqueA'])
    argparser.add_argument('--parallelism', type = int, default = 4, help = 'Number of builds running in parallel')
    argparser.add_argument('--use_prebuilt', action = 'store_true', help = 'Use prebuilt kernel (for debugging)')
    argparser.add_argument('--max_luts', type = int, help = 'LUT constraint')
    argparser.add_argument('--max_regs', type = int, help = 'Register constraint')
    argparser.add_argument('--max_dsps', type = int, help = 'DSP constraint')
    argparser.add_argument('--max_brams', type = int, help = 'BRAM constraint')
    argparser.add_argument('--iters', type = int, help = 'Number of test iterations')
    argparser.add_argument('--no_cleanup', action = 'store_true', help = 'Do not remove output of successful builds')
    args = argparser.parse_args()
  
    self.prepare_output_dir(args)

    self.init_logging(args.output_dir)
  
    new_argparser = argparse.ArgumentParser(parents = opentuner.argparsers())
    new_args = new_argparser.parse_args('', args)
    new_args.database = args.output_dir + '/HLS_tuner.db'
    if args.iters is not None:
      new_args.test_limit = args.iters
    
    log.info('Search algorithm: ' + str(new_args.technique))

    if args.max_luts or args.max_regs or args.max_dsps or args.max_brams:
      objective = ThresholdAreaMinimizeTime(args.max_luts, args.max_regs, args.max_dsps, args.max_brams)
    else:
      objective = MinimizeTime()
    input_manager = FixedInputManager()
    VivadoHLSInterface.main(new_args, tuner_root = tuner_root, objective = objective, input_manager = input_manager)


  def prepare_output_dir(self, args):
    """
    Prepare the output directory.
    """

    if os.path.isdir(args.output_dir):
      if args.overwrite:
        if args.append:
          raise RuntimeError("The --append and --overwrite command line arguments cannot be used at the same time.")
        shutil.rmtree(args.output_dir)
        os.makedirs(args.output_dir)
      elif not args.append:
        raise RuntimeError("Old results were found.  Explicitly confirm appending the results using the --append" \
                           " command line arguments.")
    else:
      os.makedirs(args.output_dir)


  def init_logging(self, output_dir):
    """
    Initialize the logging.
    """

    dictConfig({
      'version': 1,
      'disable_existing_loggers': False,
      'formatters': {'console': {'format': '[%(relativeCreated)6.0fs] '
                                           '%(levelname)7s %(name)s: '
                                           '%(message)s'},
                     'file': {'format': '[%(asctime)-15s] '
                                        '%(levelname)7s %(name)s: '
                                        '%(message)s '
                                        '@%(filename)s:%(lineno)d'}},
      'handlers': {'console': {'class': 'logging.StreamHandler',
                               'formatter': 'console',
                               'level': 'INFO'},
                   'file': {'class': 'logging.FileHandler',
                            'filename': output_dir + '/HLS_tuner.log',
                            'formatter': 'file',
                            'level': 'INFO'}},
      'loggers': {'': {'handlers': ['console', 'file'],
                       'level': 'INFO',
                       'propagate': True}}})

    # Avoid initializing the logging again.
    opentuner.tuningrunmain.init_logging = lambda: None

#######################################################################################################################

register(BayesianOptimization([CumulativeModel(SimpleLatencyModel(), GaussianProcess(), "run_time"),
                               CumulativeModel(SimpleLutCountModel(), GaussianProcess(), "luts"),
                               CumulativeModel(SimpleRegisterCountModel(), GaussianProcess(), "regs"),
                               CumulativeModel(SimpleDspCountModel(), GaussianProcess(), "dsps"),
                               CumulativeModel(SimpleBramCountModel(), GaussianProcess(), "brams")],
                               name = "CombinedModel"))

#######################################################################################################################

if __name__ == '__main__':
  HLSTuner().main()
