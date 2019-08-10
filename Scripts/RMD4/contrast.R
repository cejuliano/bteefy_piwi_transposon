#set the working directory

setwd("/group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts")
data.out <- "/group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts"

#Load the ShortRead program

library(ShortRead)

#Reformat into characters

####Hywi

HywipiRNAs <- read.table("HywipiRNAs.txt", sep = "\t")

#piRNA reformatting

HywipiRNAs$seq <- as.character(HywipiRNAs$seq)
HywipiRNAs$idq <- as.character(HywipiRNAs$idq)
write.table(HywipiRNAs, file = "HywipiRNAs.txt", sep = "\t")

#remove
rm(HywipiRNAs)

####Hyli

HylipiRNAs <- read.table("HylipiRNAs.txt", sep = "\t")

#piRNA reformatting

HylipiRNAs$seq <- as.character(HylipiRNAs$seq)
HylipiRNAs$idq <- as.character(HylipiRNAs$idq)
write.table(HylipiRNAs, file = "HylipiRNAs.txt", sep = "\t")

#remove
rm(HylipiRNAs)

####Ecto

EctoRNAs <- read.table("EctoRNAs.txt", sep = "\t")

#piRNA reformatting

EctoRNAs$seq <- as.character(EctoRNAs$seq)
EctoRNAs$idq <- as.character(EctoRNAs$idq)
write.table(EctoRNAs, file = "EctoRNAs.txt", sep = "\t")

#remove
rm(EctoRNAs)

####Endo

EndoRNAs <- read.table("EndoRNAs.txt", sep = "\t")

#piRNA reformatting

EndoRNAs$seq <- as.character(EndoRNAs$seq)
EndoRNAs$idq <- as.character(EndoRNAs$idq)
write.table(EndoRNAs, file = "EndoRNAs.txt", sep = "\t")

#remove
rm(EndoRNAs)

####Interstitial

IntRNAs <- read.table("IntRNAs.txt", sep = "\t")

#piRNA reformatting

IntRNAs$seq <- as.character(IntRNAs$seq)
IntRNAs$idq <- as.character(IntRNAs$idq)
write.table(IntRNAs, file = "IntRNAs.txt", sep = "\t")

#remove
rm(IntRNAs)

#contrast with Ecto and Hywi

HywipiRNAs <- read.table("HywipiRNAs.txt", sep = "\t")
EctoRNAs <- read.table("EctoRNAs.txt", sep = "\t")


EctoHywi <- HywipiRNAs[HywipiRNAs$seq %in% EctoRNAs$seq, ]
rm(HywipiRNAs, EctoRNAs)
EctoHywi$idq <- paste(">", EctoHywi$idq, sep = "_")
EctoHywi <- do.call(rbind, lapply(seq(nrow(EctoHywi)), function(i) t(EctoHywi[i, ])))
write.table(EctoHywi, row.names = FALSE, col.names = FALSE, quote = FALSE, file = "EctoHywi.fasta")
rm(EctoHywi)

#contrast with Endo and Hywi

HywipiRNAs <- read.table("HywipiRNAs.txt", sep = "\t")
EndoRNAs <- read.table("EndoRNAs.txt", sep = "\t")


EndoHywi <- HywipiRNAs[HywipiRNAs$seq %in% EndoRNAs$seq, ]
rm(HywipiRNAs, EndoRNAs)
EndoHywi$idq <- paste(">", EndoHywi$idq, sep = "_")
EndoHywi <- do.call(rbind, lapply(seq(nrow(EndoHywi)), function(i) t(EndoHywi[i, ])))
write.table(EndoHywi, row.names = FALSE, col.names = FALSE, quote = FALSE, file = "EndoHywi.fasta")
rm(EndoHywi)

#contrast with Int and Hywi

HywipiRNAs <- read.table("HywipiRNAs.txt", sep = "\t")
IntRNAs <- read.table("IntRNAs.txt", sep = "\t")


EndoHywi <- HywipiRNAs[HywipiRNAs$seq %in% IntRNAs$seq, ]
rm(HywipiRNAs, IntRNAs)
IntHywi$idq <- paste(">", IntHywi$idq, sep = "_")
IntHywi <- do.call(rbind, lapply(seq(nrow(IntHywi)), function(i) t(IntHywi[i, ])))
write.table(IntHywi, row.names = FALSE, col.names = FALSE, quote = FALSE, file = "IntHywi.fasta")
rm(IntHywi)

#contrast with Ecto and Hyli

HylipiRNAs <- read.table("HylipiRNAs.txt", sep = "\t")
EctoRNAs <- read.table("EctoRNAs.txt", sep = "\t")


EctoHyli <- HywipiRNAs[HylipiRNAs$seq %in% EctoRNAs$seq, ]
rm(HylipiRNAs, EctoRNAs)
EctoHyli$idq <- paste(">", EctoHyli$idq, sep = "_")
EctoHyli <- do.call(rbind, lapply(seq(nrow(EctoHyli)), function(i) t(EctoHyli[i, ])))
write.table(EctoHyli, row.names = FALSE, col.names = FALSE, quote = FALSE, file = "EctoHyli.fasta")
rm(EctoHyli)

#contrast with Endo and Hyli

HylipiRNAs <- read.table("HylipiRNAs.txt", sep = "\t")
EndoRNAs <- read.table("EndoRNAs.txt", sep = "\t")


EndoHyli <- HywipiRNAs[HylipiRNAs$seq %in% EndoRNAs$seq, ]
rm(HylipiRNAs, EndoRNAs)
EndoHyli$idq <- paste(">", EndoHyli$idq, sep = "_")
EndoHyli <- do.call(rbind, lapply(seq(nrow(EndoHyli)), function(i) t(EndoHyli[i, ])))
write.table(EndoHyli, row.names = FALSE, col.names = FALSE, quote = FALSE, file = "EndoHyli.fasta")
rm(EndoHyli)

#contrast with Int and Hyli

HylipiRNAs <- read.table("HylipiRNAs.txt", sep = "\t")
IntRNAs <- read.table("IntRNAs.txt", sep = "\t")


IntHyli <- HywipiRNAs[HylipiRNAs$seq %in% IntRNAs$seq, ]
rm(HylipiRNAs, IntRNAs)
IntHyli$idq <- paste(">", IntHyli$idq, sep = "_")
IntHyli <- do.call(rbind, lapply(seq(nrow(IntHyli)), function(i) t(IntHyli[i, ])))
write.table(IntHyli, row.names = FALSE, col.names = FALSE, quote = FALSE, file = "IntHyli.fasta")
rm(IntHyli)

#done