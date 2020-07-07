#!/bin/bash -l
#SBATCH --job-name=get_olap_BED_ping
#SBATCH -c 1
#SBATCH --mem=60G
#SBATCH -t 10:00:00
#SBATCH --error=get_olap_BED_phasing.err
#SBATCH --output=get_olap_BED_phasing.out


cat Colch_Hyli_SENSE_Bowtie_sorted.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 0) {next;} chomp; $end=$F[1]+length($F[3]); print "$F[0]\t$F[1]\t$end\t$F[3]\t$F[2]\n";' > Colch_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed

cat Colch_Hywi_SENSE_Bowtie_sorted.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 0) {next;} chomp; $end=$F[1]+length($F[3]); print "$F[0]\t$F[1]\t$end\t$F[3]\t$F[2]\n";' > Colch_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed

cat WT_Hyli_SENSE_Bowtie_sorted.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 0) {next;} chomp; $end=$F[1]+length($F[3]); print "$F[0]\t$F[1]\t$end\t$F[3]\t$F[2]\n";' > WT_Hyli_SENSE_Bowtie_sorted.rep_pirna.bed

cat WT_Hywi_SENSE_Bowtie_sorted.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 0) {next;} chomp; $end=$F[1]+length($F[3]); print "$F[0]\t$F[1]\t$end\t$F[3]\t$F[2]\n";' > WT_Hywi_SENSE_Bowtie_sorted.rep_pirna.bed



cat Colch_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 0) {next;} chomp; $start=$F[1]-length($F[3]); print "$F[0]\t".($start<0 ? 0 : $start)."\t$F[1]\t$F[3]\t$F[2]\n";' > Colch_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.bed

cat Colch_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 0) {next;} chomp; $start=$F[1]-length($F[3]); print "$F[0]\t".($start<0 ? 0 : $start)."\t$F[1]\t$F[3]\t$F[2]\n";' > Colch_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.bed

cat WT_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 0) {next;} chomp; $start=$F[1]-length($F[3]); print "$F[0]\t".($start<0 ? 0 : $start)."\t$F[1]\t$F[3]\t$F[2]\n";' > WT_Hyli_ANTISENSE_Bowtie_sorted.rep_pirna.bed

cat WT_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.txt | perl -ane 'if ($F[0] eq "*" || $F[2] < 0) {next;} chomp; $start=$F[1]-length($F[3]); print "$F[0]\t".($start<0 ? 0 : $start)."\t$F[1]\t$F[3]\t$F[2]\n";' > WT_Hywi_ANTISENSE_Bowtie_sorted.rep_pirna.bed
