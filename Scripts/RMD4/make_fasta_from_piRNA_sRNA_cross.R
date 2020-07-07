setwd("/group/julianolab/bteefy/piwi_revisions/small_RNA")
data.out <- "/group/julianolab/bteefy/piwi_revisions/small_RNA"

#contrast with Int_S and Hywi


Int_Hywi_S_Reads <- read.table("Int_S_low_removed_test_count_Hywi", header = F)


seqs_Int_Hywi_S <- as.data.frame(seq(from = 1, to = nrow(Int_Hywi_S_Reads)))


seqs_Int_Hywi_S$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Int_Hywi_S), by = 1)), sep = "_")


seqs_Int_Hywi_S <- as.data.frame(seqs_Int_Hywi_S$seqs)


colnames(seqs_Int_Hywi_S) <- "V1"


Int_Hywi_S_Reads_Fasta <- rbind(seqs_Int_Hywi_S, Int_Hywi_S_Reads)


S <- nrow(seqs_Int_Hywi_S)


summed_Int_Hywi_S_Reads_Fasta <- as.data.frame(Int_Hywi_S_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Int_Hywi_S_Reads_Fasta, file = "Int_Hywi_S_Reads_test.fa", col.names = F, row.names = F, quote = F)

rm(Int_Hywi_S_Reads)
rm(seqs_Int_Hywi_S)
rm(Int_Hywi_S_Reads_Fasta)
rm(S)
rm(summed_Int_Hywi_S_Reads_Fasta)

#contrast with Int_AS and Hywi


Int_Hywi_AS_Reads <- read.table("Int_AS_low_removed_test_count_Hywi", header = F)


seqs_Int_Hywi_AS <- as.data.frame(seq(from = 1, to = nrow(Int_Hywi_AS_Reads)))


seqs_Int_Hywi_AS$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Int_Hywi_AS), by = 1)), sep = "_")


seqs_Int_Hywi_AS <- as.data.frame(seqs_Int_Hywi_AS$seqs)


colnames(seqs_Int_Hywi_AS) <- "V1"


Int_Hywi_AS_Reads_Fasta <- rbind(seqs_Int_Hywi_AS, Int_Hywi_AS_Reads)


S <- nrow(seqs_Int_Hywi_AS)


summed_Int_Hywi_AS_Reads_Fasta <- as.data.frame(Int_Hywi_AS_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Int_Hywi_AS_Reads_Fasta, file = "Int_Hywi_AS_Reads_test.fa", col.names = F, row.names = F, quote = F)


rm(Int_Hywi_AS_Reads)
rm(seqs_Int_Hywi_AS)
rm(Int_Hywi_AS_Reads_Fasta)
rm(S)
rm(summed_Int_Hywi_AS_Reads_Fasta)


#repeat with Ecto


Ecto_Hywi_S_Reads <- read.table("Ecto_S_low_removed_test_count_Hywi", header = F)


seqs_Ecto_Hywi_S <- as.data.frame(seq(from = 1, to = nrow(Ecto_Hywi_S_Reads)))


seqs_Ecto_Hywi_S$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Ecto_Hywi_S), by = 1)), sep = "_")


seqs_Ecto_Hywi_S <- as.data.frame(seqs_Ecto_Hywi_S$seqs)


colnames(seqs_Ecto_Hywi_S) <- "V1"


Ecto_Hywi_S_Reads_Fasta <- rbind(seqs_Ecto_Hywi_S, Ecto_Hywi_S_Reads)


S <- nrow(seqs_Ecto_Hywi_S)


summed_Ecto_Hywi_S_Reads_Fasta <- as.data.frame(Ecto_Hywi_S_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Ecto_Hywi_S_Reads_Fasta, file = "Ecto_Hywi_S_Reads_test.fa", col.names = F, row.names = F, quote = F)


rm(Ecto_Hywi_S_Reads)
rm(seqs_Ecto_Hywi_S)
rm(Ecto_Hywi_S_Reads_Fasta)
rm(S)
rm(summed_Ecto_Hywi_S_Reads_Fasta)



