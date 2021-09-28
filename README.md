# bothie

## What is Metagenomic Search?


## What's the problem?



## Why should we solve it?


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
