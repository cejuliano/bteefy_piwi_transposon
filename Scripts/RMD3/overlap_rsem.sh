#!/bin/bash -l
#SBATCH --job-name=OV_rsem
#SBATCH -c 1
#SBATCH --mem=30G
#SBATCH -t 10:00:00
#SBATCH --error=OV_rsem.err
#SBATCH --output=OV_rsem.out


perl overlap_BT.perl WT_Hyli_SENSE_new_rsem.groups.bed WT_Hywi_ANTISENSE_new_rsem.groups.bed > OlapWTpiRNAs_rsem.bed

perl overlap_BT.perl OlapWTpiRNAs_rsem.bed WT_SMORE_SENSE_new_rsem.groups.bed > WTdegHits_rsem.bed

perl overlap_BT.perl Colch_Hyli_SENSE_new_rsem.groups.bed Colch_Hywi_ANTISENSE_New_Tr_rsem.groups.bed > OlapColchpiRNAs_rsem.bed

perl overlap_BT.perl OlapColchpiRNAs_rsem.bed Colch_SENSE_SMORE_New_Tr_rsem.groups.bed > ColchdegHits_rsem.bed