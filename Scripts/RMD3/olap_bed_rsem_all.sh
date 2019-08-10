#!/bin/bash -l
#SBATCH --job-name=get_olap_BED_ALL
#SBATCH -c 1
#SBATCH --mem=30G
#SBATCH -t 10:00:00
#SBATCH --error=get_olap_BED_ALL.err
#SBATCH --output=get_olap_BED_ALL.out


cat new_TR_WT_Hywi_S_rsem.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 10) {next;} chomp; $end=$F[1]+length($F[3]); print "$F[0]\t$F[1]\t$end\t$F[3]\t$F[2]\n";' > new_TR_WT_Hywi_S_rsem.rep_pirna.bed

cat new_TR_Colch_Hywi_S_rsem.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 10) {next;} chomp; $end=$F[1]+length($F[3]); print "$F[0]\t$F[1]\t$end\t$F[3]\t$F[2]\n";' > new_TR_Colch_Hywi_S_rsem.rep_pirna.bed

cat new_TR_WT_Hyli_S_rsem.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 10) {next;} chomp; $end=$F[1]+length($F[3]); print "$F[0]\t$F[1]\t$end\t$F[3]\t$F[2]\n";' > new_TR_WT_Hyli_S_rsem.rep_pirna.bed

cat new_TR_Colch_Hyli_S_rsem.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 10) {next;} chomp; $end=$F[1]+length($F[3]); print "$F[0]\t$F[1]\t$end\t$F[3]\t$F[2]\n";' > new_TR_Colch_Hyli_S_rsem.rep_pirna.bed



cat new_TR_WT_Hywi_AS_rsem.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 10) {next;} chomp; $start=$F[1]-length($F[3]); print "$F[0]\t".($start<0 ? 0 : $start)."\t$F[1]\t$F[3]\t$F[2]\n";' > new_TR_WT_Hywi_AS_rsem.rep_pirna.bed

cat new_TR_Colch_Hywi_AS_rsem.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 10) {next;} chomp; $start=$F[1]-length($F[3]); print "$F[0]\t".($start<0 ? 0 : $start)."\t$F[1]\t$F[3]\t$F[2]\n";' > new_TR_Colch_Hywi_AS_rsem.rep_pirna.bed

cat new_TR_WT_Hyli_AS_rsem.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 10) {next;} chomp; $start=$F[1]-length($F[3]); print "$F[0]\t".($start<0 ? 0 : $start)."\t$F[1]\t$F[3]\t$F[2]\n";' > new_TR_WT_Hyli_AS_rsem.rep_pirna.bed

cat new_TR_Colch_Hyli_AS_rsem.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 10) {next;} chomp; $start=$F[1]-length($F[3]); print "$F[0]\t".($start<0 ? 0 : $start)."\t$F[1]\t$F[3]\t$F[2]\n";' > new_TR_Colch_Hyli_AS_rsem.rep_pirna.bed
