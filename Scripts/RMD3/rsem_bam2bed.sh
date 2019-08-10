#!/bin/bash -l
#SBATCH --job-name=rsemB2B
#SBATCH -t 10:00:00
#SBATCH -c 1
#SBATCH --mem=30G
#SBATCH --error=rsemB2B.err
#SBATCH --output=rsemB2B.out

module load bedtools/2.25


bamToBed -i /group/julianolab/bteefy/rsem_mapping/new_TR_WT_Hywi_AS.transcript.bam > WT_Hywi_ANTISENSE_new_rsem.bed

bamToBed -i /group/julianolab/bteefy/rsem_mapping/new_TR_WT_Hyli_S.transcript.bam > WT_Hyli_SENSE_new_rsem.bed

bamToBed -i /group/julianolab/bteefy/rsem_mapping/new_TR_WT_Deg_S.transcript.bam > WT_SMORE_SENSE_new_rsem.bed

bamToBed -i /group/julianolab/bteefy/rsem_mapping/new_TR_Colch_Hywi_AS.transcript.bam > Colch_Hywi_ANTISENSE_New_Tr_rsem.bed

bamToBed -i /group/julianolab/bteefy/rsem_mapping/new_TR_Colch_Hyli_S.transcript.bam > Colch_Hyli_SENSE_new_rsem.bed

bamToBed -i /group/julianolab/bteefy/rsem_mapping/new_TR_Colch_Deg_S.transcript.bam > Colch_SENSE_SMORE_New_Tr_rsem.bed