sORF_Algo_CPAT_1 <- sORF_4[which(sORF_4$`Sorf length`> 70 & sORF_4$PhastCon > 0.7966),]
sORF_Algo_CPAT_2 <- sORF_4[which(sORF_4$`Sorf length`<= 60 & sORF_4$PhastCon > 0.7966),]
sORF_Algo_CPAT_3 <- sORF_4[which(sORF_4$`Sorf length`> 70 & sORF_4$PhastCon < 0.7966),]
sORF_Algo_CPAT_4 <- sORF_4[which(sORF_4$`Sorf length`<= 60 & sORF_4$PhastCon < 0.7966),]
sORF_Algo_CPAT_5 <- sORF_4[which(sORF_4$`Sorf length`> 60 & sORF_4$`Sorf length`<= 70 & sORF_4$PhastCon > 0.7966),]

sORF_Algo_CPAT <- data.frame()
sORF_Algo_CPAT <- rbind(sORF_Algo_CPAT_1,sORF_Algo_CPAT_2,sORF_Algo_CPAT_3,sORF_Algo_CPAT_4,sORF_Algo_CPAT_5)
sORF_Algo_PORTRAIT <- sORF_4[which(sORF_4$`Sorf length`> 60 & sORF_4$`Sorf length`<= 70 & sORF_4$PhastCon <= 0.7966),]

class(sORF_Algo_PORTRAIT)
## CPAT
library(seqinr)
listSeqsORF_Algo_CPAT<- list()
i <- 1
while(i<678) {
  listSeqsORF_Algo_CPAT[[i]] <- sORF_Algo_CPAT$`Transcript sequence`[i]
  i <- i + 1
}
print(listSeqsORF_Algo_CPAT)
#making ID list#
listIDsORF_Algo_CPAT<- list()
j <- 1
while(j<678) {
  listIDsORF_Algo_CPAT[[j]] <- sORF_Algo_CPAT$`Sorf ID`[j]
  j <- j + 1
}
print(listIDsORF_Algo_CPAT)
write.fasta(as.list(listSeqsORF_Algo_CPAT),listIDsORF_Algo_CPAT,"sORF_fasta_Algo_CPAT.fa", open ="w")

##PORTRAIT
library(seqinr)
listSeqsORF_Algo_PORTRAIT<- list()
i <- 1
while(i<175) {
  listSeqsORF_Algo_PORTRAIT[[i]] <- sORF_Algo_PORTRAIT$`Transcript sequence`[i]
  i <- i + 1
}
print(listSeqsORF_Algo_PORTRAIT)
#making ID list#
listIDsORF_Algo_PORTRAIT <- list()
j <- 1
while(j<175) {
  listIDsORF_Algo_PORTRAIT[[j]] <- sORF_Algo_PORTRAIT$`Sorf ID`[j]
  j <- j + 1
}
print(listIDsORF_Algo_PORTRAIT)
write.fasta(as.list(listSeqsORF_Algo_PORTRAIT),listIDsORF_Algo_PORTRAIT,file.out = "sORF_fasta_Algo_PORTRAIT.fa", open ="w")

#####################################################################################################################################
#####################################################################################################################################
#################################################Bazinni but for the Algo algorithm #################################################
#####################################################################################################################################
#####################################################################################################################################
sORF_Algo_CPAT_1_Ba <- sORF_Algo[which(sORF_Algo$`Sorf length`> 70 & sORF_Algo$PhastCon > 0.7966),]
sORF_Algo_CPAT_2_Ba <- sORF_Algo[which(sORF_Algo$`Sorf length`<= 60 & sORF_Algo$PhastCon > 0.7966),]
sORF_Algo_CPAT_3_Ba <- sORF_Algo[which(sORF_Algo$`Sorf length`> 70 & sORF_Algo$PhastCon < 0.7966),]
sORF_Algo_CPAT_4_Ba <- sORF_Algo[which(sORF_Algo$`Sorf length`<= 60 & sORF_Algo$PhastCon < 0.7966),]
sORF_Algo_CPAT_5_Ba <- sORF_Algo[which(sORF_Algo$`Sorf length`> 60 & sORF_Algo$`Sorf length`<= 70 & sORF_Algo$PhastCon > 0.7966),]

