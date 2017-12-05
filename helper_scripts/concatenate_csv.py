import os
import argparse
import csv

# parse the arguments
parser = argparse.ArgumentParser(description='Concatenate all the csv files '
                                             'in the directory.')
parser.add_argument('--dir', action='store', required=True)
parser.add_argument('--output', action='store', required=True)
args = parser.parse_args()

# delete the output file in the source directory
os.remove(os.path.join(args.dir, args.output))
# get the content of the directory
dir_content = os.listdir(args.dir)

header_written = False
with open(os.path.join(args.dir, args.output), 'w', encoding='utf8') as outfile:
    out_writer = csv.writer(outfile)
    for file_ in dir_content:
        if file_[-3:] == 'csv':  # only use csv files
            print('Current file: {0}'.format(file_))
            with open(os.path.join(args.dir, file_), 'r',
                      encoding='utf8') as csvfile:
                reader = csv.reader(csvfile)
                if header_written:  # skip header
                    next(reader)
                for row in reader:
                    out_writer.writerow(row)
                header_written = True
