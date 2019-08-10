#!/bin/bash
#SBATCH --job-name=RNA_table
#SBATCH -c 1
#SBATCH -t 30:00:00
#SBATCH --mem=150G
#SBATCH --error=RNA_table.err
#SBATCH --output=RNA_table.out


~/R_B/bin/R CMD BATCH RNA_Table_Generation.R