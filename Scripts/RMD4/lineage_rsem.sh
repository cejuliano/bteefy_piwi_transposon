#!/bin/bash -l
#SBATCH --job-name=Hyli_rsem
#SBATCH -c 1
#SBATCH --mem=20G
#SBATCH -t 10:00:00
#SBATCH --error=Hyli_rsem.err
#SBATCH --output=Hyli_rsem.out

module load python
module load bowtie
module load rsem/1.2.31

mv /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoHyli.fasta /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoHyli.fa
mv /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoHyli.fasta /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoHyli.fa
mv /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntHyli.fasta /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntHyli.fa

mv /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoHywi.fasta /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoHywi.fa
mv /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoHywi.fasta /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoHywi.fa
mv /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntHywi.fasta /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntHywi.fa


rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --no-qualities --temporary-folder Ecto_Hyli_S.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoHyli.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Ecto_Hyli_S
rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --no-qualities --temporary-folder Ecto_Hyli_AS.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoHyli.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Ecto_Hyli_AS


rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --no-qualities --temporary-folder Endo_Hyli_S.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoHyli.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Endo_Hyli_S
rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --no-qualities --temporary-folder Endo_Hyli_AS.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoHyli.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Endo_Hyli_AS


rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --no-qualities --temporary-folder Int_Hyli_S.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntHyli.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Int_Hyli_S
rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --no-qualities --temporary-folder Int_Hyli_AS.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntHyli.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Int_Hyli_AS


rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --no-qualities --temporary-folder Ecto_Hywi_S.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoHywi.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Ecto_Hywi_S
rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --no-qualities --temporary-folder Ecto_Hywi_AS.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoHywi.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Ecto_Hywi_AS


rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --no-qualities --temporary-folder Endo_Hywi_S.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoHywi.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Endo_Hywi_S
rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --no-qualities --temporary-folder Endo_Hywi_AS.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoHywi.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Endo_Hywi_AS


rsem-calculate-expression --num-threads 8 --forward-prob 1 --bowtie-n 0 --calc-ci --no-qualities --temporary-folder Int_Hywi_S.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntHywi.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Int_Hywi_S
rsem-calculate-expression --num-threads 8 --forward-prob 0 --bowtie-n 3 --calc-ci --no-qualities --temporary-folder Int_Hywi_AS.tmp /group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntHywi.fa /group/julianolab/ssiebert/analyses/expression/20180525_endo_ecto/reference/rsem Int_Hywi_AS
