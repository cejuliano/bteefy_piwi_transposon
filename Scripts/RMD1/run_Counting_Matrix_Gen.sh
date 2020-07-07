#!/bin/bash -l
#SBATCH --job-name=cnt
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=200G
#SBATCH --error=cnt.err
#SBATCH --output=cnt.out

~/R_B/bin/R CMD BATCH Counting_Matrix_Gen.R