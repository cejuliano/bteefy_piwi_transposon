#!/bin/bash -l
#SBATCH --job-name=test_cnt
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=200G
#SBATCH --error=test_cnt.err
#SBATCH --output=test_cnt.out

~/R_B/bin/R CMD BATCH make_fasta_from_piRNA_sRNA_cross.R