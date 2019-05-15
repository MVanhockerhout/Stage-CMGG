#sORF_subsets

library(RColorBrewer)
mypalette<-brewer.pal(7,"Greens")

#################### ORF length##############
#############################################
#############################################
hist(sORF_4$`Sorf length`)

sORF_subset1 <- sORF_4[which(sORF_4$`Sorf length`>0 & sORF_4$`Sorf length`<=10),]
sORF_subset2 <- sORF_4[which(sORF_4$`Sorf length`>10 & sORF_4$`Sorf length`<=20),]
sORF_subset3 <- sORF_4[which(sORF_4$`Sorf length`>20 & sORF_4$`Sorf length`<=30),]
sORF_subset4 <- sORF_4[which(sORF_4$`Sorf length`>30 & sORF_4$`Sorf length`<=40),]
sORF_subset5 <- sORF_4[which(sORF_4$`Sorf length`>40 & sORF_4$`Sorf length`<=50),]
sORF_subset6 <- sORF_4[which(sORF_4$`Sorf length`>50 & sORF_4$`Sorf length`<=60),]
sORF_subset7 <- sORF_4[which(sORF_4$`Sorf length`>60 & sORF_4$`Sorf length`<=70),]
sORF_subset8 <- sORF_4[which(sORF_4$`Sorf length`>70 & sORF_4$`Sorf length`<=80),]
sORF_subset9 <- sORF_4[which(sORF_4$`Sorf length`>80 & sORF_4$`Sorf length`<=90),]
sORF_subset10 <- sORF_4[which(sORF_4$`Sorf length`>90 & sORF_4$`Sorf length`<=100),]

allsubsets_length <- do.call("rbind", list(sORF_subset1,sORF_subset2, sORF_subset3, sORF_subset4, sORF_subset5, sORF_subset6, sORF_subset7, sORF_subset8, sORF_subset9, sORF_subset10))
help <- setdiff(sORF_4$`Sorf length`, allsubsets_length$`Sorf length`)


