#!/bin/bash -l
#SBATCH --job-name=phasing
#SBATCH -c 1
#SBATCH --mem=50G
#SBATCH -t 10:00:00
#SBATCH --error=phasing.err
#SBATCH --output=phasing.out

~/R_B/bin/R CMD BATCH Phasing.R