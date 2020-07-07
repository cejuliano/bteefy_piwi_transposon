#!/bin/bash -l
#SBATCH --job-name=windowBED_phasing
#SBATCH -c 1
#SBATCH --mem=60G
#SBATCH -t 10:00:00
#SBATCH --error=windowBED_phasing.err
#SBATCH --output=windowBED_phasing.out

module load bedtools/2.25

windowBed -a Colch_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed -b Colch_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed -w 200 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_Hyli_SENSE_Bowtie_sorted.overlap.bed

windowBed -a Colch_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed -b Colch_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed -w 200 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_Hywi_SENSE_Bowtie_sorted.overlap.bed

windowBed -a WT_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed -b WT_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed -w 200 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_Hyli_SENSE_Bowtie_sorted.overlap.bed

windowBed -a WT_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed -b WT_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed -w 200 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_Hywi_SENSE_Bowtie_sorted.overlap.bed

