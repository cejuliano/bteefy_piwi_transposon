setwd("/group/julianolab/bteefy/piwi_revisions/ping_pong")
data.out <- "/group/julianolab/bteefy/piwi_revisions/ping_pong"

#Import piRNA overlap information

three_five_matrices <- list(read.table("WT_Hywi_SENSE_Bowtie_sorted_clean.overlap.bed"),read.table("WT_Hyli_SENSE_Bowtie_sorted_clean.overlap.bed"), read.table("Colch_Hywi_SENSE_Bowtie_sorted_clean.overlap.bed"),read.table("Colch_Hyli_SENSE_Bowtie_sorted_clean.overlap.bed"))

#Generate a function that 1) removes self-overlapping events 2) caluclates the 3'-5' overlap distance 3) specifies a range of -10 to 50 base pairs

Generate_Phas_Freq <- function(x){
  m<-which(!(x[,4]==x[,9]))
  x.df <- x[m, ]
  x.df$phas <- x.df$V7 - x.df$V3
  x.df <- subset(x.df, phas > -11)
  x.df <- subset(x.df, phas < 51)
  x.plotter <- as.data.frame(table(x.df$phas))
  }

Phasing_List <- vector("list",length(three_five_matrices))

for (i in 1:length(three_five_matrices)){
  Phasing_List[[i]] <- Generate_Phas_Freq(three_five_matrices[[i]])
  olap_length <- paste("Olap_", i)
  colnames(Phasing_List[[i]]) <- c("Length", olap_length)
}

Col_Names_Phasing <- c("Length", "WT_Hywi_S","WT_Hyli_S", "Colch_Hywi_S", "Colch_Hyli_S")

Phasing_Overlap_Matrix <- Reduce(function(...) merge(..., by = "Length"), Phasing_List)

colnames(Phasing_Overlap_Matrix) <- paste(Col_Names_Phasing, sep = "")

write.table(Phasing_Overlap_Matrix, file = "Phasing_Overlap_Matrix")