#!/bin/bash

echo sample,query >> BGC-IRL.csv
for metagenome in `ls *fq.gz`; do
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/BGC/Cylindrospermopsis_raciborskii_T3_BCG_saxitoxin_GenBank_DQ787200v1.fna >> BGC-IRL.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/BGC/Dolichospermum_circinale_AWQC131C_saxitoxin_BGC_GenBank_DQ787201v1.fna >> BGC-IRL.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/BGC/Microcystis_aeruginosa_PCC_7806_microcystin_BGC_GenBank_AF183408v1.fna >> BGC-IRL.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/BGC/Pseudo-nitzschia_multiseries_isolate_15091C3_domoic_acid_BGC_GenBank_MH202990v1.fna >> BGC-IRL.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/BGC/Plima_partLSU.fasta >> BGC-IRL.csv
done
