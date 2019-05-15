#CPAT
## percentage coding
Human_coding_transcripts_CDS_CPAT <- 97.84
Human_coding_transcripts_mRNA_CPAT <- 97.55
Human_noncoding_transcripts_RNA_CPAT <- 5.40
Human_test_coding_mRNA_CPAT <- 97.25
Human_test_noncoding_mRN_CPAT <- 4.95

waarden_CPAT <- c(Human_coding_transcripts_CDS_CPAT,Human_coding_transcripts_mRNA_CPAT,Human_noncoding_transcripts_RNA_CPAT,Human_test_coding_mRNA_CPAT,Human_test_noncoding_mRN_CPAT)
barplot_TEST_CPAT <- barplot(waarden_CPAT, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the testset using CPAT", names=c("Coding_transcripts_CDS", "Coding_transcripts_mRNA","NonCoding_transcripts","Coding_testmRNA","NonCoding_testmRNA"), col=(c("aquamarine3","orange","red","yellow","lightblue")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_TEST_CPAT, 0, round(waarden_CPAT, 1), cex=1, pos=3)

#PLEK
## percentage coding
Human_coding_transcripts_CDS_PLEK <- 74.23
Human_coding_transcripts_mRNA_PLEK <- 93.78
Human_noncoding_transcripts_RNA_PLEK <- 0.61
Human_test_coding_mRNA_PLEK <- 93.58
Human_test_noncoding_mRN_PLEK <- 4.32

waarden_PLEK <- c(Human_coding_transcripts_CDS_PLEK,Human_coding_transcripts_mRNA_PLEK,Human_noncoding_transcripts_RNA_PLEK,Human_test_coding_mRNA_PLEK,Human_test_noncoding_mRN_PLEK)
barplot_TEST_PLEK <- barplot(waarden_PLEK, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the testset using CPAT", names=c("Coding_transcripts_CDS", "Coding_transcripts_mRNA","NonCoding_transcripts","Coding_testmRNA","NonCoding_testmRNA"), col=(c("aquamarine3","orange","red","yellow","lightblue")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_TEST_PLEK, 0, round(waarden_PLEK, 1), cex=1, pos=3)

#PORTRAIT
## percentage coding
Human_coding_transcripts_CDS_PORTRAIT <- 98.76
Human_coding_transcripts_mRNA_PORTRAIT <- 96.69
Human_noncoding_transcripts_RNA_PORTRAIT <-13.24 
Human_test_coding_mRNA_PORTRAIT <- 96.40
Human_test_noncoding_mRNA_PORTRAIT <-12.75


waarden_PORTRAIT <- c(Human_coding_transcripts_CDS_PORTRAIT,Human_coding_transcripts_mRNA_PORTRAIT,Human_noncoding_transcripts_RNA_PORTRAIT,Human_test_coding_mRNA_PORTRAIT,Human_test_noncoding_mRNA_PORTRAIT)
barplot_TEST_PORTRAIT <- barplot(waarden_PORTRAIT, beside=TRUE, axes=FALSE, xlab="Coding algorithms for the testset using CPAT", names=c("Coding_transcripts_CDS", "Coding_transcripts_mRNA","NonCoding_transcripts","Coding_testmRNA","NonCoding_testmRNA"), col=(c("aquamarine3","orange","red","yellow","lightblue")), ylab="Percentage (%)", ylim=c(0,100))
axis(2, at=seq(0,100,10))
text(barplot_TEST_PORTRAIT, 0, round(waarden_PORTRAIT, 1), cex=1, pos=3)

####### Summary####
library(ggplot2)

test_set=c(rep("Coding_tr_CDS",3),rep("Coding_tr_mRNA",3),rep("NonCoding_tr_mRNA",3),rep("test_coding",3),rep("test_NonCoding",3))
algorithm=rep(c("PLEK","CPAT","PORTRAIT"),5)
  i <-1 
  newvalue <- list()
  while (i < 6){
    newvalue <- c(newvalue,waarden_PLEK[i])
    newvalue <- c(newvalue,waarden_CPAT[i])
    newvalue <- c(newvalue, waarden_PORTRAIT[i])
    i <- i +1
  }
newvalue <- as.numeric(newvalue)
  

data_ggplot=data.frame(test_set, algorithm, newvalue)
ggplot(data_ggplot, aes(fill=algorithm, y=newvalue, x=test_set)) + 
  geom_bar(position="dodge", stat="identity") +
  geom_text(aes(label=newvalue),size = 3,hjust = 0.5, vjust = 0,position=position_dodge(0.9))+
  ylim(0, 100)







