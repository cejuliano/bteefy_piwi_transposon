setwd("/group/julianolab/bteefy/piwi_revisions/ping_pong")
data.out <- "/group/julianolab/bteefy/piwi_revisions/ping_pong"


#Load Matrices of piRNA overlap events

overlap_matrices <- list(read.table("WT_HywiS_HywiAS.overlap.bed"),read.table("WT_HywiS_HyliAS.overlap.bed"), read.table("WT_HyliS_HyliAS.overlap.bed"),read.table("WT_HyliS_HywiAS.overlap.bed"),read.table("Colch_HywiS_HywiAS.overlap.bed"),read.table("Colch_HywiS_HyliAS.overlap.bed"),read.table("Colch_HyliS_HyliAS.overlap.bed"),read.table("Colch_HyliS_HywiAS.overlap.bed"))

#Generate a function that provides the frequency of overlap events at a given distance between piRNA 5' ends as a frequency

Generate_Freq <- function(x){
  x.sub <- subset(x, V11 > -1 & V11 < 21)
  x.table <- as.data.frame(table(x.sub$V11))
  return(x.table)
}

Ping_Pong_List <- vector("list",length(overlap_matrices))

for (i in 1:length(overlap_matrices)){
  Ping_Pong_List[[i]] <- Generate_Freq(overlap_matrices[[i]])
  freq <- paste("Frequency_", i)
  colnames(Ping_Pong_List[[i]]) <- c("Overlap_Length", freq)
}

Col_Names <- c("Overlap_Length", "WT_HywiS_HywiAS","WT_HywiS_HyliAS", "WT_HyliS_HyliAS", "WT_HyliS_HywiAS", "Colch_HywiS_HywiAS", "Colch_HywiS_HyliAS", "Colch_HyliS_HyliAS", "Colch_HyliS_HywiAS")

Ping_Pong_Overlap_Matrix <- Reduce(function(...) merge(..., by = "Overlap_Length"), Ping_Pong_List)

colnames(Ping_Pong_Overlap_Matrix) <- paste(Col_Names, sep = "")

write.table(Ping_Pong_Overlap_Matrix, file = "Ping_Pong_Overlap_Matrix")