#!/bin/bash
set -v
date
#will work for both fastq and fastq.gz files
find . -type f -name "*.fastq" -o -name "*.fastq.gz" | parallel -j 10 -v -I% --max-args 1 fastqc 
#combining all the fastqc html reports using multiqc
multiqc .
