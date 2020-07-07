#!/bin/bash -l
#SBATCH --job-name=ping
#SBATCH -c 1
#SBATCH --mem=200G
#SBATCH -t 10:00:00
#SBATCH --error=ping.err
#SBATCH --output=ping.out

~/R_B/bin/R CMD BATCH Ping_Pong_Matrix_Generation.R