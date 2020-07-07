#!/bin/bash -l
#SBATCH --job-name=map
#SBATCH -c 1
#SBATCH --mem=200G
#SBATCH --time=2-00
#SBATCH --error=mapping.err
#SBATCH --output=mapping.out

module load bowtie/1.1.2
module load samtools/1.2
module load bedtools/2.25

bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyWi_S196_L008_R1_001.full_trim.fq WT_Hywi_ANTISENSE_Bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyWi_S196_L008_R1_001.full_trim.fq WT_Hywi_SENSE_Bowtie

bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/Colch_HyWi_RNA_S66_L005_R1_001.full_trim.fq Colch_Hywi_ANTISENSE_Bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/Colch_HyWi_RNA_S66_L005_R1_001.full_trim.fq Colch_Hywi_SENSE_Bowtie


bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyLi_S197_L008_R1_001.full_trim.fq WT_Hyli_ANTISENSE_Bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyLi_S197_L008_R1_001.full_trim.fq WT_Hyli_SENSE_Bowtie

bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/Colch_HyLi_RNA_S67_L005_R1_001.fq Colch_Hyli_ANTISENSE_Bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/Colch_HyLi_RNA_S67_L005_R1_001.fq Colch_Hyli_SENSE_Bowtie


bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/SMOREseq-PolyA_S195_L008_R1_001.full_trim.fq WT_Degradome_SENSE_Bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/Colch_Nanos_Deg_S65_L005_R1_001.full_trim.fq Colch_Degradome_SENSE_Bowtie



samtools view -bS -o WT_Hywi_ANTISENSE_Bowtie.bam WT_Hywi_ANTISENSE_Bowtie
samtools sort WT_Hywi_ANTISENSE_Bowtie.bam WT_Hywi_ANTISENSE_Bowtie_sorted
samtools index WT_Hywi_ANTISENSE_Bowtie_sorted.bam
mv WT_Hywi_ANTISENSE_Bowtie_sorted.bam.bai WT_Hywi_ANTISENSE_Bowtie_sorted.bai
bamToBed -i WT_Hywi_ANTISENSE_Bowtie_sorted.bam > WT_Hywi_ANTISENSE_Bowtie_sorted.bed

samtools view -bS -o WT_Hywi_SENSE_Bowtie.bam WT_Hywi_SENSE_Bowtie
samtools sort WT_Hywi_SENSE_Bowtie.bam WT_Hywi_SENSE_Bowtie_sorted
samtools index WT_Hywi_SENSE_Bowtie_sorted.bam
mv WT_Hywi_SENSE_Bowtie_sorted.bam.bai WT_Hywi_SENSE_Bowtie_sorted.bai
bamToBed -i WT_Hywi_SENSE_Bowtie_sorted.bam > WT_Hywi_SENSE_Bowtie_sorted.bed

samtools view -bS -o Colch_Hywi_ANTISENSE_Bowtie.bam Colch_Hywi_ANTISENSE_Bowtie
samtools sort Colch_Hywi_ANTISENSE_Bowtie.bam Colch_Hywi_ANTISENSE_Bowtie_sorted
samtools index Colch_Hywi_ANTISENSE_Bowtie_sorted.bam
mv Colch_Hywi_ANTISENSE_Bowtie_sorted.bam.bai Colch_Hywi_ANTISENSE_Bowtie_sorted.bai
bamToBed -i Colch_Hywi_ANTISENSE_Bowtie_sorted.bam > Colch_Hywi_ANTISENSE_Bowtie_sorted.bed

samtools view -bS -o Colch_Hywi_SENSE_Bowtie.bam Colch_Hywi_SENSE_Bowtie
samtools sort Colch_Hywi_SENSE_Bowtie.bam Colch_Hywi_SENSE_Bowtie_sorted
samtools index Colch_Hywi_SENSE_Bowtie_sorted.bam
mv Colch_Hywi_SENSE_Bowtie_sorted.bam.bai Colch_Hywi_SENSE_Bowtie_sorted.bai
bamToBed -i Colch_Hywi_SENSE_Bowtie_sorted.bam > Colch_Hywi_SENSE_Bowtie_sorted.bed