sORF_Algo_CPAT_Ba <- data.frame()
sORF_Algo_CPAT_Ba <- rbind(sORF_Algo_CPAT_1_Ba,sORF_Algo_CPAT_2_Ba,sORF_Algo_CPAT_3_Ba,sORF_Algo_CPAT_4_Ba,sORF_Algo_CPAT_5_Ba)
sORF_Algo_PORTRAIT_Ba <- sORF_Algo[which(sORF_Algo$`Sorf length`> 60 & sORF_Algo$`Sorf length`<= 70 & sORF_Algo$PhastCon <= 0.7966),]


## CPAT
library(seqinr)
listSeqsORF_Algo_CPAT_Ba<- list()
i <- 1
while(i<477) {
  listSeqsORF_Algo_CPAT_Ba[[i]] <- sORF_Algo_CPAT_Ba$`Transcript sequence`[i]
  i <- i + 1
}
print(listSeqsORF_Algo_CPAT_Ba)
#making ID list#
listIDsORF_Algo_CPAT_Ba<- list()
j <- 1
while(j<477) {
  listIDsORF_Algo_CPAT_Ba[[j]] <- sORF_Algo_CPAT_Ba$`Sorf ID`[j]
  j <- j + 1
}
print(listIDsORF_Algo_CPAT_Ba)
write.fasta(as.list(listSeqsORF_Algo_CPAT_Ba),listIDsORF_Algo_CPAT_Ba,"sORF_Algo_CPAT_Ba.fa", open ="w")

##PORTRAIT
library(seqinr)
listSeqsORF_Algo_PORTRAIT_Ba<- list()
i <- 1
while(i<97) {
  listSeqsORF_Algo_PORTRAIT_Ba[[i]] <- sORF_Algo_PORTRAIT_Ba$`Transcript sequence`[i]
  i <- i + 1
}
print(listSeqsORF_Algo_PORTRAIT_Ba)
#making ID list#
listIDsORF_Algo_PORTRAIT_Ba <- list()
j <- 1
while(j<97) {
  listIDsORF_Algo_PORTRAIT_Ba[[j]] <- sORF_Algo_PORTRAIT_Ba$`Sorf ID`[j]
  j <- j + 1
}
print(listIDsORF_Algo_PORTRAIT_Ba)
write.fasta(as.list(listSeqsORF_Algo_PORTRAIT_Ba),listIDsORF_Algo_PORTRAIT_Ba,file.out = "sORF_Algo_PORTRAIT_Ba.fa", open ="w")




#####################################################################################################################################
#####################################################################################################################################
#################################################Bazinni#############################################################################
#####################################################################################################################################
#####################################################################################################################################
#####################################################################################################################################
sORF_Algo_CPAT_1_B <- sORF[which(sORF$`Sorf length` > 70),]
sORF_Algo_CPAT_2_B <- sORF[which(sORF$`Sorf length`<= 60),]


sORF_Algo_CPAT_B <- data.frame()
sORF_Algo_CPAT_B <- rbind(sORF_Algo_CPAT_1_B,sORF_Algo_CPAT_2_B)


sORF_Algo_PORTRAIT_B <- sORF[which(sORF$`Sorf length`> 60 & sORF$`Sorf length`<= 70),]


## CPAT
library(seqinr)
listSeqsORF_Algo_CPAT_B<- list()
i <- 1
while(i<452) {
  listSeqsORF_Algo_CPAT_B[[i]] <- sORF_Algo_CPAT_B$`Transcript sequence`[i]
  i <- i + 1
}
print(listSeqsORF_Algo_CPAT_B)
#making ID list#
listIDsORF_Algo_CPAT_B<- list()
j <- 1
while(j<452) {
  listIDsORF_Algo_CPAT_B[[j]] <- sORF_Algo_CPAT_B$`Ensembl transcript ID`[j]
  j <- j + 1
}
print(listIDsORF_Algo_CPAT_B)
write.fasta(as.list(listSeqsORF_Algo_CPAT_B),listIDsORF_Algo_CPAT_B,"sORF_Bazinni_CPAT.fa", open ="w")

