# This tool can be used to download genomes by accession

From within this tool (and in the `bothie` conda environment`), run:

```
snakemake --configfile conf-basic.yml --cores 1 --use-conda
```

## Configuration

The config file `conf-basic.yml` contains a single test accession. 
To download your accessions, create a config file following this format, 
adding additional accessions to the `accessions` list.


