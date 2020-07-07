setwd("/group/julianolab/bteefy/piwi_revisions/small_RNA")
data.out <- "/group/julianolab/bteefy/piwi_revisions/small_RNA"
#Load Hywi piRNAs

HywipiRNAs <- read.table("HywipiRNAs.txt", sep = "\t")

#Int_S

Int_S_RNAs <- read.table("Int_S_low_removed_test_count", header = F)

#contrast

Int_S_low_removed_hywi <- Int_S_RNAs[Int_S_RNAs$V1 %in% HywipiRNAs$seq, ]

write.table(Int_S_low_removed_hywi, file = "Int_S_low_removed_test_count_Hywi", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Int_S_RNAs)
rm(Int_S_low_removed_hywi)

#Int_AS

Int_AS_RNAs <- read.table("Int_AS_low_removed_test_count", header = F)

#contrast

Int_AS_low_removed_hywi <- Int_AS_RNAs[Int_AS_RNAs$V1 %in% HywipiRNAs$seq, ]

write.table(Int_AS_low_removed_hywi, file = "Int_AS_low_removed_test_count_Hywi", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Int_AS_RNAs)
rm(Int_AS_low_removed_hywi)





#Ecto_S

Ecto_S_RNAs <- read.table("Ecto_S_low_removed_test_count", header = F)

#contrast

Ecto_S_low_removed_hywi <- Ecto_S_RNAs[Ecto_S_RNAs$V1 %in% HywipiRNAs$seq, ]

write.table(Ecto_S_low_removed_hywi, file = "Ecto_S_low_removed_test_count_Hywi", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Ecto_S_RNAs)
rm(Ecto_S_low_removed_hywi)

#Ecto_AS

Ecto_AS_RNAs <- read.table("Ecto_AS_low_removed_test_count", header = F)

#contrast

Ecto_AS_low_removed_hywi <- Ecto_AS_RNAs[Ecto_AS_RNAs$V1 %in% HywipiRNAs$seq, ]

write.table(Ecto_AS_low_removed_hywi, file = "Ecto_AS_low_removed_test_count_Hywi", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Ecto_AS_RNAs)
rm(Ecto_AS_low_removed_hywi)




#Endo_S

Endo_S_RNAs <- read.table("Endo_S_low_removed_test_count", header = F)

#contrast

Endo_S_low_removed_hywi <- Endo_S_RNAs[Endo_S_RNAs$V1 %in% HywipiRNAs$seq, ]

write.table(Endo_S_low_removed_hywi, file = "Endo_S_low_removed_test_count_Hywi", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Endo_S_RNAs)
rm(Endo_S_low_removed_hywi)

#Endo_AS

Endo_AS_RNAs <- read.table("Endo_AS_low_removed_test_count", header = F)

#contrast

Endo_AS_low_removed_hywi <- Endo_AS_RNAs[Endo_AS_RNAs$V1 %in% HywipiRNAs$seq, ]

write.table(Endo_AS_low_removed_hywi, file = "Endo_AS_low_removed_test_count_Hywi", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Endo_AS_RNAs)
rm(Endo_AS_low_removed_hywi)


#now to remove Hywi and repeat with Hyli

rm(HywipiRNAs)

HylipiRNAs <- read.table("HylipiRNAs.txt", sep = "\t")





#Int_S

Int_S_RNAs <- read.table("Int_S_low_removed_test_count", header = F)

#contrast

Int_S_low_removed_Hyli <- Int_S_RNAs[Int_S_RNAs$V1 %in% HylipiRNAs$seq, ]

write.table(Int_S_low_removed_Hyli, file = "Int_S_low_removed_test_count_Hyli", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Int_S_RNAs)
rm(Int_S_low_removed_Hyli)

#Int_AS

Int_AS_RNAs <- read.table("Int_AS_low_removed_test_count", header = F)

#contrast

Int_AS_low_removed_Hyli <- Int_AS_RNAs[Int_AS_RNAs$V1 %in% HylipiRNAs$seq, ]

write.table(Int_AS_low_removed_Hyli, file = "Int_AS_low_removed_test_count_Hyli", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Int_AS_RNAs)
rm(Int_AS_low_removed_Hyli)





#Ecto_S

Ecto_S_RNAs <- read.table("Ecto_S_low_removed_test_count", header = F)

#contrast

Ecto_S_low_removed_Hyli <- Ecto_S_RNAs[Ecto_S_RNAs$V1 %in% HylipiRNAs$seq, ]

write.table(Ecto_S_low_removed_Hyli, file = "Ecto_S_low_removed_test_count_Hyli", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Ecto_S_RNAs)
rm(Ecto_S_low_removed_Hyli)

#Ecto_AS

Ecto_AS_RNAs <- read.table("Ecto_AS_low_removed_test_count", header = F)

#contrast

Ecto_AS_low_removed_Hyli <- Ecto_AS_RNAs[Ecto_AS_RNAs$V1 %in% HylipiRNAs$seq, ]

write.table(Ecto_AS_low_removed_Hyli, file = "Ecto_AS_low_removed_test_count_Hyli", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Ecto_AS_RNAs)
rm(Ecto_AS_low_removed_Hyli)




#Endo_S

Endo_S_RNAs <- read.table("Endo_S_low_removed_test_count", header = F)

#contrast

Endo_S_low_removed_Hyli <- Endo_S_RNAs[Endo_S_RNAs$V1 %in% HylipiRNAs$seq, ]

write.table(Endo_S_low_removed_Hyli, file = "Endo_S_low_removed_test_count_Hyli", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Endo_S_RNAs)
rm(Endo_S_low_removed_Hyli)

#Endo_AS

Endo_AS_RNAs <- read.table("Endo_AS_low_removed_test_count", header = F)

#contrast

Endo_AS_low_removed_Hyli <- Endo_AS_RNAs[Endo_AS_RNAs$V1 %in% HylipiRNAs$seq, ]

write.table(Endo_AS_low_removed_Hyli, file = "Endo_AS_low_removed_test_count_Hyli", col.names = F, row.names = F, quote = F)

#remove unnecessary dataframes

rm(Endo_AS_RNAs)
rm(Endo_AS_low_removed_Hyli)