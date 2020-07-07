#!/bin/bash -l
#SBATCH --job-name=plt
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=200G
#SBATCH --error=plt.err
#SBATCH --output=plt.out

~/R_B/bin/R CMD BATCH plot_gen.R