Ecto_Hywi_AS_Reads <- read.table("Ecto_AS_low_removed_test_count_Hywi", header = F)


seqs_Ecto_Hywi_AS <- as.data.frame(seq(from = 1, to = nrow(Ecto_Hywi_AS_Reads)))


seqs_Ecto_Hywi_AS$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Ecto_Hywi_AS), by = 1)), sep = "_")


seqs_Ecto_Hywi_AS <- as.data.frame(seqs_Ecto_Hywi_AS$seqs)


colnames(seqs_Ecto_Hywi_AS) <- "V1"


Ecto_Hywi_AS_Reads_Fasta <- rbind(seqs_Ecto_Hywi_AS, Ecto_Hywi_AS_Reads)


S <- nrow(seqs_Ecto_Hywi_AS)


summed_Ecto_Hywi_AS_Reads_Fasta <- as.data.frame(Ecto_Hywi_AS_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Ecto_Hywi_AS_Reads_Fasta, file = "Ecto_Hywi_AS_Reads_test.fa", col.names = F, row.names = F, quote = F)


rm(Ecto_Hywi_AS_Reads)
rm(seqs_Ecto_Hywi_AS)
rm(Ecto_Hywi_AS_Reads_Fasta)
rm(S)
rm(summed_Ecto_Hywi_AS_Reads_Fasta)



#repeat with Endo


Endo_Hywi_S_Reads <- read.table("Endo_S_low_removed_test_count_Hywi", header = F)


seqs_Endo_Hywi_S <- as.data.frame(seq(from = 1, to = nrow(Endo_Hywi_S_Reads)))


seqs_Endo_Hywi_S$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Endo_Hywi_S), by = 1)), sep = "_")


seqs_Endo_Hywi_S <- as.data.frame(seqs_Endo_Hywi_S$seqs)


colnames(seqs_Endo_Hywi_S) <- "V1"


Endo_Hywi_S_Reads_Fasta <- rbind(seqs_Endo_Hywi_S, Endo_Hywi_S_Reads)


S <- nrow(seqs_Endo_Hywi_S)


summed_Endo_Hywi_S_Reads_Fasta <- as.data.frame(Endo_Hywi_S_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Endo_Hywi_S_Reads_Fasta, file = "Endo_Hywi_S_Reads_test.fa", col.names = F, row.names = F, quote = F)



rm(Endo_Hywi_S_Reads)
rm(seqs_Endo_Hywi_S)
rm(Endo_Hywi_S_Reads_Fasta)
rm(S)
rm(summed_Endo_Hywi_S_Reads_Fasta)




Endo_Hywi_AS_Reads <- read.table("Endo_AS_low_removed_test_count_Hywi", header = F)


seqs_Endo_Hywi_AS <- as.data.frame(seq(from = 1, to = nrow(Endo_Hywi_AS_Reads)))


seqs_Endo_Hywi_AS$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Endo_Hywi_AS), by = 1)), sep = "_")


seqs_Endo_Hywi_AS <- as.data.frame(seqs_Endo_Hywi_AS$seqs)


colnames(seqs_Endo_Hywi_AS) <- "V1"


Endo_Hywi_AS_Reads_Fasta <- rbind(seqs_Endo_Hywi_AS, Endo_Hywi_AS_Reads)


S <- nrow(seqs_Endo_Hywi_AS)


summed_Endo_Hywi_AS_Reads_Fasta <- as.data.frame(Endo_Hywi_AS_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Endo_Hywi_AS_Reads_Fasta, file = "Endo_Hywi_AS_Reads_test.fa", col.names = F, row.names = F, quote = F)


rm(Endo_Hywi_AS_Reads)
rm(seqs_Endo_Hywi_AS)
rm(Endo_Hywi_AS_Reads_Fasta)
rm(S)
rm(summed_Endo_Hywi_AS_Reads_Fasta)


