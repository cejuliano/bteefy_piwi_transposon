#!/bin/bash -l
#SBATCH --job-name=piRNA_contrast
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=200G
#SBATCH --error=piRNA_contrast.err
#SBATCH --output=piRNA_contrast.out

~/R_B/bin/R CMD BATCH piRNA_contrast_with_over_four_small_RNAs.R