setwd("/group/julianolab/bteefy/piwi_revisions/small_RNA")
data.out <- "/group/julianolab/bteefy/piwi_revisions/small_RNA"

#Int

Int_S_Hywi <- read.table("Int_S_low_removed_test_count_Hywi", header = F)
Int_S_Hywi <- Int_S_Hywi[!duplicated(Int_S_Hywi$V1), ]
Int_S_Hywi <- as.data.frame(Int_S_Hywi)
colnames(Int_S_Hywi)[1] <- "seq"

Int_AS_Hywi <- read.table("Int_AS_low_removed_test_count_Hywi", header = F)
Int_AS_Hywi <- Int_AS_Hywi[!duplicated(Int_AS_Hywi$V1), ]
Int_AS_Hywi <- as.data.frame(Int_AS_Hywi)
colnames(Int_AS_Hywi)[1] <- "seq"

Int_Hywi <- merge(Int_S_Hywi, Int_AS_Hywi, by = "seq")

save(Int_Hywi, file = "Unduplicated_Int_Hywi_small_RNAs_crossref.Rda")

rm(Int_S_Hywi)
rm(Int_AS_Hywi)
rm(Int_Hywi)

Int_S_Hyli <- read.table("Int_S_low_removed_test_count_Hyli", header = F)
Int_S_Hyli <- Int_S_Hyli[!duplicated(Int_S_Hyli$V1), ]
Int_S_Hyli <- as.data.frame(Int_S_Hyli)
colnames(Int_S_Hyli)[1] <- "seq"

Int_AS_Hyli <- read.table("Int_AS_low_removed_test_count_Hyli", header = F)
Int_AS_Hyli <- Int_AS_Hyli[!duplicated(Int_AS_Hyli$V1), ]
Int_AS_Hyli <- as.data.frame(Int_S_Hyli)
colnames(Int_S_Hyli)[1] <- "seq"

Int_Hyli <- merge(Int_S_Hyli, Int_AS_Hyli, by = "seq")

save(Int_Hyli, file = "Unduplicated_Int_Hyli_small_RNAs_crossref.Rda")

rm(Int_S_Hyli)
rm(Int_AS_Hyli)
rm(Int_Hyli)


#Ecto

Ecto_S_Hywi <- read.table("Ecto_S_low_removed_test_count_Hywi", header = F)
Ecto_S_Hywi <- Ecto_S_Hywi[!duplicated(Ecto_S_Hywi$V1), ]
Ecto_S_Hywi <- as.data.frame(Ecto_S_Hywi)
colnames(Ecto_S_Hywi)[1] <- "seq"

Ecto_AS_Hywi <- read.table("Ecto_AS_low_removed_test_count_Hywi", header = F)
Ecto_AS_Hywi <- Ecto_AS_Hywi[!duplicated(Ecto_AS_Hywi$V1), ]
Ecto_AS_Hywi <- as.data.frame(Ecto_AS_Hywi)
colnames(Ecto_AS_Hywi)[1] <- "seq"

Ecto_Hywi <- merge(Ecto_S_Hywi, Ecto_AS_Hywi, by = "seq")

save(Ecto_Hywi, file = "Unduplicated_Ecto_Hywi_small_RNAs_crossref.Rda")

rm(Ecto_S_Hywi)
rm(Ecto_AS_Hywi)
rm(Ecto_Hywi)

Ecto_S_Hyli <- read.table("Ecto_S_low_removed_test_count_Hyli", header = F)
Ecto_S_Hyli <- Ecto_S_Hyli[!duplicated(Ecto_S_Hyli$V1), ]
Ecto_S_Hyli <- as.data.frame(Ecto_S_Hyli)
colnames(Ecto_S_Hyli)[1] <- "seq"

Ecto_AS_Hyli <- read.table("Ecto_AS_low_removed_test_count_Hyli", header = F)
Ecto_AS_Hyli <- Ecto_AS_Hyli[!duplicated(Ecto_AS_Hyli$V1), ]
Ecto_AS_Hyli <- as.data.frame(Ecto_S_Hyli)
colnames(Ecto_S_Hyli)[1] <- "seq"

Ecto_Hyli <- merge(Ecto_S_Hyli, Ecto_AS_Hyli, by = "seq")

save(Ecto_Hyli, file = "Unduplicated_Ecto_Hyli_small_RNAs_crossref.Rda")

rm(Ecto_S_Hyli)
rm(Ecto_AS_Hyli)
rm(Ecto_Hyli)

#Endo

Endo_S_Hywi <- read.table("Endo_S_low_removed_test_count_Hywi", header = F)
Endo_S_Hywi <- Endo_S_Hywi[!duplicated(Endo_S_Hywi$V1), ]
Endo_S_Hywi <- as.data.frame(Endo_S_Hywi)
colnames(Endo_S_Hywi)[1] <- "seq"

Endo_AS_Hywi <- read.table("Endo_AS_low_removed_test_count_Hywi", header = F)
Endo_AS_Hywi <- Endo_AS_Hywi[!duplicated(Endo_AS_Hywi$V1), ]
Endo_AS_Hywi <- as.data.frame(Endo_AS_Hywi)
colnames(Endo_AS_Hywi)[1] <- "seq"

Endo_Hywi <- merge(Endo_S_Hywi, Endo_AS_Hywi, by = "seq")

save(Endo_Hywi, file = "Unduplicated_Endo_Hywi_small_RNAs_crossref.Rda")

rm(Endo_S_Hywi)
rm(Endo_AS_Hywi)
rm(Endo_Hywi)

Endo_S_Hyli <- read.table("Endo_S_low_removed_test_count_Hyli", header = F)
Endo_S_Hyli <- Endo_S_Hyli[!duplicated(Endo_S_Hyli$V1), ]
Endo_S_Hyli <- as.data.frame(Endo_S_Hyli)
colnames(Endo_S_Hyli)[1] <- "seq"

Endo_AS_Hyli <- read.table("Endo_AS_low_removed_test_count_Hyli", header = F)
Endo_AS_Hyli <- Endo_AS_Hyli[!duplicated(Endo_AS_Hyli$V1), ]
Endo_AS_Hyli <- as.data.frame(Endo_S_Hyli)
colnames(Endo_S_Hyli)[1] <- "seq"

Endo_Hyli <- merge(Endo_S_Hyli, Endo_AS_Hyli, by = "seq")

save(Endo_Hyli, file = "Unduplicated_Endo_Hyli_small_RNAs_crossref.Rda")

rm(Endo_S_Hyli)
rm(Endo_AS_Hyli)
rm(Endo_Hyli)