##sORF dataset Bazinni ORF (Filter ;Annotation:sORF;Min in-frame coverage:0.1;min ORF score:6
##total:571
##sORF_fasta.fa


#PORTRAIT
Coding_sORF_PORTRAIT <-265
NonCoding_sORF_PORTRAIT <- 278
error_sORF_PORTRAIT <-29
waarden_sORF_PORTRAIT <- c(Coding_sORF_PORTRAIT,NonCoding_sORF_PORTRAIT,error_sORF_PORTRAIT)

barplot_sORF_PORTRAIT <- barplot(waarden_sORF_PORTRAIT, beside=TRUE, axes=FALSE, xlab="Accuracy PORTRAIT", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,571))
axis(2, at=seq(0,571,10))
text(barplot_sORF_PORTRAIT, 0, round(waarden_sORF_PORTRAIT, 1), cex=1, pos=3)

#CPAT
Coding_sORF_CPAT <-222
NonCoding_sORF_CPAT <- 348
error_sORF_CPAT <-1
waarden_sORF_CPAT <- c(Coding_sORF_CPAT,NonCoding_sORF_CPAT,error_sORF_CPAT)

barplot_sORF_CPAT <- barplot(waarden_sORF_CPAT, beside=TRUE, axes=FALSE, xlab="Accuracy CPAT", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,571))
axis(2, at=seq(0,571,10))
text(barplot_sORF_CPAT, 0, round(waarden_sORF_CPAT, 1), cex=1, pos=3)

#PLEK
Coding_sORF_PLEK <- 0
NonCoding_sORF_PLEK <- 571
error_sORF_PLEK <-0
waarden_sORF_PLEK <- c(Coding_sORF_PLEK,NonCoding_sORF_PLEK,error_sORF_PLEK)

barplot_sORF_PLEK <- barplot(waarden_sORF_PLEK, beside=TRUE, axes=FALSE, xlab="Accuracy PLEK", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,571))
axis(2, at=seq(0,571,10))
text(barplot_sORF_PLEK, 0, round(waarden_sORF_PLEK, 1), cex=1, pos=3)

### Summary percentage coding
PLEK_sORF <- 0
CPAT_sORF <- 39
PORTRAIT_sORF <- 46.41
waarden_sORF <- c(PLEK_sORF,CPAT_sORF,PORTRAIT_sORF)

barplot_sORF <- barplot(waarden_sORF, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the sORF dataset", names=c("PLEK", "CPAT","PORTRAIT"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF, 0, round(waarden_sORF, 1), cex=1, pos=3)


##sORF_2 Bazinni and conserverd (Filter;Annotation:sORF;PhastCon:0.7;PyloP:4;Min in-frame coverage:0.1;min ORF score:6)
##total:147
##sORF_fasta_2.fa
#PLEK
Coding_sORF_2_PLEK <- 0
NonCoding_sORF_2_PLEK <- 571
error_sORF_2_PLEK <-0
waarden_sORF_2_PLEK <- c(Coding_sORF_2_PLEK,NonCoding_sORF_2_PLEK,error_sORF_2_PLEK)

barplot_sORF_PLEK_2 <- barplot(waarden_sORF_2_PLEK, beside=TRUE, axes=FALSE, xlab="Accuracy PLEK", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,147))
axis(2, at=seq(0,147,10))
text(barplot_sORF_2_PLEK, 0, round(waarden_sORF_2_PLEK, 1), cex=1, pos=3)
#CPAT
Coding_sORF_2_CPAT <-31
NonCoding_sORF_2_CPAT <- 115
error_sORF_2_CPAT <-1
waarden_sORF_2_CPAT <- c(Coding_sORF_2_CPAT,NonCoding_sORF_2_CPAT,error_sORF_2_CPAT)

barplot_sORF_2_CPAT <- barplot(waarden_sORF_2_CPAT, beside=TRUE, axes=FALSE, xlab="Accuracy CPAT", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,147))
axis(2, at=seq(0,147,10))
text(barplot_sORF_2_CPAT, 0, round(waarden_sORF_2_CPAT, 1), cex=1, pos=3)

