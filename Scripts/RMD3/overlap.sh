#!/bin/bash -l
#SBATCH --job-name=OV
#SBATCH -c 1
#SBATCH --mem=60G
#SBATCH -t 10:00:00
#SBATCH --error=OV.err
#SBATCH --output=OV.out


perl /group/julianolab/bteefy/Nik_code/overlap_BT.perl WT_Hyli_SENSE_Bowtie_sorted.groups.bed WT_Hywi_ANTISENSE_Bowtie_sorted.groups.bed > OlapWTpiRNAs.bed

perl /group/julianolab/bteefy/Nik_code/overlap_BT.perl OlapWTpiRNAs.bed WT_Degradome_SENSE_Bowtie_sorted.groups.bed > WTdegHits.bed

perl /group/julianolab/bteefy/Nik_code/overlap_BT.perl Colch_Hyli_SENSE_Bowtie_sorted.groups.bed Colch_Hywi_ANTISENSE_Bowtie_sorted.groups.bed > OlapColchpiRNAs.bed

perl /group/julianolab/bteefy/Nik_code/overlap_BT.perl OlapColchpiRNAs.bed Colch_Degradome_SENSE_Bowtie_sorted.groups.bed > ColchdegHits.bed


perl /group/julianolab/bteefy/Nik_code/overlap_BT.perl WT_Hyli_ANTISENSE_Bowtie_sorted.groups.bed WT_Hywi_SENSE_Bowtie_sorted.groups.bed > OlapWTpiRNAs_inv.bed

perl /group/julianolab/bteefy/Nik_code/overlap_BT.perl OlapWTpiRNAs_inv.bed WT_Degradome_SENSE_Bowtie_sorted.groups.bed > WTdegHits_inv.bed

perl /group/julianolab/bteefy/Nik_code/overlap_BT.perl Colch_Hyli_ANTISENSE_Bowtie_sorted.groups.bed Colch_Hywi_SENSE_Bowtie_sorted.groups.bed > OlapColchpiRNAs_inv.bed

perl /group/julianolab/bteefy/Nik_code/overlap_BT.perl OlapColchpiRNAs_inv.bed Colch_Degradome_SENSE_Bowtie_sorted.groups.bed > ColchdegHits_inv.bed