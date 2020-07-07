#!/bin/bash -l
#SBATCH --job-name=get_pos
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=60G
#SBATCH --error=get_pos.err
#SBATCH --output=get_pos.out


perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_antisense_BT.perl /group/julianolab/bteefy/piwi_revisions/Colch_Hyli_ANTISENSE_Bowtie_sorted.bam > Colch_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_sense_BT.perl /group/julianolab/bteefy/piwi_revisions/Colch_Hyli_SENSE_Bowtie_sorted.bam > Colch_Hyli_SENSE_Bowtie_sorted.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_antisense_BT.perl /group/julianolab/bteefy/piwi_revisions/Colch_Hywi_ANTISENSE_Bowtie_sorted.bam > Colch_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_sense_BT.perl /group/julianolab/bteefy/piwi_revisions/Colch_Hywi_SENSE_Bowtie_sorted.bam > Colch_Hywi_SENSE_Bowtie_sorted.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_antisense_BT.perl /group/julianolab/bteefy/piwi_revisions/WT_Hyli_ANTISENSE_Bowtie_sorted.bam > WT_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_sense_BT.perl /group/julianolab/bteefy/piwi_revisions/WT_Hyli_SENSE_Bowtie_sorted.bam > WT_Hyli_SENSE_Bowtie_sorted.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_antisense_BT.perl /group/julianolab/bteefy/piwi_revisions/WT_Hywi_ANTISENSE_Bowtie_sorted.bam > WT_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_sense_BT.perl /group/julianolab/bteefy/piwi_revisions/WT_Hywi_SENSE_Bowtie_sorted.bam > WT_Hywi_SENSE_Bowtie_sorted.rep_pirna.txt