##subset 2
listSeqsORF_subset2 <- list()
listIDsORF_subset2 <- list()
i <-1
for (it in 1:nrow(sORF_subset2)) {
  listSeqsORF_subset2 <- c(listSeqsORF_subset2,sORF_subset2$`Transcript sequence`[i])
  listIDsORF_subset2 <- c(listIDsORF_subset2,sORF_subset2$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset2)
write.fasta(as.list(listSeqsORF_subset2),listIDsORF_subset2,"sORF_subset_2.fa")



##subset 3
listSeqsORF_subset3 <- list()
listIDsORF_subset3 <- list()
i <-1
for (it in 1:nrow(sORF_subset3)) {
  listSeqsORF_subset3 <- c(listSeqsORF_subset3,sORF_subset3$`Transcript sequence`[i])
  listIDsORF_subset3 <- c(listIDsORF_subset3,sORF_subset3$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset3)
write.fasta(as.list(listSeqsORF_subset3),listIDsORF_subset3,"sORF_subset_3.fa")


##subset 4
listSeqsORF_subset4 <- list()
listIDsORF_subset4 <- list()
i <-1
for (it in 1:nrow(sORF_subset4)) {
  listSeqsORF_subset4 <- c(listSeqsORF_subset4,sORF_subset4$`Transcript sequence`[i])
  listIDsORF_subset4 <- c(listIDsORF_subset4,sORF_subset4$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset4)
write.fasta(as.list(listSeqsORF_subset4),listIDsORF_subset4,"sORF_subset_4.fa")


##subset 5
listSeqsORF_subset5 <- list()
listIDsORF_subset5 <- list()
i <-1
for (it in 1:nrow(sORF_subset5)) {
  listSeqsORF_subset5 <- c(listSeqsORF_subset5,sORF_subset5$`Transcript sequence`[i])
  listIDsORF_subset5 <- c(listIDsORF_subset5,sORF_subset5$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset5)
write.fasta(as.list(listSeqsORF_subset5),listIDsORF_subset5,"sORF_subset_5.fa")


##subset 6
listSeqsORF_subset6 <- list()
listIDsORF_subset6 <- list()
i <-1
for (it in 1:nrow(sORF_subset6)) {
  listSeqsORF_subset6 <- c(listSeqsORF_subset6,sORF_subset6$`Transcript sequence`[i])
  listIDsORF_subset6 <- c(listIDsORF_subset6,sORF_subset6$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset6)
write.fasta(as.list(listSeqsORF_subset6),listIDsORF_subset6,"sORF_subset_6.fa")


##subset 7
listSeqsORF_subset7 <- list()
listIDsORF_subset7 <- list()
i <-1
for (it in 1:nrow(sORF_subset7)) {
  listSeqsORF_subset7 <- c(listSeqsORF_subset7,sORF_subset7$`Transcript sequence`[i])
  listIDsORF_subset7 <- c(listIDsORF_subset7,sORF_subset7$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset7)
write.fasta(as.list(listSeqsORF_subset7),listIDsORF_subset7,"sORF_subset_7.fa")


##subset 8
listSeqsORF_subset8 <- list()
listIDsORF_subset8 <- list()
i <-1
for (it in 1:nrow(sORF_subset8)) {
  listSeqsORF_subset8 <- c(listSeqsORF_subset8,sORF_subset8$`Transcript sequence`[i])
  listIDsORF_subset8 <- c(listIDsORF_subset8,sORF_subset8$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset8)
write.fasta(as.list(listSeqsORF_subset8),listIDsORF_subset8,"sORF_subset_8.fa")


##subset 9
listSeqsORF_subset9 <- list()
listIDsORF_subset9 <- list()
i <-1
for (it in 1:nrow(sORF_subset9)) {
  listSeqsORF_subset9 <- c(listSeqsORF_subset9,sORF_subset9$`Transcript sequence`[i])
  listIDsORF_subset9 <- c(listIDsORF_subset9,sORF_subset9$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset9)
write.fasta(as.list(listSeqsORF_subset9),listIDsORF_subset9,"sORF_subset_9.fa")


##subset 10
listSeqsORF_subset10 <- list()
listIDsORF_subset10 <- list()
i <-1
for (it in 1:nrow(sORF_subset10)) {
  listSeqsORF_subset10 <- c(listSeqsORF_subset10,sORF_subset10$`Transcript sequence`[i])
  listIDsORF_subset10 <- c(listIDsORF_subset10,sORF_subset10$`Sorf ID`[i])
  i <- i+1
}
print(listSeqsORF_subset10)
write.fasta(as.list(listSeqsORF_subset10),listIDsORF_subset10,"sORF_subset_10.fa")

## PLEK On the subsets
subset1_PLEK <- 0
subset2_PLEK <- 0
subset3_PLEK <- 0
subset4_PLEK <- 0
subset5_PLEK <- 0
subset6_PLEK <- 0
subset7_PLEK <- 0
subset8_PLEK <- 0
subset9_PLEK <- 0
subset10_PLEK <- 0
waarden_subset_PLEK <- c(subset1_PLEK,subset2_PLEK,subset3_PLEK,subset4_PLEK,subset5_PLEK,subset6_PLEK,subset7_PLEK,subset8_PLEK,subset9_PLEK,subset10_PLEK)
barplot_subset_PLEK <- barplot(waarden_subset_PLEK, beside=TRUE, axes=FALSE, xlab="interval of ORF length", names=c("[0:10]", "]10:20]","]20:30]","]30:40]","]40:50]","]50:60]","]60:70]","]70:80]","]80:90]","]90:100]"), col=mypalette, ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_subset_PLEK, 0, round(waarden_subset_PLEK, 1), cex=1, pos=3)


##PORTRAIT On the subsets
subset1_PORTRAIT <- 0
subset2_PORTRAIT <- 0
subset3_PORTRAIT <- 0
subset4_PORTRAIT <- 0
subset5_PORTRAIT <- 0
subset6_PORTRAIT <- 0
subset7_PORTRAIT <- 170
subset8_PORTRAIT <- 0
subset9_PORTRAIT <- 0
subset10_PORTRAIT <- 0
waarden_subset_PORTRAIT <- c(subset1_PORTRAIT,subset2_PORTRAIT,subset3_PORTRAIT,subset4_PORTRAIT,subset5_PORTRAIT,subset6_PORTRAIT,subset7_PORTRAIT,subset8_PORTRAIT,subset9_PORTRAIT,subset10_PORTRAIT)
barplot_subset_PORTRAIT <- barplot(waarden_subset_PORTRAIT, beside=TRUE, axes=FALSE, xlab="interval of ORF length", names=c("[0:10]", "]10:20]","]20:30]","]30:40]","]40:50]","]50:60]","]60:70]","]70:80]","]80:90]","]90:100]"), col=mypalette, ylab="Amount of Coding sequences determined with PORTRAIT", ylim=c(0,481))
axis(2, at=seq(0,481,10))
text(barplot_subset_PORTRAIT, 0, round(waarden_subset_PORTRAIT, 1), cex=1, pos=3)

##CPAT on the subsets
subset1_CPAT <- 0
subset2_CPAT <- 0
subset3_CPAT <- 0
subset4_CPAT <- 34
subset5_CPAT <- 6
subset6_CPAT <- 35
subset7_CPAT <- 104
subset8_CPAT <- 21
subset9_CPAT <- 111
subset10_CPAT <- 163
waarden_subset_CPAT <- c(subset1_CPAT,subset2_CPAT,subset3_CPAT,subset4_CPAT,subset5_CPAT,subset6_CPAT,subset7_CPAT,subset8_CPAT,subset9_CPAT,subset10_CPAT)
barplot_subset_CPAT <- barplot(waarden_subset_CPAT, beside=TRUE, axes=FALSE, xlab="interval of ORF length", names=c("[0:10]", "]10:20]","]20:30]","]30:40]","]40:50]","]50:60]","]60:70]","]70:80]","]80:90]","]90:100]"), col=mypalette, ylab="Coding sequences determined in CPAT", ylim=c(0,474))
axis(2, at=seq(0,474,10))
text(barplot_subset_CPAT, 0, round(waarden_subset_CPAT, 1), cex=1, pos=3)

#summary from ORF length
   
PLEK_sORF_4_Subsets <- 0
CPAT_sORF_4_Subsets <- 43.65
PORTRAIT_sORF_4_Subsets <- 15.66
PandC_orflength <- 49.5
waarden_sORF_4_Subsets <- c(PLEK_sORF_4_Subsets,CPAT_sORF_4_Subsets,PORTRAIT_sORF_4_Subsets, PandC_orflength)

barplot_sORF_4_Subsets <- barplot(waarden_sORF_4_Subsets, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the full sORF dataset", names=c("PLEK", "CPAT","PORTRAIT","PORTRAIT+CPAT"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF_4_Subsets, 0, round(waarden_sORF_4_Subsets, 2), cex=1, pos=3)

#################### ORF score ##############
#############################################
#############################################


hist(sORF_4$Orfscore)

orfscore_subset1 <- sORF_4[which(sORF_4$Orfscore > -15 & sORF_4$Orfscore <= -12),]
print(orfscore_subset1)
orfscore_subset2 <- sORF_4[which(sORF_4$Orfscore > -12 & sORF_4$Orfscore<= -9),]
orfscore_subset3 <- sORF_4[which(sORF_4$Orfscore > -9 & sORF_4$Orfscore<= -6),]
orfscore_subset4 <- sORF_4[which(sORF_4$Orfscore > -6 & sORF_4$Orfscore<= -3),]
orfscore_subset5 <- sORF_4[which(sORF_4$Orfscore > -3 & sORF_4$Orfscore<= 0),]
orfscore_subset6 <- sORF_4[which(sORF_4$Orfscore > 0 & sORF_4$Orfscore<= 3),]
orfscore_subset7 <- sORF_4[which(sORF_4$Orfscore > 3 & sORF_4$Orfscore<= 6),]
orfscore_subset8 <- sORF_4[which(sORF_4$Orfscore > 6 & sORF_4$Orfscore<= 9),]
orfscore_subset9 <- sORF_4[which(sORF_4$Orfscore > 9 & sORF_4$Orfscore<= 12),]
orfscore_subset10 <- sORF_4[which(sORF_4$Orfscore > 12 & sORF_4$Orfscore<= 15),]
orfscore_subset11 <- sORF_4[which(sORF_4$Orfscore > 15),]

allsubsets <- do.call("rbind", list(orfscore_subset1, orfscore_subset2, orfscore_subset3, orfscore_subset4, orfscore_subset5,orfscore_subset6, orfscore_subset7, orfscore_subset8, orfscore_subset9, orfscore_subset10, orfscore_subset11))
help <- setdiff(sORF_4$Orfscore, allsubsets$Orfscore)


##subset 1
listSeqorfscore_subset1 <- list()
listIDorfscore_subset1 <- list()
i <-1
for (it in 1:nrow(orfscore_subset1)) {
  listSeqorfscore_subset1 <- c(listSeqorfscore_subset1,orfscore_subset1$`Transcript sequence`[i])
  listIDorfscore_subset1 <- c(listIDorfscore_subset1,orfscore_subset1$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset1)
write.fasta(as.list(listSeqorfscore_subset1),listIDorfscore_subset1,"orfscore_subset1.fa")

##subset 2
listSeqorfscore_subset2 <- list()
listIDorfscore_subset2 <- list()
i <-1
for (it in 1:nrow(orfscore_subset2)) {
  listSeqorfscore_subset2 <- c(listSeqorfscore_subset2,orfscore_subset2$`Transcript sequence`[i])
  listIDorfscore_subset2 <- c(listIDorfscore_subset2,orfscore_subset2$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset2)
write.fasta(as.list(listSeqorfscore_subset2),listIDorfscore_subset2,"orfscore_subset2.fa")

##subset 3
listSeqorfscore_subset3 <- list()
listIDorfscore_subset3 <- list()
i <-1
for (it in 1:nrow(orfscore_subset3)) {
  listSeqorfscore_subset3 <- c(listSeqorfscore_subset3,orfscore_subset3$`Transcript sequence`[i])
  listIDorfscore_subset3 <- c(listIDorfscore_subset3,orfscore_subset3$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset3)
write.fasta(as.list(listSeqorfscore_subset3),listIDorfscore_subset3,"orfscore_subset3.fa")

##subset 4
listSeqorfscore_subset4 <- list()
listIDorfscore_subset4 <- list()
i <-1
for (it in 1:nrow(orfscore_subset4)) {
  listSeqorfscore_subset4 <- c(listSeqorfscore_subset4,orfscore_subset4$`Transcript sequence`[i])
  listIDorfscore_subset4 <- c(listIDorfscore_subset4,orfscore_subset4$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset4)
write.fasta(as.list(listSeqorfscore_subset4),listIDorfscore_subset4,"orfscore_subset4.fa")

##subset 5
listSeqorfscore_subset5 <- list()
listIDorfscore_subset5 <- list()
i <-1
for (it in 1:nrow(orfscore_subset5)) {
  listSeqorfscore_subset5 <- c(listSeqorfscore_subset5,orfscore_subset5$`Transcript sequence`[i])
  listIDorfscore_subset5 <- c(listIDorfscore_subset5,orfscore_subset5$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset5)
write.fasta(as.list(listSeqorfscore_subset5),listIDorfscore_subset5,"orfscore_subset5.fa")

##subset 6
listSeqorfscore_subset6 <- list()
listIDorfscore_subset6 <- list()
i <-1
for (it in 1:nrow(orfscore_subset6)) {
  listSeqorfscore_subset6 <- c(listSeqorfscore_subset6,orfscore_subset6$`Transcript sequence`[i])
  listIDorfscore_subset6 <- c(listIDorfscore_subset6,orfscore_subset6$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset6)
write.fasta(as.list(listSeqorfscore_subset6),listIDorfscore_subset6,"orfscore_subset6.fa")


##subset 7
listSeqorfscore_subset7 <- list()
listIDorfscore_subset7 <- list()
i <-1
for (it in 1:nrow(orfscore_subset7)) {
  listSeqorfscore_subset7 <- c(listSeqorfscore_subset7,orfscore_subset7$`Transcript sequence`[i])
  listIDorfscore_subset7 <- c(listIDorfscore_subset7,orfscore_subset7$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset7)
write.fasta(as.list(listSeqorfscore_subset7),listIDorfscore_subset7,"orfscore_subset7.fa")

##subset 8
listSeqorfscore_subset8 <- list()
listIDorfscore_subset8 <- list()
i <-1
for (it in 1:nrow(orfscore_subset8)) {
  listSeqorfscore_subset8 <- c(listSeqorfscore_subset8,orfscore_subset8$`Transcript sequence`[i])
  listIDorfscore_subset8 <- c(listIDorfscore_subset8,orfscore_subset8$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset8)
write.fasta(as.list(listSeqorfscore_subset8),listIDorfscore_subset8,"orfscore_subset8.fa")

##subset 9
listSeqorfscore_subset9 <- list()
listIDorfscore_subset9 <- list()
i <-1
for (it in 1:nrow(orfscore_subset9)) {
  listSeqorfscore_subset9 <- c(listSeqorfscore_subset9,orfscore_subset9$`Transcript sequence`[i])
  listIDorfscore_subset9 <- c(listIDorfscore_subset9,orfscore_subset9$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset9)
write.fasta(as.list(listSeqorfscore_subset9),listIDorfscore_subset9,"orfscore_subset9.fa")

##subset 10
listSeqorfscore_subset10 <- list()
listIDorfscore_subset10 <- list()
i <-1
for (it in 1:nrow(orfscore_subset10)) {
  listSeqorfscore_subset10 <- c(listSeqorfscore_subset10,orfscore_subset10$`Transcript sequence`[i])
  listIDorfscore_subset10 <- c(listIDorfscore_subset10,orfscore_subset10$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset10)
write.fasta(as.list(listSeqorfscore_subset10),listIDorfscore_subset10,"orfscore_subset10.fa")

##subset 11
listSeqorfscore_subset11 <- list()
listIDorfscore_subset11 <- list()
i <-1
for (it in 1:nrow(orfscore_subset11)) {
  listSeqorfscore_subset11 <- c(listSeqorfscore_subset11,orfscore_subset11$`Transcript sequence`[i])
  listIDorfscore_subset11 <- c(listIDorfscore_subset11,orfscore_subset11$`Sorf ID`[i])
  i <- i+1
}
print(listSeqorfscore_subset11)
write.fasta(as.list(listSeqorfscore_subset11),listIDorfscore_subset11,"orfscore_subset11.fa")


## PLEK On the orfscore subsets
subset1_PLEK_orfscore <- 0
subset2_PLEK_orfscore <- 0
subset3_PLEK_orfscore <- 0
subset4_PLEK_orfscore <- 0
subset5_PLEK_orfscore <- 0
subset6_PLEK_orfscore <- 0
subset7_PLEK_orfscore <- 0
subset8_PLEK_orfscore <- 0
subset9_PLEK_orfscore <- 0
subset10_PLEK_orfscore <- 0
subset11_PLEK_orfscore <- 0
waarden_subset_PLEK_orfscore <- c(subset1_PLEK_orfscore,subset2_PLEK_orfscore,subset3_PLEK_orfscore,subset4_PLEK_orfscore,subset5_PLEK_orfscore,subset6_PLEK_orfscore,subset7_PLEK_orfscore,subset8_PLEK_orfscore,subset9_PLEK_orfscore,subset10_PLEK_orfscore,subset11_PLEK_orfscore)
barplot_subset_PLEK_orfscore <- barplot(waarden_subset_PLEK_orfscore, beside=TRUE, axes=FALSE, xlab="interval of ORF score", names=c("[-15:-12]", "]-12:-9]","]-9:-6]","]-6:-3]","]-3:0]","]0:3]","]3:6]","]6:9]","]9:12]","]12:15]","<15"), col=mypalette, ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_subset_PLEK, 0, round(waarden_subset_PLEK, 1), cex=1, pos=3)


##PORTRAIT On the orfscore subsets
subset1_PORTRAIT_orfscore <- 5
subset2_PORTRAIT_orfscore <- 17
subset3_PORTRAIT_orfscore <- 7
subset4_PORTRAIT_orfscore <- 0
subset5_PORTRAIT_orfscore <- 0
subset6_PORTRAIT_orfscore <- 0
subset7_PORTRAIT_orfscore <- 6
subset8_PORTRAIT_orfscore <- 166
subset9_PORTRAIT_orfscore <- 248
subset10_PORTRAIT_orfscore <- 69
subset11_PORTRAIT_orfscore <- 4
waarden_subset_PORTRAIT_orfscore <- c(subset1_PORTRAIT_orfscore,subset2_PORTRAIT_orfscore,subset3_PORTRAIT_orfscore,subset4_PORTRAIT_orfscore,subset5_PORTRAIT_orfscore,subset6_PORTRAIT_orfscore,subset7_PORTRAIT_orfscore,subset8_PORTRAIT_orfscore,subset9_PORTRAIT_orfscore,subset10_PORTRAIT_orfscore, subset11_PORTRAIT_orfscore)
barplot_subset_PORTRAIT_orfscore <- barplot(waarden_subset_PORTRAIT_orfscore, beside=TRUE, axes=FALSE, xlab="interval of ORF score", names=c("[-15:-12]", "]-12:-9]","]-9:-6]","]-6:-3]","]-3:0]","]0:3]","]3:6]","]6:9]","]9:12]","]12:15]","<15"), col=mypalette, ylab="Amount of Coding sequences determined with PORTRAIT", ylim=c(0,522))
axis(2, at=seq(0,522,10))
text(barplot_subset_PORTRAIT_orfscore, 0, round(waarden_subset_PORTRAIT_orfscore, 1), cex=1, pos=3)

##CPAT On the orfscore subsets
subset1_C_orfscore <- 7
subset2_C_orfscore <- 12
subset3_C_orfscore <- 6
subset4_C_orfscore <- 0
subset5_C_orfscore <- 0
subset6_C_orfscore <- 0
subset7_C_orfscore <- 3
subset8_C_orfscore <- 146
subset9_C_orfscore <- 224
subset10_C_orfscore <- 67
subset11_C_orfscore <- 3
waarden_subset_C_orfscore <- c(subset1_C_orfscore,subset2_C_orfscore,subset3_C_orfscore,subset4_C_orfscore,subset5_C_orfscore,subset6_C_orfscore,subset7_C_orfscore,subset8_C_orfscore,subset9_C_orfscore,subset10_C_orfscore, subset11_C_orfscore)
barplot_subset_C_orfscore <- barplot(waarden_subset_C_orfscore, beside=TRUE, axes=FALSE, xlab="interval of ORF score", names=c("[-15:-12]", "]-12:-9]","]-9:-6]","]-6:-3]","]-3:0]","]0:3]","]3:6]","]6:9]","]9:12]","]12:15]","<15"), col=mypalette, ylab="Amount of Coding sequences determined with PORTRAIT", ylim=c(0,522))
axis(2, at=seq(0,522,10))
text(barplot_subset_C_orfscore, 0, round(waarden_subset_C_orfscore, 1), cex=1, pos=3)


##CPAT on the subsets
subset1_CPAT <- 0
subset2_CPAT <- 0
subset3_CPAT <- 0
subset4_CPAT <- 34
subset5_CPAT <- 6
subset6_CPAT <- 35
subset7_CPAT <- 104
subset8_CPAT <- 21
subset9_CPAT <- 111
subset10_CPAT <- 163
waarden_subset_CPAT <- c(subset1_CPAT,subset2_CPAT,subset3_CPAT,subset4_CPAT,subset5_CPAT,subset6_CPAT,subset7_CPAT,subset8_CPAT,subset9_CPAT,subset10_CPAT)
barplot_subset_CPAT <- barplot(waarden_subset_CPAT, beside=TRUE, axes=FALSE, xlab="interval of ORF length", names=c("[0:10]", "]10:20]","]20:30]","]30:40]","]40:50]","]50:60]","]60:70]","]70:80]","]80:90]","]90:100]"), col=mypalette, ylab="Coding sequences determined in CPAT", ylim=c(0,474))
axis(2, at=seq(0,474,10))
text(barplot_subset_CPAT, 0, round(waarden_subset_CPAT, 1), cex=1, pos=3)

#summary from ORF score
PLEK_sORF_4_Subsets <- 0
CPAT_sORF_4_Subsets <- 43.09
PORTRAIT_sORF_4_Subsets <- 48.07
waarden_sORF_4_Subsets <- c(PLEK_sORF_4_Subsets,CPAT_sORF_4_Subsets,PORTRAIT_sORF_4_Subsets)

barplot_sORF_4_Subsets <- barplot(waarden_sORF_4_Subsets, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the full sORF dataset", names=c("PLEK", "CPAT","PORTRAIT"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF_4_Subsets, 0, round(waarden_sORF_4_Subsets, 2), cex=1, pos=3)

























