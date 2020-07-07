#!/bin/bash -l
#SBATCH --job-name=B2B
#SBATCH -t 10:00:00
#SBATCH -c 1
#SBATCH --mem=60G
#SBATCH --error=B2B.err
#SBATCH --output=B2B.out

module load bedtools/2.25

bamToBed -i /group/julianolab/bteefy/piwi_revisions/Colch_Degradome_SENSE_Bowtie_sorted.bam > Colch_Degradome_SENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/Colch_Hywi_ANTISENSE_Bowtie_sorted.bam > Colch_Hywi_ANTISENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/Colch_Hyli_SENSE_Bowtie_sorted.bam > Colch_Hyli_SENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/WT_Degradome_SENSE_Bowtie_sorted.bam > WT_Degradome_SENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/WT_Hywi_ANTISENSE_Bowtie_sorted.bam > WT_Hywi_ANTISENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/WT_Hyli_SENSE_Bowtie_sorted.bam > WT_Hyli_SENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/Colch_Hywi_SENSE_Bowtie_sorted.bam > Colch_Hywi_SENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/Colch_Hyli_ANTISENSE_Bowtie_sorted.bam > Colch_Hyli_ANTISENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/WT_Hywi_SENSE_Bowtie_sorted.bam > WT_Hywi_SENSE_Bowtie_sorted.bed

bamToBed -i /group/julianolab/bteefy/piwi_revisions/WT_Hyli_ANTISENSE_Bowtie_sorted.bam > WT_Hyli_ANTISENSE_Bowtie_sorted.bed