#!/bin/bash -l
#SBATCH --job-name=get_pos_rsem
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=30G
#SBATCH --error=get_pos_rsem.err
#SBATCH --output=get_pos_rsem.out


perl  get_rep_piRNA_sense_BT.perl /group/julianolab/bteefy/rsem_mapping/new_TR_Colch_Hywi_S.transcript.bam > new_TR_Colch_Hywi_S_rsem.rep_pirna.txt

perl  get_rep_piRNA_sense_BT.perl /group/julianolab/bteefy/rsem_mapping/new_TR_Colch_Hyli_S.transcript.bam > new_TR_Colch_Hyli_S_rsem.rep_pirna.txt

perl  get_rep_piRNA_sense_BT.perl /group/julianolab/bteefy/rsem_mapping/new_TR_WT_Hywi_S.transcript.bam > new_TR_WT_Hywi_S_rsem.rep_pirna.txt

perl  get_rep_piRNA_sense_BT.perl /group/julianolab/bteefy/rsem_mapping/new_TR_WT_Hyli_S.transcript.bam > new_TR_WT_Hyli_S_rsem.rep_pirna.txt

perl  get_rep_piRNA_antisense_BT.perl /group/julianolab/bteefy/rsem_mapping/new_TR_Colch_Hywi_AS.transcript.bam > new_TR_Colch_Hywi_AS_rsem.rep_pirna.txt

perl  get_rep_piRNA_antisense_BT.perl /group/julianolab/bteefy/rsem_mapping/new_TR_Colch_Hyli_AS.transcript.bam > new_TR_Colch_Hyli_AS_rsem.rep_pirna.txt

perl  get_rep_piRNA_antisense_BT.perl /group/julianolab/bteefy/rsem_mapping/new_TR_WT_Hywi_AS.transcript.bam > new_TR_WT_Hywi_AS_rsem.rep_pirna.txt

perl  get_rep_piRNA_antisense_BT.perl /group/julianolab/bteefy/rsem_mapping/new_TR_WT_Hyli_AS.transcript.bam > new_TR_WT_Hyli_AS_rsem.rep_pirna.txt