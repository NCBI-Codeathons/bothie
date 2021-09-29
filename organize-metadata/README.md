# Documentation of reference benchmarking collection.

I used the following command to download data to a mounted disk, as explained by Titus’s tutorial [here](https://hackmd.io/@ctb/r1x5Xcg4K) 

```
aws s3 cp s3://psss-metagenomics-codeathon-data/ readsBasedAnalysis --exclude "*" --include "*tsv" —recursive
```

[Here](https://github.com/microbiomedata/ReadbasedAnalysis/blob/master/README.rst) is the information on the reads-based analysis workflow, which relies on the RefSeq reference genomes. Using

```
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/assembly_summary_refseq.txt
```

you can get a listing of these reference genomes.
