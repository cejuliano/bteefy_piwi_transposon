#!/bin/bash -l
#SBATCH --job-name=groups
#SBATCH -c 1
#SBATCH --mem=30G
#SBATCH -t 10:00:00
#SBATCH --error=groups.err
#SBATCH --output=groups.out

perl group_reads_sense.perl WT_SMORE_SENSE_new_rsem.bed > WT_SMORE_SENSE_new_rsem.groups.bed

perl group_reads_sense.perl WT_Hyli_SENSE_new_rsem.bed > WT_Hyli_SENSE_new_rsem.groups.bed

perl group_reads_antisense.perl WT_Hywi_ANTISENSE_new_rsem.bed > WT_Hywi_ANTISENSE_new_rsem.groups.bed


perl group_reads_antisense.perl Colch_Hywi_ANTISENSE_New_Tr_rsem.bed > Colch_Hywi_ANTISENSE_New_Tr_rsem.groups.bed

perl group_reads_sense.perl Colch_Hyli_SENSE_new_rsem.bed > Colch_Hyli_SENSE_new_rsem.groups.bed

perl group_reads_sense.perl Colch_SENSE_SMORE_New_Tr_rsem.bed > Colch_SENSE_SMORE_New_Tr_rsem.groups.bed