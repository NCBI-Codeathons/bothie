# bothie

## quickstart

1. [Install `conda`](https://bioconda.github.io/user/install.html#install-conda)
2. Set up channels
```
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
```

3. Clone this repository (`git clone https://github.com/NCBI-Codeathons/bothie`)
4. Create the `conda` environment:

```
cd bothie
conda env create -f environment.yaml
```

5. Activate the `conda` environment:
```
# To activate this environment, use
#
#     $ conda activate spacegraphcats
#
# To deactivate an active environment, use
#
#     $ conda deactivate
```

6. In the activated `conda` environment, you can run:

```
./runme.py sourmash/conf-basic.yml sourmash data/genome-s10.fa.gz
```