#repeat with Hyli


#contrast with Int_S and Hyli


Int_Hyli_S_Reads <- read.table("Int_S_low_removed_test_count_Hyli", header = F)


seqs_Int_Hyli_S <- as.data.frame(seq(from = 1, to = nrow(Int_Hyli_S_Reads)))


seqs_Int_Hyli_S$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Int_Hyli_S), by = 1)), sep = "_")


seqs_Int_Hyli_S <- as.data.frame(seqs_Int_Hyli_S$seqs)


colnames(seqs_Int_Hyli_S) <- "V1"


Int_Hyli_S_Reads_Fasta <- rbind(seqs_Int_Hyli_S, Int_Hyli_S_Reads)


S <- nrow(seqs_Int_Hyli_S)


summed_Int_Hyli_S_Reads_Fasta <- as.data.frame(Int_Hyli_S_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Int_Hyli_S_Reads_Fasta, file = "Int_Hyli_S_Reads_test.fa", col.names = F, row.names = F, quote = F)


rm(Int_Hyli_S_Reads)
rm(seqs_Int_Hyli_S)
rm(Int_Hyli_S_Reads_Fasta)
rm(S)
rm(summed_Int_Hyli_S_Reads_Fasta)


#contrast with Int_AS and Hyli


Int_Hyli_AS_Reads <- read.table("Int_AS_low_removed_test_count_Hyli", header = F)


seqs_Int_Hyli_AS <- as.data.frame(seq(from = 1, to = nrow(Int_Hyli_AS_Reads)))


seqs_Int_Hyli_AS$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Int_Hyli_AS), by = 1)), sep = "_")


seqs_Int_Hyli_AS <- as.data.frame(seqs_Int_Hyli_AS$seqs)


colnames(seqs_Int_Hyli_AS) <- "V1"


Int_Hyli_AS_Reads_Fasta <- rbind(seqs_Int_Hyli_AS, Int_Hyli_AS_Reads)


S <- nrow(seqs_Int_Hyli_AS)


summed_Int_Hyli_AS_Reads_Fasta <- as.data.frame(Int_Hyli_AS_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Int_Hyli_AS_Reads_Fasta, file = "Int_Hyli_AS_Reads_test.fa", col.names = F, row.names = F, quote = F)


rm(Int_Hyli_AS_Reads)
rm(seqs_Int_Hyli_AS)
rm(Int_Hyli_AS_Reads_Fasta)
rm(S)
rm(summed_Int_Hyli_AS_Reads_Fasta)


#repeat with Ecto


Ecto_Hyli_S_Reads <- read.table("Ecto_S_low_removed_test_count_Hyli", header = F)


seqs_Ecto_Hyli_S <- as.data.frame(seq(from = 1, to = nrow(Ecto_Hyli_S_Reads)))


seqs_Ecto_Hyli_S$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Ecto_Hyli_S), by = 1)), sep = "_")


seqs_Ecto_Hyli_S <- as.data.frame(seqs_Ecto_Hyli_S$seqs)


colnames(seqs_Ecto_Hyli_S) <- "V1"


Ecto_Hyli_S_Reads_Fasta <- rbind(seqs_Ecto_Hyli_S, Ecto_Hyli_S_Reads)


S <- nrow(seqs_Ecto_Hyli_S)


summed_Ecto_Hyli_S_Reads_Fasta <- as.data.frame(Ecto_Hyli_S_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Ecto_Hyli_S_Reads_Fasta, file = "Ecto_Hyli_S_Reads_test.fa", col.names = F, row.names = F, quote = F)


rm(Ecto_Hyli_S_Reads)
rm(seqs_Ecto_Hyli_S)
rm(Ecto_Hyli_S_Reads_Fasta)
rm(S)
rm(summed_Ecto_Hyli_S_Reads_Fasta)



Ecto_Hyli_AS_Reads <- read.table("Ecto_AS_low_removed_test_count_Hyli", header = F)


