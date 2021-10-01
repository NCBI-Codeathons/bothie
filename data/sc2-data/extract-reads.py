#! /usr/bin/env python
import screed
import sys
import csv
import os


retrieve = set()
with open('95p-reads.presence.csv', newline='') as fp:
    r = csv.DictReader(fp)
    for row in r:
        if row['present'] == 'yes':
            retrieve.add(row['query'])

print(len(retrieve))

n_found = 0
output_dir = 'sc2_queries_across_identity/95p/ERR4080688.singleton-fastq'
for record in screed.open('sc2_queries_across_identity/95p/ERR4080688.subsample.fasta'):
    name = record.name
    name = name.split()[0]
    if name in retrieve:
        n_found += 1

        output_name = os.path.join(output_dir, f'ERR4080688.{name}.fq')
        print(output_name)
        with open(output_name, 'wt') as fp:
            fp.write(f">{record.name}\n{record.sequence}\n")

    if n_found > 20:
        break