##PORTRAIT
library(seqinr)
listSeqsORF_Algo_PORTRAIT_B<- list()
i <- 1
while(i<121) {
  listSeqsORF_Algo_PORTRAIT_B[[i]] <- sORF_Algo_PORTRAIT_B$`Transcript sequence`[i]
  i <- i + 1
}
print(listSeqsORF_Algo_PORTRAIT_B)
#making ID list#
listIDsORF_Algo_PORTRAIT_B <- list()
j <- 1
while(j<121) {
  listIDsORF_Algo_PORTRAIT_B[[j]] <- sORF_Algo_PORTRAIT_B$`Ensembl transcript ID`[j]
  j <- j + 1
}
print(listIDsORF_Algo_PORTRAIT_B)
write.fasta(as.list(listSeqsORF_Algo_PORTRAIT_B),listIDsORF_Algo_PORTRAIT_B,file.out = "sORF_Bazinni_PORTRAIT.fa", open ="w")

#####################################################################################################################################
#####################################################################################################################################
#################################################Conserved###########################################################################
#####################################################################################################################################
#####################################################################################################################################
#####################################################################################################################################


sORF_Algo_CPAT_1_C <- sORF_3[which(sORF_3$`Sorf length` > 70),]
sORF_Algo_CPAT_2_C <- sORF_3[which(sORF_3$`Sorf length` <= 60),]

sORF_Algo_CPAT_C <- data.frame()
sORF_Algo_CPAT_C <- rbind(sORF_Algo_CPAT_1_C,sORF_Algo_CPAT_2_C)

sORF_Algo_PORTRAIT_C <- sORF_3[which(sORF_3$`Sorf length`> 60 & sORF_3$`Sorf length`<= 70),]


## CPAT
library(seqinr)
listSeqsORF_Algo_CPAT_C<- list()
i <- 1
while(i<452) {
  listSeqsORF_Algo_CPAT_C[[i]] <- sORF_Algo_CPAT_C$`Transcript sequence`[i]
  i <- i + 1
}
print(listSeqsORF_Algo_CPAT_C)
#making ID list#
listIDsORF_Algo_CPAT_C<- list()
j <- 1
while(j<452) {
  listIDsORF_Algo_CPAT_C[[j]] <- sORF_Algo_CPAT_C$`Ensembl transcript ID`[j]
  j <- j + 1
}
print(listIDsORF_Algo_CPAT_C)
write.fasta(as.list(listSeqsORF_Algo_CPAT_C),listIDsORF_Algo_CPAT_C,"sORF_Conserved_CPAT.fa", open ="w")

##PORTRAIT
library(seqinr)
listSeqsORF_Algo_PORTRAIT_C<- list()
i <- 1
while(i<121) {
  listSeqsORF_Algo_PORTRAIT_C[[i]] <- sORF_Algo_PORTRAIT_C$`Transcript sequence`[i]
  i <- i + 1
}
print(listSeqsORF_Algo_PORTRAIT_C)
#making ID list#
listIDsORF_Algo_PORTRAIT_C <- list()
j <- 1
while(j<121) {
  listIDsORF_Algo_PORTRAIT_C[[j]] <- sORF_Algo_PORTRAIT_C$`Ensembl transcript ID`[j]
  j <- j + 1
}
print(listIDsORF_Algo_PORTRAIT_C)
write.fasta(as.list(listSeqsORF_Algo_PORTRAIT_C),listIDsORF_Algo_PORTRAIT_C,file.out = "sORF_Conserved_PORTRAIT.fa", open ="w")

###################################################################################
# Dit stuk zat normaal in StatsSubsets.R ##########################################
###################################################################################

##PORTRAIT and CPAT Combined compared to the others, PORC
PLEK_sORF_4_Subsets <- 0
CPAT_sORF_4_Subsets <- 44
PORTRAIT_sORF_4_Subsets <- 48.5
PORTRAIT_CPAT_Subsets <- 49.72
waarden_sORF_4_Subsets <- c(PLEK_sORF_4_Subsets,CPAT_sORF_4_Subsets,PORTRAIT_sORF_4_Subsets,PORTRAIT_CPAT_Subsets)

