#!/bin/bash

echo sample,query >> control-HAB.csv

for metagenome in mock_8M_HAB_metagenome.fq.gz SLE_2018_wet.fq.gz NIRL_2018_wet.fq.gz; do

  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Alexandrium_spp.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Amphidinium_carterae_strain_NMCA1314_GCA_019702695v1_ASM1970269v1_genomic.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Aureococcus_anophagefferens_IMG_2507525028.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Aureoumbra_lagunensis_18S_sequence.dnas >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Cochlodinium_polykrikoides_spp.fasta >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Coolia_genes.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Cylindrospermopsis_raciborskii_T3_BCG_saxitoxin_GenBank_DQ787200v1.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Dinophysis_18S_rRNA.dnas >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Dolichospermum_spp.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Fukuyoa_sp_part_rRNA.dnas >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Gambierdiscus_genes.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Karenia_brevis_spp.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Microcystis_aeruginosa.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Microcystis_panniformis.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Ostreopsis_sp_part_rRNA.dnas >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Prorocentrum_spp.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Pseudo-nitzschia_spp_genes.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Pyrodinium_genes.fna >> control-HAB.csv
  echo data/marine/IRL_metagenomes/${metagenome},data/marine/HAB/Sinophysis_sp.dnas >> control-HAB.csv

done
