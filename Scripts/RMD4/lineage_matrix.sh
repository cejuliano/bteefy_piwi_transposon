#!/bin/bash -l
#SBATCH --job-name=lin_mapping_count_matrix
#SBATCH -c 1
#SBATCH --mem=20G
#SBATCH -t 10:00:00
#SBATCH --error=lin_matrix.err
#SBATCH --output=lin_matrix.out

module load rsem/1.2.31

rsem-generate-data-matrix Ecto_Hyli_AS.isoforms.results Ecto_Hyli_S.isoforms.results Ecto_Hywi_AS.isoforms.results Ecto_Hywi_S.isoforms.results Endo_Hyli_AS.isoforms.results Endo_Hyli_S.isoforms.results Endo_Hywi_AS.isoforms.results Endo_Hywi_S.isoforms.results Int_Hyli_AS.isoforms.results Int_Hyli_S.isoforms.results Int_Hywi_AS.isoforms.results Int_Hywi_S.isoforms.results > lin_rsem_piRNA_stranded.matrix