barplot_sORF_4_Subsets <- barplot(waarden_sORF_4_Subsets, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the full sORF dataset", names=c("PLEK", "CPAT","PORTRAIT","POR + CPAT (ORF length"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF_4_Subsets, 0, round(waarden_sORF_4_Subsets, 1), cex=1, pos=3)

##Algo compared to the others for all ORF's
PLEK_sORF_4_Subsets <- 0
CPAT_sORF_4_Subsets <- 44
PORTRAIT_sORF_4_Subsets <- 48.52
PORTRAIT_CPAT_Subsets <- 49.72
Algo_Subsets <- 50
waarden_sORF_4_Subsets <- c(PLEK_sORF_4_Subsets,CPAT_sORF_4_Subsets,PORTRAIT_sORF_4_Subsets,PORTRAIT_CPAT_Subsets, Algo_Subsets)

barplot_sORF_4_Subsets <- barplot(waarden_sORF_4_Subsets, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the full sORF dataset", names=c("PLEK", "CPAT","PORTRAIT","POR + CPAT (ORF length","Algo"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF_4_Subsets, 0, round(waarden_sORF_4_Subsets, 2), cex=1, pos=3)

##Algo compared to the others algorithms for Bazinni
PLEK_sORF_Subsets <- 0
CPAT_sORF_Subsets <- 39
PORTRAIT_sORF_Subsets <- 46.41
PORTRAIT_CPAT_sORF_Subsets <- 46.5
Algo_sORF <- 46.76
waarden_sORF_Subsets <- c(PLEK_sORF_Subsets,CPAT_sORF_Subsets,PORTRAIT_sORF_Subsets,PORTRAIT_CPAT_sORF_Subsets, Algo_sORF)

barplot_sORF_Subsets <- barplot(waarden_sORF_Subsets, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the full Bazinni ORF's", names=c("PLEK", "CPAT","PORTRAIT","POR + CPAT (ORF length","Algo"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF_Subsets, 0, round(waarden_sORF_Subsets, 2), cex=1, pos=4)

#####################################################################################################################################
#####################################################################################################################################
############################################    Results from PORTRAIT + CPAT ########################################################
#####################################################################################################################################
#####################################################################################################################################
#####################################################################################################################################

library(ggplot2)
test_set_ORF_PORC=c(rep("All sORF",3),rep("Bazinni and conserved",3),rep("Bazinni",3),rep(" Conserved",3))
algorithm_ORF_PORC=rep(c("PORC","CPAT","PORTRAIT"),4)
newvalue_ORF_PORC <- c(49.7,44,48.52,21.09,21.09,17.06,46.50,39,46.41,29.15,29.15,20.22)


data_ggplot_ORF_PORC=data.frame(test_set_ORF_PORC, algorithm_ORF_PORC, newvalue_ORF_PORC)
ggplot(data_ggplot_ORF_PORC, aes(fill=algorithm_ORF_PORC, y=newvalue_ORF_PORC, x=test_set_ORF_PORC)) + 
  geom_bar(position="dodge", stat="identity") +
  geom_text(aes(label=newvalue_ORF_PORC),size = 3,hjust = 0.5, vjust = 0,position=position_dodge(0.9)) +
  ylim(0, 100)


#####################################################################################################################################
#####################################################################################################################################
########################################### Results from PORC and ALGO ##############################################################
#####################################################################################################################################
#####################################################################################################################################
#####################################################################################################################################

library(ggplot2)
test_set_ORF_Algo=c(rep("All sORF",4),rep("Bazinni and conserved",4),rep("Bazinni",4),rep(" Conserved",4))
algorithm_ORF_Algo=rep(c("PORC","CPAT","Algo","PORTRAIT"),4)
newvalue_ORF_Algo <- c(49.7,44,50,48.52,21.09,21.09,21.09,17.06,46.50,39,46.76,46.41,29.15,29.15,29.15,20.22)


data_ggplot_ORF_Algo=data.frame(test_set_ORF_Algo, algorithm_ORF_Algo, newvalue_ORF_Algo)
ggplot(data_ggplot_ORF_Algo, aes(fill=algorithm_ORF_Algo, y=newvalue_ORF_Algo, x=test_set_ORF_Algo)) + 
  geom_bar(position="dodge", stat="identity") +
  geom_text(aes(label=newvalue_ORF_Algo),size = 3,hjust = 0.5, vjust = 0,position=position_dodge(0.9)) +
  ylim(0, 100)




