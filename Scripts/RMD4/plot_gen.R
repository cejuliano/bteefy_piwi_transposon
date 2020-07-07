setwd("/group/julianolab/bteefy/piwi_revisions/small_RNA")
data.out <- "/group/julianolab/bteefy/piwi_revisions/small_RNA"


#Sense
#Ecto
Ect_S <- read.table("Ecto_S_Reads.rep_pirna.txt", header = F)
Ect_S_plot <- as.data.frame(table(Ect_S$V3))
Ect_S_plot <- Ect_S_plot[c(1:50),]
write.table(Ect_S_plot, file = "Ect_S_plot")

rm(Ect_S)
rm(Ect_S_plot)

#Endo
End_S <- read.table("Endo_S_Reads.rep_pirna.txt", header = F)
End_S_plot <- as.data.frame(table(End_S$V3))
End_S_plot <- End_S_plot[c(1:50),]
write.table(End_S_plot, file = "End_S_plot")

rm(End_S)
rm(End_S_plot)

#Int
Int_S <- read.table("Int_S_Reads.rep_pirna.txt", header = F)
Int_S_plot <- as.data.frame(table(Int_S$V3))
Int_S_plot <- Int_S_plot[c(1:50),]
write.table(Int_S_plot, file = "Int_S_plot")

rm(Int_S)
rm(Int_S_plot)

#Antisense
#Ecto
Ect_AS <- read.table("Ecto_AS_Reads.rep_pirna.txt", header = F)
Ect_AS_plot <- as.data.frame(table(Ect_AS$V3))
Ect_AS_plot <- Ect_AS_plot[c(1:50),]
write.table(Ect_AS_plot, file = "Ect_AS_plot")

rm(Ect_AS)
rm(Ect_AS_plot)

#Endo
End_AS <- read.table("Endo_AS_Reads.rep_pirna.txt", header = F)
End_AS_plot <- as.data.frame(table(End_AS$V3))
End_AS_plot <- End_AS_plot[c(1:50),]
write.table(End_AS_plot, file = "End_AS_plot")

rm(End_AS)
rm(End_AS_plot)

#Int
Int_AS <- read.table("Int_AS_Reads.rep_pirna.txt", header = F)
Int_AS_plot <- as.data.frame(table(Int_AS$V3))
Int_AS_plot <- Int_AS_plot[c(1:50),]
write.table(Int_AS_plot, file = "Int_AS_plot")

rm(Int_AS)
rm(Int_AS_plot)