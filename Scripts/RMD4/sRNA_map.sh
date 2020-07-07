#!/bin/bash -l
#SBATCH --job-name=sNRA_map
#SBATCH -c 1
#SBATCH --mem=200G
#SBATCH --time=2-00
#SBATCH --error=sNRA_map.err
#SBATCH --output=sNRA_map.out

module load bowtie/1.1.2
module load samtools/1.2

bowtie  -a --best --strata -k 1 --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024170_noadapt.fastq Ecto_AS_Reads
bowtie  -a --best --strata -k 1 --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024170_noadapt.fastq Ecto_S_Reads

bowtie  -a --best --strata -k 1 --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024171_noadapt.fastq Endo_AS_Reads
bowtie  -a --best --strata -k 1 --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024171_noadapt.fastq Endo_S_Reads

bowtie  -a --best --strata -k 1 --nofw -v 3 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024172_noadapt.fastq Int_AS_Reads
bowtie  -a --best --strata -k 1 --norc -v 0 -S  /group/julianolab/bteefy/bowtie_ref/aepNewTrimTrans  /group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024172_noadapt.fastq Int_S_Reads

samtools view -bS -o Ecto_AS_Reads.bam Ecto_AS_Reads
samtools sort Ecto_AS_Reads.bam Ecto_AS_Reads_sorted
samtools index Ecto_AS_Reads_sorted.bam
mv Ecto_AS_Reads_sorted.bam.bai Ecto_AS_Reads_sorted.bai

samtools view -bS -o Ecto_S_Reads.bam Ecto_S_Reads
samtools sort Ecto_S_Reads.bam Ecto_S_Reads_sorted
samtools index Ecto_S_Reads_sorted.bam
mv Ecto_S_Reads_sorted.bam.bai Ecto_S_Reads_sorted.bai

samtools view -bS -o Endo_AS_Reads.bam Endo_AS_Reads
samtools sort Endo_AS_Reads.bam Endo_AS_Reads_sorted
samtools index Endo_AS_Reads_sorted.bam
mv Endo_AS_Reads_sorted.bam.bai Endo_AS_Reads_sorted.bai

samtools view -bS -o Endo_S_Reads.bam Endo_S_Reads
samtools sort Endo_S_Reads.bam Endo_S_Reads_sorted
samtools index Endo_S_Reads_sorted.bam
mv Endo_S_Reads_sorted.bam.bai Endo_S_Reads_sorted.bai

samtools view -bS -o Int_AS_Reads.bam Int_AS_Reads
samtools sort Int_AS_Reads.bam Int_AS_Reads_sorted
samtools index Int_AS_Reads_sorted.bam
mv Int_AS_Reads_sorted.bam.bai Int_AS_Reads_sorted.bai

samtools view -bS -o Int_S_Reads.bam Int_S_Reads
samtools sort Int_S_Reads.bam Int_S_Reads_sorted
samtools index Int_S_Reads_sorted.bam
mv Int_S_Reads_sorted.bam.bai Int_S_Reads_sorted.bai