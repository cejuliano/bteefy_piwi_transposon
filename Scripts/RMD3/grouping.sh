#!/bin/bash -l
#SBATCH --job-name=groups
#SBATCH -c 1
#SBATCH --mem=60G
#SBATCH -t 10:00:00
#SBATCH --error=groups.err
#SBATCH --output=groups.out

perl /group/julianolab/bteefy/Nik_code/group_reads_sense.perl WT_Degradome_SENSE_Bowtie_sorted.bed > WT_Degradome_SENSE_Bowtie_sorted.groups.bed

perl /group/julianolab/bteefy/Nik_code/group_reads_sense.perl WT_Hyli_SENSE_Bowtie_sorted.bed > WT_Hyli_SENSE_Bowtie_sorted.groups.bed

perl /group/julianolab/bteefy/Nik_code/group_reads_antisense.perl WT_Hywi_ANTISENSE_Bowtie_sorted.bed > WT_Hywi_ANTISENSE_Bowtie_sorted.groups.bed


perl /group/julianolab/bteefy/Nik_code/group_reads_antisense.perl Colch_Hywi_ANTISENSE_Bowtie_sorted.bed > Colch_Hywi_ANTISENSE_Bowtie_sorted.groups.bed

perl /group/julianolab/bteefy/Nik_code/group_reads_sense.perl Colch_Hyli_SENSE_Bowtie_sorted.bed > Colch_Hyli_SENSE_Bowtie_sorted.groups.bed

perl /group/julianolab/bteefy/Nik_code/group_reads_sense.perl Colch_Degradome_SENSE_Bowtie_sorted.bed > Colch_Degradome_SENSE_Bowtie_sorted.groups.bed


perl /group/julianolab/bteefy/Nik_code/group_reads_antisense.perl WT_Hyli_ANTISENSE_Bowtie_sorted.bed > WT_Hyli_ANTISENSE_Bowtie_sorted.groups.bed

perl /group/julianolab/bteefy/Nik_code/group_reads_sense.perl WT_Hywi_SENSE_Bowtie_sorted.bed > WT_Hywi_SENSE_Bowtie_sorted.groups.bed


perl /group/julianolab/bteefy/Nik_code/group_reads_sense.perl Colch_Hywi_SENSE_Bowtie_sorted.bed > Colch_Hywi_SENSE_Bowtie_sorted.groups.bed

perl /group/julianolab/bteefy/Nik_code/group_reads_antisense.perl Colch_Hyli_ANTISENSE_Bowtie_sorted.bed > Colch_Hyli_ANTISENSE_Bowtie_sorted.groups.bed