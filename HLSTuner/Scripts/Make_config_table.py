#!/usr/bin/env python

import sys
import csv
import argparse
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
    cfgs = self.session.query(resultsdb.models.Configuration)
    with open(self.args.csv_file, 'w') as file:
      writer = csv.DictWriter(file, cfgs[0].data.keys())
      writer.writeheader()
      for cfg in cfgs:
        writer.writerow(cfg.data)

if __name__ == '__main__':
  args = argparser.parse_args()
  sys.exit(MakeConfigTable(args).main())

