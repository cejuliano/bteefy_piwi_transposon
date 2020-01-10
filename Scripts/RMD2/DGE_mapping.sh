#!/bin/bash -l
#SBATCH --job-name=DGE_expression
#SBATCH -c 1
#SBATCH --mem=20G
#SBATCH --error=DGE_expression.err
#SBATCH --output=DGE_expression.out
module load bowtie
module load rsem/1.2.31
rsem-calculate-expression --num-threads 8 --no-bam-output --forward-prob 0 --temporary-folder kd1.tmp /group/julianolab/data/Hywi_RNAi_seq/160610_filtered/KD1.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_kd1
rsem-calculate-expression --num-threads 8 --no-bam-output --forward-prob 0 --temporary-folder wt2.tmp /group/julianolab/data/Hywi_RNAi_seq/160610_filtered/WT2.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_wt2
rsem-calculate-expression --num-threads 8 --no-bam-output --forward-prob 0 --temporary-folder kd3.tmp /group/julianolab/data/Hywi_RNAi_seq/160610_filtered/KD3.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_kd3
rsem-calculate-expression --num-threads 8 --no-bam-output --forward-prob 0 --temporary-folder wt1.tmp /group/julianolab/data/Hywi_RNAi_seq/160610_filtered/WT1.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_wt1
rsem-calculate-expression --num-threads 8 --no-bam-output --forward-prob 0 --temporary-folder kd2.tmp /group/julianolab/data/Hywi_RNAi_seq/160610_filtered/KD2.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_kd2
rsem-calculate-expression --num-threads 8 --no-bam-output --forward-prob 0 --temporary-folder wt3.tmp /group/julianolab/data/Hywi_RNAi_seq/160610_filtered/WT3.fq /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem new_TR_wt3
