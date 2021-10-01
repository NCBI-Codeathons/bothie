#! /bin/bash
set -e
set -x

# gut metagenomes
snakemake -j 4 -p --config name=nmdc:mga08j52
snakemake -j 4 -p --config name=nmdc:mga0j795

# marine metagenomes
snakemake -j 4 -p --config name=nmdc:mga02197
snakemake -j 4 -p --config name=nmdc:mga0qh70

# soil metagenome
# NOTE: these samples have an atypical naming scheme so can't do this with
# snakemake :eyeroll: :)
#aws s3api get-object --bucket psss-metagenomics-codeathon-data            --key soil/1781_100342/assembly/assembly_contigs.fna assembly/1781_100342_contigs.fna
#aws s3api get-object --bucket psss-metagenomics-codeathon-data            --key soil/1781_100342/qa/1781_100342.filtered.fastq.gz qa/1781_100342_filtered.fastq.gz
