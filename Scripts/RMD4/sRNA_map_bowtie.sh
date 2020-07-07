#!/bin/bash -l
#SBATCH --job-name=new_map
#SBATCH -c 1
#SBATCH --mem=200G
#SBATCH -t 10:00:00
#SBATCH --error=new_map.err
#SBATCH --output=new_map.out



module load bowtie/1.1.2
module load samtools/1.2
module load bedtools/2.25

bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Endo_Hyli_AS_Reads_test.fa Endo_Hyli_AS_mapped_bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Endo_Hyli_S_Reads_test.fa Endo_Hyli_S_mapped_bowtie
bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Endo_Hywi_AS_Reads_test.fa Endo_Hywi_AS_mapped_bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Endo_Hywi_S_Reads_test.fa Endo_Hywi_S_mapped_bowtie

bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Ecto_Hyli_AS_Reads_test.fa Ecto_Hyli_AS_mapped_bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Ecto_Hyli_S_Reads_test.fa Ecto_Hyli_S_mapped_bowtie
bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Ecto_Hywi_AS_Reads_test.fa Ecto_Hywi_AS_mapped_bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Ecto_Hywi_S_Reads_test.fa Ecto_Hywi_S_mapped_bowtie

bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Int_Hyli_AS_Reads_test.fa Int_Hyli_AS_mapped_bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Int_Hyli_S_Reads_test.fa Int_Hyli_S_mapped_bowtie
bowtie  -a --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Int_Hywi_AS_Reads_test.fa Int_Hywi_AS_mapped_bowtie
bowtie  -a --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  -f /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/Int_Hywi_S_Reads_test.fa Int_Hywi_S_mapped_bowtie

samtools view -bS -o Endo_Hyli_AS_mapped_bowtie.bam Endo_Hyli_AS_mapped_bowtie
samtools sort Endo_Hyli_AS_mapped_bowtie.bam Endo_Hyli_AS_mapped_bowtie_sorted
samtools index Endo_Hyli_AS_mapped_bowtie_sorted.bam
mv Endo_Hyli_AS_mapped_bowtie_sorted.bam.bai Endo_Hyli_AS_mapped_bowtie_sorted.bai
bamToBed -i Endo_Hyli_AS_mapped_bowtie_sorted.bam > Endo_Hyli_AS_mapped_bowtie_sorted.bed

samtools view -bS -o Endo_Hyli_S_mapped_bowtie.bam Endo_Hyli_S_mapped_bowtie
samtools sort Endo_Hyli_S_mapped_bowtie.bam Endo_Hyli_S_mapped_bowtie_sorted
samtools index Endo_Hyli_S_mapped_bowtie_sorted.bam
mv Endo_Hyli_S_mapped_bowtie_sorted.bam.bai Endo_Hyli_S_mapped_bowtie_sorted.bai
bamToBed -i Endo_Hyli_S_mapped_bowtie_sorted.bam > Endo_Hyli_S_mapped_bowtie_sorted.bed

samtools view -bS -o Endo_Hywi_AS_mapped_bowtie.bam Endo_Hywi_AS_mapped_bowtie
samtools sort Endo_Hywi_AS_mapped_bowtie.bam Endo_Hywi_AS_mapped_bowtie_sorted
samtools index Endo_Hywi_AS_mapped_bowtie_sorted.bam
mv Endo_Hywi_AS_mapped_bowtie_sorted.bam.bai Endo_Hywi_AS_mapped_bowtie_sorted.bai
bamToBed -i Endo_Hywi_AS_mapped_bowtie_sorted.bam > Endo_Hywi_AS_mapped_bowtie_sorted.bed

samtools view -bS -o Endo_Hywi_S_mapped_bowtie.bam Endo_Hywi_S_mapped_bowtie
samtools sort Endo_Hywi_S_mapped_bowtie.bam Endo_Hywi_S_mapped_bowtie_sorted
samtools index Endo_Hywi_S_mapped_bowtie_sorted.bam
mv Endo_Hywi_S_mapped_bowtie_sorted.bam.bai Endo_Hywi_S_mapped_bowtie_sorted.bai
bamToBed -i Endo_Hywi_S_mapped_bowtie_sorted.bam > Endo_Hywi_S_mapped_bowtie_sorted.bed

samtools view -bS -o Ecto_Hyli_AS_mapped_bowtie.bam Ecto_Hyli_AS_mapped_bowtie
samtools sort Ecto_Hyli_AS_mapped_bowtie.bam Ecto_Hyli_AS_mapped_bowtie_sorted
samtools index Ecto_Hyli_AS_mapped_bowtie_sorted.bam
mv Ecto_Hyli_AS_mapped_bowtie_sorted.bam.bai Ecto_Hyli_AS_mapped_bowtie_sorted.bai
bamToBed -i Ecto_Hyli_AS_mapped_bowtie_sorted.bam > Ecto_Hyli_AS_mapped_bowtie_sorted.bed

