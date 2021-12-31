#!/bin/bash

#This tool uses the data/data.csv file to locate the queries and samples.
#Then it runs each tool in turn: sourmash, sourmash-protein, cmash, mash-screen, metagraph

set -x
set -e

for tool in mash sourmash-protein
do
    ./run-many-csv ${tool}/conf-IRL.yml $tool data/HAB-IRL.csv -o HAB-IRL-${tool}.csv
done

echo success!
