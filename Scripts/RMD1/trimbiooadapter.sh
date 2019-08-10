#!/bin/bash -l
#SBATCH --job-name=trimbioo
#SBATCH -c 1
#SBATCH --mem=20G
#SBATCH --error=trimbioo.err
#SBATCH --output=trimbioo.out

export PYTHONPATH=/home/ssiebert/.local/bin:/home/ssiebert/.local/lib/python2.7/site-packages:/home/ssiebert/.local/bin/bin:$PYTHONPATH
export PATH=/home/ssiebert/.local/bin:/home/ssiebert/.local/lib/python2.7/site-packages:/home/ssiebert/.local/bin/bin:$PATH

cutadapt -a TGGAATTCTCGGGTGCCAAGG -o SMOREseq-PolyA_S195_L008_R1_001.trim1.fq --minimum-length 28 /group/julianolab/data/Teefy_piRNA/Project_CJBT_L8_H729P_Teefy/SMOREseq-PolyA_S195_L008_R1_001.fastq.gz

cutadapt -a TGGAATTCTCGGGTGCCAAGG -o WT-HyLi_S197_L008_R1_001.trim1.fq --minimum-length 28 /group/julianolab/data/Teefy_piRNA/Project_CJBT_L8_H729P_Teefy/WT-HyLi_S197_L008_R1_001.fastq.gz

cutadapt -a TGGAATTCTCGGGTGCCAAGG -o WT-HyWi_S196_L008_R1_001.trim1.fq --minimum-length 28 /group/julianolab/data/Teefy_piRNA/Project_CJBT_L8_H729P_Teefy/WT-HyWi_S196_L008_R1_001.fastq.gz

cutadapt -a TGGAATTCTCGGGTGCCAAGG -o Colch_HyWi_RNA_S66_L005_R1_001.trim1.fq --minimum-length 28 /group/julianolab/data/Teefy_piRNA/Project_CJBT_L5H1530P_Teefy/slimsdata.genomecenter.ucdavis.edu/Data/4e2zzfvybp/Un/Project_CJBT_L5_H1530P_Teefy/Colch_HyWi_RNA_S66_L005_R1_001.fastq.gz  

cutadapt -a TGGAATTCTCGGGTGCCAAGG -o Colch_HyLi_RNA_S67_L005_R1_001.trim1.fq --minimum-length 28 /group/julianolab/data/Teefy_piRNA/Project_CJBT_L5H1530P_Teefy/slimsdata.genomecenter.ucdavis.edu/Data/4e2zzfvybp/Un/Project_CJBT_L5_H1530P_Teefy/Colch_HyLi_RNA_S67_L005_R1_001.fastq.gz 

cutadapt -a TGGAATTCTCGGGTGCCAAGG -o Colch_Nanos_Deg_S65_L005_R1_001.trim1.fq --minimum-length 28 /group/julianolab/data/Teefy_piRNA/Project_CJBT_L5H1530P_Teefy/slimsdata.genomecenter.ucdavis.edu/Data/4e2zzfvybp/Un/Project_CJBT_L5_H1530P_Teefy/Colch_Nanos_Deg_S65_L005_R1_001.fastq.gz 

cutadapt -u 4 -u -4 -o SMOREseq-PolyA_S195_L008_R1_001.full_trim.fq SMOREseq-PolyA_S195_L008_R1_001.trim1.fq

cutadapt -u 4 -u -4 -o WT-HyLi_S197_L008_R1_001.full_trim.fq WT-HyLi_S197_L008_R1_001.trim1.fq

cutadapt -u 4 -u -4 -o WT-HyWi_S196_L008_R1_001.full_trim.fq WT-HyWi_S196_L008_R1_001.trim1.fq

cutadapt -u 4 -u -4 -o Colch_HyWi_RNA_S66_L005_R1_001.full_trim.fq Colch_HyWi_RNA_S66_L005_R1_001.trim1.fq

cutadapt -u 4 -u -4 -o Colch_HyLi_RNA_S67_L005_R1_001.fq Colch_HyLi_RNA_S67_L005_R1_001.trim1.fq

cutadapt -u 4 -u -4 -o Colch_Nanos_Deg_S65_L005_R1_001.full_trim.fq Colch_Nanos_Deg_S65_L005_R1_001.trim1.fq