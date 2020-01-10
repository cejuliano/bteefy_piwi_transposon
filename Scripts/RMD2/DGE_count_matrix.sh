#!/bin/bash -l
#SBATCH --job-name=DGE_count_matrix
#SBATCH -c 1
#SBATCH --mem=20G
#SBATCH --error=DGE_count_matrix.err
#SBATCH --output=DGE_count_matrix.out

module load rsem/1.2.31

rsem-generate-data-matrix new_TR_wt1.isoforms.results new_TR_wt2.isoforms.results new_TR_wt3.isoforms.results new_TR_kd1.isoforms.results new_TR_kd2.isoforms.results new_TR_kd3.isoforms.results > New_DGE_KD_stranded.matrix
