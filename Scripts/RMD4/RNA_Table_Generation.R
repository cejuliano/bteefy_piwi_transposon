setwd("/group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts")
data.out <- "/group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts"


#now I will load the ShortRead program

library(ShortRead)

#now I will create dataframes for each of my FASTQ files
#the files I will use are WT Hywi piRNAs, WT Hyli piRNAs; ecto, endo, int libraries

#import Hywi piRNAs

fastq <- readFastq("/group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyWi_S196_L008_R1_001.full_trim.fq", withIds = T)
seq <- paste(fastq@sread)
idq <- paste(id(fastq))
HywipiRNAs <- data.frame(seq,idq)
rm(fastq,idq,seq)
write.table(HywipiRNAs, file = "HywipiRNAs.txt", sep = "\t")
rm(HywipiRNAs)

#repeat with Hyli piRNAs

fastq <- readFastq("/group/julianolab/bteefy/piRNADGE/Trimmed_Reads/WT-HyLi_S197_L008_R1_001.full_trim.fq", withIds = T)
seq <- paste(fastq@sread)
idq <- paste(id(fastq))
HylipiRNAs <- data.frame(seq,idq)
rm(fastq,idq,seq)
write.table(HylipiRNAs, file = "HylipiRNAs.txt", sep = "\t")
rm(HywipiRNAs)

#repeat with lineage-specific small RNAs

fastq <- readFastq("/group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024170_noadapt.fastq", withIds = T)
seq <- paste(fastq@sread)
idq <- paste(id(fastq))
EctoRNAs <- data.frame(seq,idq)
rm(fastq,idq,seq)
write.table(EctoRNAs, file = "EctoRNAs.txt", sep = "\t")
rm(EctoRNAs)

fastq <- readFastq("/group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024171_noadapt.fastq", withIds = T)
seq <- paste(fastq@sread)
idq <- paste(id(fastq))
EndoRNAs <- data.frame(seq,idq)
rm(fastq,idq,seq)
write.table(EndoRNAs, file = "EndoRNAs.txt", sep = "\t")
rm(EndoRNAs)

fastq <- readFastq("/group/julianolab/bteefy/lineage_seqs/Pulldown_SmallRNA_CrossOver/SRR1024172_noadapt.fastq", withIds = T)
seq <- paste(fastq@sread)
idq <- paste(id(fastq))
IntRNAs <- data.frame(seq,idq)
rm(fastq,idq,seq)
write.table(IntRNAs, file = "IntRNAs.txt", sep = "\t")
rm(IntRNAs)