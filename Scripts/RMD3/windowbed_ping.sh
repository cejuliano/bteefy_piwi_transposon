#!/bin/bash -l
#SBATCH --job-name=windowBED_ping
#SBATCH -c 1
#SBATCH --mem=60G
#SBATCH -t 10:00:00
#SBATCH --error=windowBED.err
#SBATCH --output=windowBED.out

module load bedtools/2.25

windowBed -a WT_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed -b WT_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_HywiS_HywiAS.overlap.bed

windowBed -a WT_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed -b WT_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_HywiS_HyliAS.overlap.bed

windowBed -a WT_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed -b WT_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_HyliS_HyliAS.overlap.bed

windowBed -a WT_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed -b WT_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_HyliS_HywiAS.overlap.bed




windowBed -a Colch_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed -b Colch_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_HywiS_HywiAS.overlap.bed

windowBed -a Colch_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed -b Colch_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_HywiS_HyliAS.overlap.bed

windowBed -a Colch_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed -b Colch_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_HyliS_HyliAS.overlap.bed

windowBed -a Colch_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed -b Colch_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_HyliS_HywiAS.overlap.bed
