
The script `dada2_example.R` contains the steps detailed in the official DADA2 tutorial here: https://benjjneb.github.io/dada2/tutorial.html .

It expects two things to be present in the working directory:
 - example read data
 - reference sequences

Prepare first:

Read data:
```bash
wget https://mothur.s3.us-east-2.amazonaws.com/wiki/miseqsopdata.zip
unzip miseqsopdata.zip
```

Reference sequences:
```bash
wget https://www.reference-midori.info/download/Databases/GenBank264_2024-12-14/DADA2/uniq/MIDORI2_UNIQ_NUC_GB264_srRNA_DADA2.fasta.gz
```
