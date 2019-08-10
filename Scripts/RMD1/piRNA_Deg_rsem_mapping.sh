#!/bin/bash -l
#SBATCH --job-name=rsem_mapping
#SBATCH -c 1
#SBATCH --mem=50G
#SBATCH -t 10:00:00
#SBATCH --error=rsem_mapping.err
#SBATCH --output=rsem_mapping.out
module load python
module load bowtie
module load rsem/1.2.31


rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --temporary-folder WT_Hywi_AS.tmp /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyWi_S196_L008_R1_001.full_trim.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_WT_Hywi_AS
rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --temporary-folder WT_Hywi_S.tmp /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyWi_S196_L008_R1_001.full_trim.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_WT_Hywi_S
rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --temporary-folder Colch_Hywi_AS.tmp /group/julianolab/bteefy/Colch/Trimmed_Reads/Colch_HyWi_RNA_S66_L005_R1_001.full_trim.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_Colch_Hywi_AS
rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --temporary-folder Colch_Hywi_S.tmp /group/julianolab/bteefy/Colch/Trimmed_Reads/Colch_HyWi_RNA_S66_L005_R1_001.full_trim.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_Colch_Hywi_S

rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --temporary-folder WT_Hyli_AS.tmp /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyLi_S197_L008_R1_001.full_trim.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_WT_Hyli_AS
rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --temporary-folder WT_Hyli_S.tmp /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyLi_S197_L008_R1_001.full_trim.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_WT_Hyli_S
rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --temporary-folder Colch_Hyli_AS.tmp /group/julianolab/bteefy/Colch/Trimmed_Reads/Colch_HyLi_RNA_S67_L005_R1_001.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_Colch_Hyli_AS
rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --temporary-folder Colch_Hyli_S.tmp /group/julianolab/bteefy/Colch/Trimmed_Reads/Colch_HyLi_RNA_S67_L005_R1_001.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_Colch_Hyli_S

rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --temporary-folder WT_Deg_S.tmp /group/julianolab/bteefy/piRNADGE/Trimmed_Reads/SMOREseq-PolyA_S195_L008_R1_001.full_trim.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_WT_Deg_S
rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --temporary-folder Colch_Deg_S.tmp /group/julianolab/bteefy/Colch/Trimmed_Reads/Colch_Nanos_Deg_S65_L005_R1_001.full_trim.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_Colch_Deg_S
