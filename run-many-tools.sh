#!/bin/bash

#This tool uses the data/data.csv file to locate the queries and samples.
#Then it runs each tool in turn: sourmash, sourmash-protein, cmash, mash-screen, metagraph

set -x
set -e

for tool in mash sourmash sourmash-protein
do
    ./run-many-csv ${tool}/conf-controls.yml $tool data/controls-HAB.csv -o controls-HAB-${tool}.csv
done

echo success!