#PORTRAIT
Coding_sORF_2_PORTRAIT <-25
NonCoding_sORF_2_PORTRAIT <- 11
error_sORF_2_PORTRAIT <-111
waarden_sORF_2_PORTRAIT <- c(Coding_sORF_2_PORTRAIT,NonCoding_sORF_2_PORTRAIT,error_sORF_2_PORTRAIT)

barplot_sORF_2_PORTRAIT <- barplot(waarden_sORF_2_PORTRAIT, beside=TRUE, axes=FALSE, xlab="Accuracy PORTRAIT", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,147))
axis(2, at=seq(0,147,10))
text(barplot_sORF_2_PORTRAIT, 0, round(waarden_sORF_2_PORTRAIT, 1), cex=1, pos=3)


#Summary
PLEK_sORF_2 <- 0
CPAT_sORF_2 <- 21.09
PORTRAIT_sORF_2 <- 17.06
waarden_sORF_2 <- c(PLEK_sORF_2,CPAT_sORF_2,PORTRAIT_sORF_2)

barplot_sORF_2 <- barplot(waarden_sORF_2, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the sORF dataset", names=c("PLEK", "CPAT","PORTRAIT"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF_2, 0, round(waarden_sORF_2, 1), cex=1, pos=3)

##sORF_3 conserverd (Filter;Annotation:sORF;PhastCon:0.7;PyloP:4)
##total:326
##sORF_fasta_3.fa
#PLEK
Coding_sORF_3_PLEK <- 0
NonCoding_sORF_3_PLEK <- 326
error_sORF_3_PLEK <-0
waarden_sORF_3_PLEK <- c(Coding_sORF_3_PLEK,NonCoding_sORF_3_PLEK,error_sORF_3_PLEK)

barplot_sORF_PLEK_3 <- barplot(waarden_sORF_3_PLEK, beside=TRUE, axes=FALSE, xlab="Accuracy PLEK", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,326))
axis(2, at=seq(0,326,10))
text(barplot_sORF_PLEK_3, 0, round(waarden_sORF_3_PLEK, 1), cex=1, pos=3)
#CPAT
Coding_sORF_3_CPAT <-96
NonCoding_sORF_3_CPAT <- 229
error_sORF_3_CPAT <-1
waarden_sORF_3_CPAT <- c(Coding_sORF_3_CPAT,NonCoding_sORF_3_CPAT,error_sORF_3_CPAT)

barplot_sORF_3_CPAT <- barplot(waarden_sORF_3_CPAT, beside=TRUE, axes=FALSE, xlab="Accuracy CPAT", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,326))
axis(2, at=seq(0,326,10))
text(barplot_sORF_3_CPAT, 0, round(waarden_sORF_3_CPAT, 1), cex=1, pos=3)

#PORTRAIT
Coding_sORF_3_PORTRAIT <-66
NonCoding_sORF_3_PORTRAIT <- 18
error_sORF_3_PORTRAIT <-242
waarden_sORF_3_PORTRAIT <- c(Coding_sORF_3_PORTRAIT,NonCoding_sORF_3_PORTRAIT,error_sORF_3_PORTRAIT)

barplot_sORF_3_PORTRAIT <- barplot(waarden_sORF_3_PORTRAIT, beside=TRUE, axes=FALSE, xlab="Accuracy PORTRAIT", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,326))
axis(2, at=seq(0,326,10))
text(barplot_sORF_3_PORTRAIT, 0, round(waarden_sORF_3_PORTRAIT, 1), cex=1, pos=3)


#Summary
PLEK_sORF_3 <- 0
CPAT_sORF_3 <- 29.45
PORTRAIT_sORF_3 <- 20.22
waarden_sORF_3 <- c(PLEK_sORF_3,CPAT_sORF_3,PORTRAIT_sORF_3)

