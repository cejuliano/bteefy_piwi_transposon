#!/bin/bash -l
#SBATCH --job-name=get_pos_rsem
#SBATCH -c 1
#SBATCH -t 10:00:00
#SBATCH --mem=200G
#SBATCH --error=get_pos_rsem.err
#SBATCH --output=get_pos_rsem.out


perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_sense_BT.perl Ecto_S_Reads.transcript.bam > Ecto_S_Reads.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_sense_BT.perl Endo_S_Reads.transcript.bam > Endo_S_Reads.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_sense_BT.perl Int_S_Reads.transcript.bam > Int_S_Reads.rep_pirna.txt


perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_antisense_BT.perl Ecto_AS_Reads.transcript.bam > Ecto_AS_Reads.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_antisense_BT.perl Endo_AS_Reads.transcript.bam > Endo_AS_Reads.rep_pirna.txt

perl  /group/julianolab/bteefy/Nik_code/get_rep_piRNA_antisense_BT.perl Int_AS_Reads.transcript.bam > Int_AS_Reads.rep_pirna.txt