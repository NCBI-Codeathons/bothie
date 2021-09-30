# bothie /ˈbäTHē/

![Bothy](img/bothy.jpg)


## What is Metagenomic Search?
Metagenomic search is to query a gene or genome of interest against a metagenome in order to determine its presence or absence.

## What's the problem?
The Sequence Read Archive (SRA) is exponentially growing since Next Generation Sequencing has become more affordable. Microbial environments are being explored on a genomic level like never before. In order to discover genes or genomes of interest in this vast nucleotide database, high throughput methods need to be developed.

It is important to know if a microbe is present in a metagenome.
If we have a set of microbes and we want to know which metagenomes we should look at, we can screen the sequence read archive (SRA) for genes or genomes and there is need for a tool that can do the high throughput screening.

## Why should we solve it?
These unexplored metagenomes contain novel unculturable microbes whose function within microbial systems is unknown. Identifying metagenomes that contain specific microbes will be helpful in exloring their potential to produce interesting compounds (e.g. novel antibiotics, medicines, toxins) and and their role in geochemical cycling (e.g. nitrogen and carbon cycle).


## What is Bothie?
Bothie is a pipeline that can be used for the identification of metagenomic samples with user-provided long queries such as viral, bacterial, fungal genomes and or biosynthetic gene clusters.

### Real world application for bothie:
+ Identifying toxin biosynthesis gene clusters in environmental water samples.
+ Query - Microcystin BGC GenBank AF183401v1 : 64,534 bp
+ Reference - Toxic Harmful Algal Bloom in the Saint Lucie Estuary: metagenome size 3,448,844 bp
+ Method - sourmash
+ Result - 56% similarity
+ Conclusion - Positive control works.

## How to use Bothie

1. [Install `conda`](https://bioconda.github.io/user/install.html#install-conda)

```
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
```
Answer ‘yes’ to all questions
Use default install location
```
source ~/.bashrc
```

3. Clone this repository (`git clone https://github.com/NCBI-Codeathons/bothie`)
4. Create the `conda` environment:

```
cd bothie
conda env create -n bothie -f environment.yml
```

4. Activate the `conda` environment:
```
# To activate this environment, use
#
#     $ conda activate bothie
#
# To deactivate an active environment, use
#
#     $ conda deactivate
```

5. In the activated `conda` environment, you can run the following.

Search the metagenome sample configured in `sourmash/conf-basic.yml`
using the tool `sourmash` with the query sequence in the file
`genome-s10.fa.gz`:

```
./run-one-query sourmash/conf-basic.yml sourmash data/genome-s10.fa.gz
```

Search the metagenome sample configured in `sourmash/conf-basic.yml`
using the tool `sourmash` with the query sequences in the two files
`genome-s10.fa.gz.1000` and `genome-s10.fa.gz.10000`:
```
./run-many-queries sourmash/conf-basic.yml sourmash --queries data/genome-s10.fa.gz.{1000,10000}
```

Using the tool parameters in `sourmash/conf-basic.yml`,
search the metagenome samples with the queries as specified in
`data/data-small.csv`; store the results in `out.csv`.
```
./run-many-csv sourmash/conf-basic.yml sourmash data/data-small.csv -o out.csv
```

The currently supported tools are `sourmash`, `cmash`, and `mash`.

## Team

+ Tessa Pierce Ward: ntpierce@gmail.com
+ Olaitan Awe: laitanawe@gmail.com
+ Arianna krinos: akrinos@whoi.edu
+ Minghang Lee: matchy@snu.ac.kr
+ René KM Xavier: rmillerxavie2017@fau.edu
+ Rodrigo Polo: ropolo@gmail.com
+ Adelaide Rhodes: adelaide.rhodes@nih.gov
+ Jack Roddy: jack.w.roddy@gmail.com
+ Alex Sweeten: alex.sweeten@gmail.com
+ Adrian Viehweger: adrian.viehweger@googlemail.com
+ Rayan Chikhi: rchikhi@gmail.com
+ Titus Brown: ctbrown@ucdavis.edu
