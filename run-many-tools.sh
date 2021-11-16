#! /bin/bash
set -x
set -e

for tool in sourmash sourmash-protein mash cmash metagraph
do
    ./run-many-csv ${tool}/conf-basic.yml $tool data/data-small.csv -o test-${tool}.csv
done

echo success!
