#!/bin/bash
#SBATCH --job-name=contrast
#SBATCH -c 1
#SBATCH -t 30:00:00
#SBATCH --mem=150G
#SBATCH --error=contrast.err
#SBATCH --output=contrast.out


~/R_B/bin/R CMD BATCH contrast.R