samtools view -bS -o WT_Hyli_ANTISENSE_Bowtie.bam WT_Hyli_ANTISENSE_Bowtie
samtools sort WT_Hyli_ANTISENSE_Bowtie.bam WT_Hyli_ANTISENSE_Bowtie_sorted
samtools index WT_Hyli_ANTISENSE_Bowtie_sorted.bam
mv WT_Hyli_ANTISENSE_Bowtie_sorted.bam.bai WT_Hyli_ANTISENSE_Bowtie_sorted.bai
bamToBed -i WT_Hyli_ANTISENSE_Bowtie_sorted.bam > WT_Hyli_ANTISENSE_Bowtie_sorted.bed

samtools view -bS -o WT_Hyli_SENSE_Bowtie.bam WT_Hyli_SENSE_Bowtie
samtools sort WT_Hyli_SENSE_Bowtie.bam WT_Hyli_SENSE_Bowtie_sorted
samtools index WT_Hyli_SENSE_Bowtie_sorted.bam
mv WT_Hyli_SENSE_Bowtie_sorted.bam.bai WT_Hyli_SENSE_Bowtie_sorted.bai
bamToBed -i WT_Hyli_SENSE_Bowtie_sorted.bam > WT_Hyli_SENSE_Bowtie_sorted.bed

samtools view -bS -o Colch_Hyli_ANTISENSE_Bowtie.bam Colch_Hyli_ANTISENSE_Bowtie
samtools sort Colch_Hyli_ANTISENSE_Bowtie.bam Colch_Hyli_ANTISENSE_Bowtie_sorted
samtools index Colch_Hyli_ANTISENSE_Bowtie_sorted.bam
mv Colch_Hyli_ANTISENSE_Bowtie_sorted.bam.bai Colch_Hyli_ANTISENSE_Bowtie_sorted.bai
bamToBed -i Colch_Hyli_ANTISENSE_Bowtie_sorted.bam > Colch_Hyli_ANTISENSE_Bowtie_sorted.bed

samtools view -bS -o Colch_Hyli_SENSE_Bowtie.bam Colch_Hyli_SENSE_Bowtie
samtools sort Colch_Hyli_SENSE_Bowtie.bam Colch_Hyli_SENSE_Bowtie_sorted
samtools index Colch_Hyli_SENSE_Bowtie_sorted.bam
mv Colch_Hyli_SENSE_Bowtie_sorted.bam.bai Colch_Hyli_SENSE_Bowtie_sorted.bai
bamToBed -i Colch_Hyli_SENSE_Bowtie_sorted.bam > Colch_Hyli_SENSE_Bowtie_sorted.bed

samtools view -bS -o WT_Degradome_SENSE_Bowtie.bam WT_Degradome_SENSE_Bowtie
samtools sort WT_Degradome_SENSE_Bowtie.bam WT_Degradome_SENSE_Bowtie_sorted
samtools index WT_Degradome_SENSE_Bowtie_sorted.bam
mv WT_Degradome_SENSE_Bowtie_sorted.bam.bai WT_Degradome_SENSE_Bowtie_sorted.bai
bamToBed -i WT_Degradome_SENSE_Bowtie_sorted.bam > WT_Degradome_SENSE_Bowtie_sorted.bed

samtools view -bS -o Colch_Degradome_SENSE_Bowtie.bam Colch_Degradome_SENSE_Bowtie
samtools sort Colch_Degradome_SENSE_Bowtie.bam Colch_Degradome_SENSE_Bowtie_sorted
samtools index Colch_Degradome_SENSE_Bowtie_sorted.bam
mv Colch_Degradome_SENSE_Bowtie_sorted.bam.bai Colch_Degradome_SENSE_Bowtie_sorted.bai
bamToBed -i Colch_Degradome_SENSE_Bowtie_sorted.bam > Colch_Degradome_SENSE_Bowtie_sorted.bed