barplot_sORF_3 <- barplot(waarden_sORF_3, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the sORF dataset", names=c("PLEK", "CPAT","PORTRAIT"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF_3, 0, round(waarden_sORF_3, 1), cex=1, pos=3)

##sORF_4 All ORF (Filter;Annotation:sORF)
##total:1086
##sORF_fasta_4.fa
#PLEK
Coding_sORF_4_PLEK <- 0
NonCoding_sORF_4_PLEK <- 1086
error_sORF_4_PLEK <-0
waarden_sORF_4_PLEK <- c(Coding_sORF_4_PLEK,NonCoding_sORF_4_PLEK,error_sORF_4_PLEK)

barplot_sORF_PLEK_4 <- barplot(waarden_sORF_4_PLEK, beside=TRUE, axes=FALSE, xlab="Accuracy PLEK", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,1086))
axis(2, at=seq(0,1086,10))
text(barplot_sORF_PLEK_4, 0, round(waarden_sORF_4_PLEK, 1), cex=1, pos=3)
#CPAT
Coding_sORF_4_CPAT <-477
NonCoding_sORF_4_CPAT <- 608
error_sORF_4_CPAT <-1
waarden_sORF_4_CPAT <- c(Coding_sORF_4_CPAT,NonCoding_sORF_4_CPAT,error_sORF_4_CPAT)

barplot_sORF_4_CPAT <- barplot(waarden_sORF_4_CPAT, beside=TRUE, axes=FALSE, xlab="Accuracy CPAT", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,1086))
axis(2, at=seq(0,1086,10))
text(barplot_sORF_4_CPAT, 0, round(waarden_sORF_4_CPAT, 1), cex=1, pos=3)

#PORTRAIT
Coding_sORF_4_PORTRAIT <-526
NonCoding_sORF_4_PORTRAIT <- 455
error_sORF_4_PORTRAIT <-103
waarden_sORF_4_PORTRAIT <- c(Coding_sORF_4_PORTRAIT,NonCoding_sORF_4_PORTRAIT,error_sORF_4_PORTRAIT)

barplot_sORF_4_PORTRAIT <- barplot(waarden_sORF_4_PORTRAIT, beside=TRUE, axes=FALSE, xlab="Accuracy PORTRAIT", names=c("Coding", "Non-coding","error"), col=(c("aquamarine3","orange","red")), ylab="Total", ylim=c(0,1086))
axis(2, at=seq(0,1086,10))
text(barplot_sORF_4_PORTRAIT, 0, round(waarden_sORF_4_PORTRAIT, 1), cex=1, pos=3)
#Summary
PLEK_sORF_4 <- 0
CPAT_sORF_4 <- 44
PORTRAIT_sORF_4 <- 48.52
waarden_sORF_4 <- c(PLEK_sORF_4,CPAT_sORF_4,PORTRAIT_sORF_4)

barplot_sORF_4 <- barplot(waarden_sORF_4, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the sORF dataset", names=c("PLEK", "CPAT","PORTRAIT"), col=(c("aquamarine3","orange","red")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_sORF_4, 0, round(waarden_sORF_4, 1), cex=1, pos=3)


####### Summary####
library(ggplot2)

test_set_ORF=c(rep("All sORF",3),rep("Bazinni's sORF",3),rep("Conserved ORF",3),rep("Bazinni and conserved",3))
algorithm_ORF=rep(c("PLEK","CPAT","PORTRAIT"),4)
newvalue_ORF <- (c(waarden_sORF_4,waarden_sORF,waarden_sORF_3,waarden_sORF_2))

data_ggplot_ORF=data.frame(test_set_ORF, algorithm_ORF, newvalue_ORF)
ggplot(data_ggplot_ORF, aes(fill=algorithm_ORF, y=newvalue_ORF, x=test_set_ORF)) + 
  geom_bar(position="dodge", stat="identity") +
  geom_text(aes(label=newvalue_ORF),size = 3,hjust = 0.5, vjust = 0,position=position_dodge(0.9)) +
  ylim(0, 100)






  







