#!/bin/bash -l
#SBATCH --job-name=windowBEDALLrsem
#SBATCH -c 1
#SBATCH --mem=30G
#SBATCH -t 10:00:00
#SBATCH --error=windowBEDALLrsem.err
#SBATCH --output=windowBEDALLrsem.out

module load bedtools/2.25

windowBed -a new_TR_WT_Hywi_S_rsem.rep_pirna.bed -b new_TR_WT_Hywi_AS_rsem.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_HywiS_HywiAS_rsem.overlap.bed

windowBed -a new_TR_WT_Hywi_S_rsem.rep_pirna.bed -b new_TR_WT_Hyli_AS_rsem.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_HywiS_HyliAS_rsem.overlap.bed

windowBed -a new_TR_WT_Hyli_S_rsem.rep_pirna.bed -b new_TR_WT_Hyli_AS_rsem.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_HyliS_HyliAS_rsem.overlap.bed

windowBed -a new_TR_WT_Hyli_S_rsem.rep_pirna.bed -b new_TR_WT_Hywi_AS_rsem.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > WT_HyliS_HywiAS_rsem.overlap.bed




windowBed -a new_TR_Colch_Hywi_S_rsem.rep_pirna.bed -b new_TR_Colch_Hywi_AS_rsem.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_HywiS_HywiAS_rsem.overlap.bed

windowBed -a new_TR_Colch_Hywi_S_rsem.rep_pirna.bed -b new_TR_Colch_Hyli_AS_rsem.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_HywiS_HyliAS_rsem.overlap.bed

windowBed -a new_TR_Colch_Hyli_S_rsem.rep_pirna.bed -b new_TR_Colch_Hyli_AS_rsem.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_HyliS_HyliAS_rsem.overlap.bed

windowBed -a new_TR_Colch_Hyli_S_rsem.rep_pirna.bed -b new_TR_Colch_Hywi_AS_rsem.rep_pirna.bed -w 20 | bedtools overlap -i stdin -cols 2,3,7,8 > Colch_HyliS_HywiAS_rsem.overlap.bed