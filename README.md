# bothie

![Bothy](img/bothy.jpg)


## What is Metagenomic Search?
Metagenomic search is to query a gene or genome of interest against a metagenome in order to determine if there's a hit.

## What's the problem?
It is important to know if a microbe is present in a metagenome.
If we have a set of microbes and we want to know which metagenomes we should look at, we can screen the sequence read archive (SRA) for genes or genomes and there is need for a tool that can do the high throughput screening.

### Real world application for bothie:
+ Identifying toxin biosynthesis gene clusters in environmental water samples.
+ Microcystin BGC GenBank AF183401v1 : 64,534 bp
+ Toxic Harmful Algal Bloom in the Saint Lucie Estuary:
+ metagenome size 3,448,844 bp
+ We ran with sourmash and result=1 Therefore, positive control works.

## Why should we solve it?
Finding the specific location of the microbes can be useful in determining which metagenomes might be responsible for the production of toxins.

## What is Bothie?
Bothie is a pipeline that could be used for the the retrieval of metagenomic samples with user-provided long queries, such as genomes for viruses, bacteria, or fungi.

## How to use Bothie


## Installation Instructions
## quickstart

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

5. In the activated `conda` environment, you can run:

```
./run-one-query sourmash/conf-basic.yml sourmash data/genome-s10.fa.gz
```

## Team
+ Tessa Pierce Ward: ntpierce@gmail.com
+ Olaitan Awe: laitanawe@gmail.com
+ Arianna krinos: akrinos@whoi.edu
+ Minghand Lee: matchy@snu.ac.kr
+ Rene Miller-Xavier: rmillerxavie2017@fau.edu
+ Rodrigo Polo: ropolo@gmail.com
+ Adelaide Rhodes: adelaide.rhodes@nih.gov
+ Jack Roddy: jack.w.roddy@gmail.com
+ Alex Sweeten: alex.sweeten@gmail.com
+ Adrian Viehweger: adrian.viehweger@googlemail.com
+ Rayan Chikhi: rchikhi@gmail.com
+ Titus Brown: ctbrown@ucdavis.edu
