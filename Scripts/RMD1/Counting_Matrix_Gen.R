setwd("/group/julianolab/bteefy/piwi_revisions")
data.out <- "/group/julianolab/bteefy/piwi_revisions"

library(data.table)
library(plyr)

bed_file_matrices <- list(read.table("WT_Hywi_ANTISENSE_Bowtie_sorted.bed"),read.table("WT_Hywi_SENSE_Bowtie_sorted.bed"),read.table("WT_Hyli_ANTISENSE_Bowtie_sorted.bed"),read.table("WT_Hyli_SENSE_Bowtie_sorted.bed"),read.table("Colch_Hywi_ANTISENSE_Bowtie_sorted.bed"),read.table("Colch_Hywi_SENSE_Bowtie_sorted.bed"),read.table("Colch_Hyli_ANTISENSE_Bowtie_sorted.bed"),read.table("Colch_Hyli_SENSE_Bowtie_sorted.bed"),read.table("WT_Degradome_SENSE_Bowtie_sorted.bed"),read.table("Colch_Degradome_SENSE_Bowtie_sorted.bed"))

Count_Function <- function(x){
  x <- x[,c(1,4)]
  colnames(x) <- c("ID", "piRNA")
  y <- setDT(x)[, .N, by=piRNA]
  z <- merge(x, y, by = "piRNA", all = T)
  a <- setDT(x)[, .N, by=ID]
  colnames(a) <- c("ID", "chrom_count")
  b <- merge(z, a, by = "ID", all = T)
  c <- data.table(b, key = "ID")
  y <- c[,list(counts=sum(1/N)), by="ID"]
  return(y)
}

Bed_File_List <- vector("list",length(bed_file_matrices))

for (i in 1:length(bed_file_matrices)){
  Bed_File_List[[i]] <- Count_Function(bed_file_matrices[[i]])
}

Col_Names <- c("ID", "WT_Hywi_AS_Counts", "WT_Hywi_S_Counts", "WT_Hyli_AS_Counts", "WT_Hyli_S_Counts", "Colch_Hywi_AS_Counts", "Colch_Hywi_S_Counts", "Colch_Hyli_AS_Counts", "Colch_Hyli_S_Counts", "WT_Deg_S_Counts", "Colch_Deg_S_Counts")

Counts_Matrix <- Reduce((function() {counter = 0
function(x, y) {
  counter <<- counter + 1
  d = merge(x, y, all = T, by = "ID")
  setnames(d, c(head(names(d), -1), paste0('y.', counter)))
}})(), Bed_File_List)

colnames(Counts_Matrix) <- paste(Col_Names, sep = "")

Counts_Matrix[is.na(Counts_Matrix)] <- 0

write.table(Counts_Matrix, file = "piRNA_Deg_Count_Matrix")