samtools view -bS -o Ecto_Hyli_S_mapped_bowtie.bam Ecto_Hyli_S_mapped_bowtie
samtools sort Ecto_Hyli_S_mapped_bowtie.bam Ecto_Hyli_S_mapped_bowtie_sorted
samtools index Ecto_Hyli_S_mapped_bowtie_sorted.bam
mv Ecto_Hyli_S_mapped_bowtie_sorted.bam.bai Ecto_Hyli_S_mapped_bowtie_sorted.bai
bamToBed -i Ecto_Hyli_S_mapped_bowtie_sorted.bam > Ecto_Hyli_S_mapped_bowtie_sorted.bed

samtools view -bS -o Ecto_Hywi_AS_mapped_bowtie.bam Ecto_Hywi_AS_mapped_bowtie
samtools sort Ecto_Hywi_AS_mapped_bowtie.bam Ecto_Hywi_AS_mapped_bowtie_sorted
samtools index Ecto_Hywi_AS_mapped_bowtie_sorted.bam
mv Ecto_Hywi_AS_mapped_bowtie_sorted.bam.bai Ecto_Hywi_AS_mapped_bowtie_sorted.bai
bamToBed -i Ecto_Hywi_AS_mapped_bowtie_sorted.bam > Ecto_Hywi_AS_mapped_bowtie_sorted.bed

samtools view -bS -o Ecto_Hywi_S_mapped_bowtie.bam Ecto_Hywi_S_mapped_bowtie
samtools sort Ecto_Hywi_S_mapped_bowtie.bam Ecto_Hywi_S_mapped_bowtie_sorted
samtools index Ecto_Hywi_S_mapped_bowtie_sorted.bam
mv Ecto_Hywi_S_mapped_bowtie_sorted.bam.bai Ecto_Hywi_S_mapped_bowtie_sorted.bai
bamToBed -i Ecto_Hywi_S_mapped_bowtie_sorted.bam > Ecto_Hywi_S_mapped_bowtie_sorted.bed

samtools view -bS -o Int_Hyli_AS_mapped_bowtie.bam Int_Hyli_AS_mapped_bowtie
samtools sort Int_Hyli_AS_mapped_bowtie.bam Int_Hyli_AS_mapped_bowtie_sorted
samtools index Int_Hyli_AS_mapped_bowtie_sorted.bam
mv Int_Hyli_AS_mapped_bowtie_sorted.bam.bai Int_Hyli_AS_mapped_bowtie_sorted.bai
bamToBed -i Int_Hyli_AS_mapped_bowtie_sorted.bam > Int_Hyli_AS_mapped_bowtie_sorted.bed

samtools view -bS -o Int_Hyli_S_mapped_bowtie.bam Int_Hyli_S_mapped_bowtie
samtools sort Int_Hyli_S_mapped_bowtie.bam Int_Hyli_S_mapped_bowtie_sorted
samtools index Int_Hyli_S_mapped_bowtie_sorted.bam
mv Int_Hyli_S_mapped_bowtie_sorted.bam.bai Int_Hyli_S_mapped_bowtie_sorted.bai
bamToBed -i Int_Hyli_S_mapped_bowtie_sorted.bam > Int_Hyli_S_mapped_bowtie_sorted.bed

samtools view -bS -o Int_Hywi_AS_mapped_bowtie.bam Int_Hywi_AS_mapped_bowtie
samtools sort Int_Hywi_AS_mapped_bowtie.bam Int_Hywi_AS_mapped_bowtie_sorted
samtools index Int_Hywi_AS_mapped_bowtie_sorted.bam
mv Int_Hywi_AS_mapped_bowtie_sorted.bam.bai Int_Hywi_AS_mapped_bowtie_sorted.bai
bamToBed -i Int_Hywi_AS_mapped_bowtie_sorted.bam > Int_Hywi_AS_mapped_bowtie_sorted.bed

samtools view -bS -o Int_Hywi_S_mapped_bowtie.bam Int_Hywi_S_mapped_bowtie
samtools sort Int_Hywi_S_mapped_bowtie.bam Int_Hywi_S_mapped_bowtie_sorted
samtools index Int_Hywi_S_mapped_bowtie_sorted.bam
mv Int_Hywi_S_mapped_bowtie_sorted.bam.bai Int_Hywi_S_mapped_bowtie_sorted.bai
bamToBed -i Int_Hywi_S_mapped_bowtie_sorted.bam > Int_Hywi_S_mapped_bowtie_sorted.bed