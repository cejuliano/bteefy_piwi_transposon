#!/bin/bash -l
#SBATCH --job-name=rmv_4
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=200G
#SBATCH --error=rmv_4.err
#SBATCH --output=rmv_4.out

~/R_B/bin/R CMD BATCH remove_low_copy_RNAs.R