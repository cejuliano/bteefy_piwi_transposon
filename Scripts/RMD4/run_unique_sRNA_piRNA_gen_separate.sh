#!/bin/bash -l
#SBATCH --job-name=sep
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=200G
#SBATCH --error=sep.err
#SBATCH --output=sep.out

~/R_B/bin/R CMD BATCH unique_sRNA_piRNA_gen_separate.R