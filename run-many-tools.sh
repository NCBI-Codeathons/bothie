#!/bin/bash

#This tool uses the data/data.csv file to locate the queries and samples.
#Then it runs each tool in turn: sourmash, sourmash-protein, cmash, mash-screen, metagraph

./run-many-csv sourmash/conf-basic.yml sourmash data/mock_datasets.csv -o sourmash_out.csv
./run-many-csv sourmash-protein/conf-basic.yml sourmash-protein data/mock_datasets.csv -o sourmash_protein_out.csv
./run-many-csv cmash/conf-basic.yml cmash data/mock_datasets.csv -o cmash-out.csv
./run-many-csv mash/conf-basic.yml mash data/mock_datasets.csv -o mash_out.csv
./run-many-csv metagraph/conf-basic.yml metagraph data/mock_datasets.csv -o metagraph-out.csv
