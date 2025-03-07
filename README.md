# r-dada2-docker

R with DADA2 setup.

DADA2 documentation here: https://benjjneb.github.io/dada2/

You can test it as follows (note that you'll need to download example data first):

```bash
cd example

## download data - reads as in the official tutorial
wget https://mothur.s3.us-east-2.amazonaws.com/wiki/miseqsopdata.zip
unzip miseqsopdata.zip

## download reference sequences formatted for DADA2, e.g. from midori initiative
wget https://www.reference-midori.info/download/Databases/GenBank264_2024-12-14/DADA2/uniq/MIDORI2_UNIQ_NUC_GB264_srRNA_DADA2.fasta.gz

# Run analyses as in example R script
docker run --rm --user $(id -u):$(id -g) -v $(pwd):/in -w /in chrishah/r-dada2:4.2.2 Rscript dada2_example.R
```
