#!/bin/bash

#This tool uses the data/data.csv file to locate the queries and samples.
#Then it runs each tool in turn: sourmash, sourmash-protein, cmash, mash-screen, metagraph

set -x
set -e

for tool in sourmash mash cmash metagraph sourmash-protein
do
    ./run-many-csv ${tool}/conf-HAB.yml $tool data/BGC.csv -o BGC-${tool}.csv
done

echo success!
