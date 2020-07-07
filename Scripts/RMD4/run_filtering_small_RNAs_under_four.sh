#!/bin/bash -l
#SBATCH --job-name=run_rmv
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=200G
#SBATCH --error=run_rmv.err
#SBATCH --output=run_rmv.out

~/R_B/bin/R CMD BATCH filtering_small_RNAs_under_four.R