seqs_Ecto_Hyli_AS <- as.data.frame(seq(from = 1, to = nrow(Ecto_Hyli_AS_Reads)))


seqs_Ecto_Hyli_AS$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Ecto_Hyli_AS), by = 1)), sep = "_")


seqs_Ecto_Hyli_AS <- as.data.frame(seqs_Ecto_Hyli_AS$seqs)


colnames(seqs_Ecto_Hyli_AS) <- "V1"


Ecto_Hyli_AS_Reads_Fasta <- rbind(seqs_Ecto_Hyli_AS, Ecto_Hyli_AS_Reads)


S <- nrow(seqs_Ecto_Hyli_AS)


summed_Ecto_Hyli_AS_Reads_Fasta <- as.data.frame(Ecto_Hyli_AS_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Ecto_Hyli_AS_Reads_Fasta, file = "Ecto_Hyli_AS_Reads_test.fa", col.names = F, row.names = F, quote = F)


rm(Ecto_Hyli_AS_Reads)
rm(seqs_Ecto_Hyli_AS)
rm(Ecto_Hyli_AS_Reads_Fasta)
rm(S)
rm(summed_Ecto_Hyli_AS_Reads_Fasta)




#repeat with Endo


Endo_Hyli_S_Reads <- read.table("Endo_S_low_removed_test_count_Hyli", header = F)


seqs_Endo_Hyli_S <- as.data.frame(seq(from = 1, to = nrow(Endo_Hyli_S_Reads)))


seqs_Endo_Hyli_S$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Endo_Hyli_S), by = 1)), sep = "_")


seqs_Endo_Hyli_S <- as.data.frame(seqs_Endo_Hyli_S$seqs)


colnames(seqs_Endo_Hyli_S) <- "V1"


Endo_Hyli_S_Reads_Fasta <- rbind(seqs_Endo_Hyli_S, Endo_Hyli_S_Reads)


S <- nrow(seqs_Endo_Hyli_S)


summed_Endo_Hyli_S_Reads_Fasta <- as.data.frame(Endo_Hyli_S_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Endo_Hyli_S_Reads_Fasta, file = "Endo_Hyli_S_Reads_test.fa", col.names = F, row.names = F, quote = F)




rm(Endo_Hyli_S_Reads)
rm(seqs_Endo_Hyli_S)
rm(Endo_Hyli_S_Reads_Fasta)
rm(S)
rm(summed_Endo_Hyli_S_Reads_Fasta)



Endo_Hyli_AS_Reads <- read.table("Endo_AS_low_removed_test_count_Hyli", header = F)


seqs_Endo_Hyli_AS <- as.data.frame(seq(from = 1, to = nrow(Endo_Hyli_AS_Reads)))


seqs_Endo_Hyli_AS$seqs <- paste(">", (seq(from = 1, to = nrow(seqs_Endo_Hyli_AS), by = 1)), sep = "_")


seqs_Endo_Hyli_AS <- as.data.frame(seqs_Endo_Hyli_AS$seqs)


colnames(seqs_Endo_Hyli_AS) <- "V1"


Endo_Hyli_AS_Reads_Fasta <- rbind(seqs_Endo_Hyli_AS, Endo_Hyli_AS_Reads)


S <- nrow(seqs_Endo_Hyli_AS)


summed_Endo_Hyli_AS_Reads_Fasta <- as.data.frame(Endo_Hyli_AS_Reads_Fasta[kronecker(1:S, c(0, S), "+"), ])


write.table(summed_Endo_Hyli_AS_Reads_Fasta, file = "Endo_Hyli_AS_Reads_test.fa", col.names = F, row.names = F, quote = F)

rm(Endo_Hyli_AS_Reads)
rm(seqs_Endo_Hyli_AS)
rm(Endo_Hyli_AS_Reads_Fasta)
rm(S)
rm(summed_Endo_Hyli_AS_Reads_Fasta)