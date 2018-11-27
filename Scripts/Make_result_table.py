#!/usr/bin/env python

import argparse
import csv
import os
import sys

# Locate the root directory of the HLS tuner repository.
tuner_root = sys.path[0]
while True:
  [tuner_root, last_dir] = os.path.split(tuner_root)
  if os.path.isdir(tuner_root + "/.git"):
    break
  if tuner_root == "/":
    raise RuntimeError("Cannot find root of HLS tuner workspace.")

# Add the OpenTuner repository to the search path for importing modules.
sys.path.insert(0, tuner_root + '/OpenTuner')

import opentuner
from opentuner import resultsdb

argparser = argparse.ArgumentParser()
argparser.add_argument('database', help = "file with OpenTuner database")
argparser.add_argument('csv_file', help = "output .csv file")

class MakeConfigTable(object):
  def __init__(self, args):
    self.args = args
    try:
      self.engine, self.session = resultsdb.connect('sqlite:///' + args.database)
    except:
      raise RuntimeError("Database could not be opened.")

  def main(self):
    desired_results = self.session.query(resultsdb.models.DesiredResult)
    if desired_results.count() == 0:
      return
    id_table = {}
    for desired_result in desired_results:
      id_table[desired_result.result_id] = desired_result.id
    results = self.session.query(resultsdb.models.Result)
    if results.count() == 0:
      return
    with open(self.args.csv_file, 'w') as file:
      keys = ['id'] + results[0].configuration.data.keys() + \
        ['state', 'presynth_time', 'synth_time', 'impl_time', 'run_time']
      writer = csv.DictWriter(file, keys)
      writer.writeheader()
      for result in results:
        row = result.configuration.data
        row['id'] = id_table[result.id]
        row['state'] = result.state
        row['presynth_time'] = result.presynth_time
        row['synth_time'] = result.synth_time
        row['impl_time'] = result.impl_time
        row['run_time'] = result.run_time
        writer.writerow(row)

if __name__ == '__main__':
  args = argparser.parse_args()
  sys.exit(MakeConfigTable(args).main())

