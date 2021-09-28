# bothie

## quickstart

1. [Install `conda`](https://bioconda.github.io/user/install.html#install-conda)
2. Clone this repository (`git clone https://github.com/NCBI-Codeathons/bothie`)
3. Create the `conda` environment:

```
cd bothie
conda env create -n bothie -f environment.yaml
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
./runme.py sourmash/conf-basic.yml sourmash data/genome-s10.fa.gz
```
