#!/bin/bash
set -v
date
find . -name "*.fastq" | parallel -j 30 -v -I% --max-args 1 fastqc 
multiqc .
