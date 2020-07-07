setwd("/group/julianolab/bteefy/piwi_revisions")
data.out <- "/group/julianolab/bteefy/piwi_revisions"

#Colch piRNAs

#Hywi

Hywi_Colch_mm <- read.table("Colch_Hywi_ANTISENSE_Bowtie_sorted.bed", header = F)

Hywi_Colch_mm_uni <-as.data.frame(Hywi_Colch_mm$V1[!duplicated(Hywi_Colch_mm$V4)])

rm(Hywi_Colch_mm)

Hywi_Colch_mm_uni_count <- nrow(Hywi_Colch_mm_uni)

rm(Hywi_Colch_mm_uni)

Hywi_Colch_no_mm <- read.table("Colch_Hywi_ANTISENSE_Bowtie_no_mm_sorted.bed", header = F)

Hywi_Colch_no_mm_uni <-as.data.frame(Hywi_Colch_no_mm$V1[!duplicated(Hywi_Colch_no_mm$V4)])

rm(Hywi_Colch_no_mm)

Hywi_Colch_no_mm_uni_count <- nrow(Hywi_Colch_no_mm_uni)

rm(Hywi_Colch_no_mm_uni)

#Hyli

Hyli_Colch_mm <- read.table("Colch_Hyli_ANTISENSE_Bowtie_sorted.bed", header = F)

Hyli_Colch_mm_uni <-as.data.frame(Hyli_Colch_mm$V1[!duplicated(Hyli_Colch_mm$V4)])

rm(Hyli_Colch_mm)

Hyli_Colch_mm_uni_count <- nrow(Hyli_Colch_mm_uni)

rm(Hyli_Colch_mm_uni)

Hyli_Colch_no_mm <- read.table("Colch_Hyli_ANTISENSE_Bowtie_no_mm_sorted.bed", header = F)

Hyli_Colch_no_mm_uni <-as.data.frame(Hyli_Colch_no_mm$V1[!duplicated(Hyli_Colch_no_mm$V4)])

rm(Hyli_Colch_no_mm)

Hyli_Colch_no_mm_uni_count <- nrow(Hyli_Colch_no_mm_uni)

rm(Hyli_Colch_no_mm_uni)

#Caluclate Colch Percentage of piRNAs that remain after allwoing for no mismatches

Perc_Colch_Hyli <- Hyli_Colch_no_mm_uni_count/Hyli_Colch_mm_uni_count

Perc_Colch_Hywi <- Hywi_Colch_no_mm_uni_count/Hywi_Colch_mm_uni_count

Perc_Colch <- 1 - ((Perc_Colch_Hyli + Perc_Colch_Hywi)/2)

###### Repeat with WT samples

#WT piRNAs

#Hywi

Hywi_WT_mm <- read.table("WT_Hywi_ANTISENSE_Bowtie_sorted.bed", header = F)

Hywi_WT_mm_uni <-as.data.frame(Hywi_WT_mm$V1[!duplicated(Hywi_WT_mm$V4)])

rm(Hywi_WT_mm)

Hywi_WT_mm_uni_count <- nrow(Hywi_WT_mm_uni)

rm(Hywi_WT_mm_uni)

Hywi_WT_no_mm <- read.table("WT_Hywi_ANTISENSE_Bowtie_no_mm_sorted.bed", header = F)

Hywi_WT_no_mm_uni <-as.data.frame(Hywi_WT_no_mm$V1[!duplicated(Hywi_WT_no_mm$V4)])

rm(Hywi_WT_no_mm)

Hywi_WT_no_mm_uni_count <- nrow(Hywi_WT_no_mm_uni)

rm(Hywi_WT_no_mm_uni)

#Hyli

Hyli_WT_mm <- read.table("WT_Hyli_ANTISENSE_Bowtie_sorted.bed", header = F)

Hyli_WT_mm_uni <-as.data.frame(Hyli_WT_mm$V1[!duplicated(Hyli_WT_mm$V4)])

rm(Hyli_WT_mm)

Hyli_WT_mm_uni_count <- nrow(Hyli_WT_mm_uni)

rm(Hyli_WT_mm_uni)

Hyli_WT_no_mm <- read.table("WT_Hyli_ANTISENSE_Bowtie_no_mm_sorted.bed", header = F)

Hyli_WT_no_mm_uni <-as.data.frame(Hyli_WT_no_mm$V1[!duplicated(Hyli_WT_no_mm$V4)])

rm(Hyli_WT_no_mm)

Hyli_WT_no_mm_uni_count <- nrow(Hyli_WT_no_mm_uni)

rm(Hyli_WT_no_mm_uni)

#Caluclate WT Percentage of piRNAs that remain after allwoing for no mismatches

Perc_WT_Hyli <- Hyli_WT_no_mm_uni_count/Hyli_WT_mm_uni_count

Perc_WT_Hywi <- Hywi_WT_no_mm_uni_count/Hywi_WT_mm_uni_count

Perc_WT <- 1 - ((Perc_WT_Hyli + Perc_WT_Hywi)/2)

#make dataframe

Percentages <- list(Perc_WT, Perc_Colch)

Percentages.df <- as.data.frame(Percentages)

write.table(Percentages.df, file = "Percentages_no_mm.txt")
