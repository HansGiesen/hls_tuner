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
    results = self.session.query(resultsdb.models.Result)
    if results.count() == 0:
      return
    with open(self.args.csv_file, 'w') as file:
      keys = results[0].configuration.data.keys() + ['state', 'time']
      writer = csv.DictWriter(file, keys)
      writer.writeheader()
      for result in results:
        row = result.configuration.data
        row['state'] = result.state
        row['time'] = result.time
        writer.writerow(row)

if __name__ == '__main__':
  args = argparser.parse_args()
  sys.exit(MakeConfigTable(args).main())

