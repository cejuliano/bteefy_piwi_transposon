setwd("/group/julianolab/bteefy/piwi_revisions/small_RNA")
data.out <- "/group/julianolab/bteefy/piwi_revisions/small_RNA"

#remove low copy small RNAs from INT


IntRNAs <- read.table("/group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/IntRNAs.txt", sep = "\t")

Int_AS_low_rm <- read.table("Int_AS_low_copy_filtered.txt", sep = "\t", header = F)

Int_S_low_rm <- read.table("Int_S_low_copy_filtered.txt", sep = "\t", header = F)


#contrast


Int_AS_low_removed <- IntRNAs[IntRNAs$seq %in% Int_AS_low_rm$V1, ]

Int_S_low_removed <- IntRNAs[IntRNAs$seq %in% Int_S_low_rm$V1, ]

#remove unnecessary files

rm(IntRNAs)
rm(Int_AS_low_rm)
rm(Int_S_low_rm)

#write tables

write.table(Int_AS_low_removed$seq, file = "Int_AS_low_removed_test_count", col.names = F, row.names = F, quote = F)
write.table(Int_S_low_removed$seq, file = "Int_S_low_removed_test_count", col.names = F, row.names = F, quote = F)

#remove unnecessary files

rm(Int_AS_low_removed)
rm(Int_S_low_removed)

#remove low copy small RNAs from ECTO


EctoRNAs <- read.table("/group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EctoRNAs.txt", sep = "\t")

Ecto_AS_low_rm <- read.table("Ect_AS_low_copy_filtered.txt", sep = "\t", header = F)

Ecto_S_low_rm <- read.table("Ect_S_low_copy_filtered.txt", sep = "\t", header = F)


#contrast


Ecto_AS_low_removed <- EctoRNAs[EctoRNAs$seq %in% Ecto_AS_low_rm$V1, ]

Ecto_S_low_removed <- EctoRNAs[EctoRNAs$seq %in% Ecto_S_low_rm$V1, ]

#remove unnecessary files

rm(EctoRNAs)
rm(Ecto_AS_low_rm)
rm(Ecto_S_low_rm)

#write tables

write.table(Ecto_AS_low_removed$seq, file = "Ecto_AS_low_removed_test_count", col.names = F, row.names = F, quote = F)
write.table(Ecto_S_low_removed$seq, file = "Ecto_S_low_removed_test_count", col.names = F, row.names = F, quote = F)

#remove unnecessary files

rm(Ecto_AS_low_removed)
rm(Ecto_S_low_removed)

#remove low copy small RNAs from Endo


EndoRNAs <- read.table("/group/julianolab/bteefy/lineage_seqs/R_scripts/062119_R_scripts/EndoRNAs.txt", sep = "\t")

Endo_AS_low_rm <- read.table("End_AS_low_copy_filtered.txt", sep = "\t", header = F)

Endo_S_low_rm <- read.table("End_S_low_copy_filtered.txt", sep = "\t", header = F)


#contrast


Endo_AS_low_removed <- EndoRNAs[EndoRNAs$seq %in% Endo_AS_low_rm$V1, ]

Endo_S_low_removed <- EndoRNAs[EndoRNAs$seq %in% Endo_S_low_rm$V1, ]

#remove unnecessary files

rm(EndoRNAs)
rm(Endo_AS_low_rm)
rm(Endo_S_low_rm)

#write tables

write.table(Endo_AS_low_removed$seq, file = "Endo_AS_low_removed_test_count", col.names = F, row.names = F, quote = F)
write.table(Endo_S_low_removed$seq, file = "Endo_S_low_removed_test_count", col.names = F, row.names = F, quote = F)

#remove unnecessary files

rm(Endo_AS_low_removed)
rm(Endo_S_low_removed)
