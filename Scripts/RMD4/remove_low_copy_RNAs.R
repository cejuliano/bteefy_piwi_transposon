setwd("/group/julianolab/bteefy/piwi_revisions/small_RNA")
data.out <- "/group/julianolab/bteefy/piwi_revisions/small_RNA"

#Ecto

Ect_S <- read.table("Ecto_S_Reads.rep_pirna.txt", header = F)

#retain sequences with greater than 3 copies

Ect_S <- subset(Ect_S, V3 > 3)

#keep only sequences

Ect_S <- as.data.frame(Ect_S$V4)

write.table(Ect_S, file = "Ect_S_low_copy_filtered.txt", col.names = F, row.names = F, quote = F)

rm(Ect_S)

#Endo

End_S <- read.table("Endo_S_Reads.rep_pirna.txt", header = F)

End_S <- subset(End_S, V3 > 3)

End_S <- as.data.frame(End_S$V4)

write.table(End_S, file = "End_S_low_copy_filtered.txt", col.names = F, row.names = F, quote = F)

rm(End_S)

#Int

Int_S <- read.table("Int_S_Reads.rep_pirna.txt", header = F)

Int_S <- subset(Int_S, V3 > 3)

Int_S <- as.data.frame(Int_S$V4)

write.table(Int_S, file = "Int_S_low_copy_filtered.txt", col.names = F, row.names = F, quote = F)

rm(Int_S)


#### Repeat for antisense


#Ecto

Ect_AS <- read.table("Ecto_AS_Reads.rep_pirna.txt", header = F)

Ect_AS <- subset(Ect_AS, V3 > 3)

Ect_AS <- as.data.frame(Ect_AS$V4)

write.table(Ect_AS, file = "Ect_AS_low_copy_filtered.txt", col.names = F, row.names = F, quote = F)

rm(Ect_AS)

#Endo

End_AS <- read.table("Endo_AS_Reads.rep_pirna.txt", header = F)

End_AS <- subset(End_AS, V3 > 3)

End_AS <- as.data.frame(End_AS$V4)

write.table(End_AS, file = "End_AS_low_copy_filtered.txt", col.names = F, row.names = F, quote = F)

rm(End_AS)


#Int

Int_AS <- read.table("Int_AS_Reads.rep_pirna.txt", header = F)

Int_AS <- subset(Int_AS, V3 > 3)

Int_AS <- as.data.frame(Int_AS$V4)

write.table(Int_AS, file = "Int_AS_low_copy_filtered.txt", col.names = F, row.names = F, quote = F)

rm(Int_AS)
