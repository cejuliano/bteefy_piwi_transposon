setwd("/group/julianolab/bteefy/piwi_revisions/small_RNA")
data.out <- "/group/julianolab/bteefy/piwi_revisions/small_RNA"

library(data.table)
library(plyr)

bed_file_matrices <- list(read.table("Endo_Hyli_AS_mapped_bowtie_sorted.bed"),read.table("Endo_Hyli_S_mapped_bowtie_sorted.bed"),read.table("Endo_Hywi_AS_mapped_bowtie_sorted.bed"),read.table("Endo_Hywi_S_mapped_bowtie_sorted.bed"),read.table("Ecto_Hyli_AS_mapped_bowtie_sorted.bed"),read.table("Ecto_Hyli_S_mapped_bowtie_sorted.bed"),read.table("Ecto_Hywi_AS_mapped_bowtie_sorted.bed"),read.table("Ecto_Hywi_S_mapped_bowtie_sorted.bed"),read.table("Int_Hyli_AS_mapped_bowtie_sorted.bed"),read.table("Int_Hyli_S_mapped_bowtie_sorted.bed"),read.table("Int_Hywi_AS_mapped_bowtie_sorted.bed"),read.table("Int_Hywi_S_mapped_bowtie_sorted.bed"))

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

Col_Names <- c("ID", "Endo_Hyli_AS", "Endo_Hyli_S", "Endo_Hywi_AS", "Endo_Hywi_S", "Ecto_Hyli_AS", "Ecto_Hyli_S", "Ecto_Hywi_AS", "Ecto_Hywi_S", "Int_Hyli_AS", "Int_Hyli_S", "Int_Hywi_AS", "Int_Hywi_S")

Counts_Matrix <- Reduce((function() {counter = 0
function(x, y) {
  counter <<- counter + 1
  d = merge(x, y, all = T, by = "ID")
  setnames(d, c(head(names(d), -1), paste0('y.', counter)))
}})(), Bed_File_List)

colnames(Counts_Matrix) <- paste(Col_Names, sep = "")

Counts_Matrix[is.na(Counts_Matrix)] <- 0

write.table(Counts_Matrix, file = "Lin_Sorted_piRNA_Count_Matrix")