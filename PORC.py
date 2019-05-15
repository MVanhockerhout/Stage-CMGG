#!/usr/bin/python3

import os 
import glob
import re
from textwrap import wrap
from docx import Document
import pandas as pd
import xlrd

print ("Welcome, This script will give you a coding score of the CPAT en PORTRAIT algorithm combined; PORC ")
loco = input("Geef de directory in waar je file zit")
location = ("{}".format(loco))
os.chdir(location)
print("\nLook for your file in {}:".format(location))
name_file = input("Hoe heet de file, vergeet niet om .xlsx ernaast te plaatsen")

for filename in glob.iglob(name_file):
    print(filename)

#open your xlsx file
full_loco = ("{}/{}".format(loco,name_file))
print ("\nHierna zou de full_loco moeten komen {}".format(full_loco))

file_name =  full_loco
sheet =  'Blad1' 


df = pd.read_excel(io=file_name, sheet_name=sheet)


#selecting the correct sequences for CPAT and making fasta files
df_CPAT_1 = df[df['Sorf length'] > 71]
df_CPAT_2 = df[df['Sorf length'] < 60]
df_CPAT = df_CPAT_1.append(df_CPAT_2)
df_PORTRAIT = df[(df['Sorf length']>60) & (df['Sorf length']<=70)]

amount_CPAT = df_CPAT['Sorf length'].count()
# fasta file maker
seq_CPAT = []
a = 1
while a < amount_CPAT:
    line_C = df_CPAT['Transcript sequence']
    seq_C = line_C.iloc[a]
    seq_CPAT.append(seq_C)
    a = a +1
    
ID_CPAT = []
b = 1
while b < amount_CPAT:
    line_CP = df_CPAT['Sorf ID']
    seq_CP = line_CP.iloc[b]
    ID_CPAT.append(seq_CP)
    b = b +1
    
ofile = open("CPAT_fasta.fa", "w")
f = 0
open_string =  "> {} ""\n" "{} \n"
newamount_CPAT = amount_CPAT-1
while f < newamount_CPAT:
    string = (open_string.format(ID_CPAT[f],seq_CPAT[f]))
    ofile.write(string)
    f = f + 1
ofile.close()
#fasta file maker for PORTRAIT
amount = df_PORTRAIT['Sorf length'].count()

seq_PORTRAIT = []
c = 1
while c < amount:
    line_P = df_PORTRAIT['Transcript sequence']
    seq_P = line_P.iloc[c]
    seq_PORTRAIT.append(seq_P)
    c = c +1
    
ID_PORTRAIT = []
e = 1
while e < amount:
    line_PO = df_PORTRAIT['Sorf ID']
    seq_PO = line_PO.iloc[e]
    ID_PORTRAIT.append(seq_PO)
    e = e +1



ofile = open("PORTRAIT_fasta.fa", "w")
g = 0
open_string_P =   "> {} ""\n" "{} \n"
newamount = amount -1
while g < newamount:
    string = (open_string_P.format(ID_PORTRAIT[g],seq_PORTRAIT[g]))
    ofile.write(string)
    g = g + 1
ofile.close()

homedir = "/home/mathias/"
os.chdir(homedir)
#Using the CPAT algorithm
#the directory does not need to be changed
homedir = "/home/mathias/"
os.chdir(homedir)
cmd_CPAT = 'cpat.py -g /home/mathias/CPAT_fasta.fa -d /home/mathias/CPAT/Human_logitModel -x /home/mathias/CPAT/Human_Hexamer.tsv -o PORC_CPAT'
os.system(cmd_CPAT)

#open the R script, execute and save
r_CPAT= open("PORC_CPAT.r","w")

r_CPAT.write('load("/home/mathias/CPAT/Human_logitModel")\n')
r_CPAT.write('test <- read.table(file="PORC_CPAT.dat",sep="\t",col.names=c("ID","mRNA","ORF","Fickett","Hexamer"))\n')
r_CPAT.write('test$prob <- predict(mylogit,newdata=test,type="response")\n')
r_CPAT.write('attach(test)\n')
r_CPAT.write('output <- cbind("mRNA_size"=mRNA,"ORF_size"=ORF,"Fickett_score"=Fickett,"Hexamer_score"=Hexamer,"coding_prob"=test$prob)\n')
r_CPAT.write('write.table(output,file="PORC_CPAT",quote=F,sep="\t",row.names=ID)\n')

r_CPAT.write("library(xlsx)\n")
r_CPAT.write('write.xlsx(output, "mydata_CPAT_PORC.xlsx")')
r_CPAT.close() 

cmd_R = 'R < PORC_CPAT.r --save '
os.system(cmd_R)

#calculate the probability's of CPAT
location_CPAT_PORC = ('/home/mathias/CPAT/mydata_CPAT_PORC.xlsx')
file_name_CPAT_PORC =  location_CPAT_PORC
sheet_CPAT_PORC =  'Sheet1' 

df_CPAT_PORC = pd.read_excel(io=file_name_CPAT_PORC, sheet_name=sheet_CPAT_PORC)

df_Coding_CPAT_PORC = df_CPAT_PORC[df_CPAT_PORC['coding_prob'] > 0.364]
df_NonCoding_CPAT_PORC = df_CPAT_PORC[df_CPAT_PORC['coding_prob'] <= 0.364]

amount_CPAT_PORC = df_CPAT_PORC['coding_prob'].count()
amount_Coding_CPAT_PORC = df_Coding_CPAT_PORC['coding_prob'].count()


#go to PORTRAIT dir and execute programm
location_PORTRAIT = "/home/mathias/PORTRAIT"
os.chdir(location_PORTRAIT)
cmd_PORTRAIT = 'perl portrait-1.1.pl -i /home/mathias/PORTRAIT_fasta.fa'
os.system(cmd_PORTRAIT)

#go back to home directory, because the new files are there
os.chdir(homedir)

#opening the PORTRAIT result file and calculating the coding probabilities
with open('PORTRAIT_fasta.fa_results_all.scores', 'r') as G:
    A = (G.read())
    coding_PORTRAIT = 0
    total_PORTRAIT = 0
    for item in A:
        result_1 = re.search(':1:',item)
        if result_1:
            total_PORTRAIT = total_PORTRAIT + 1
            result_2 = re.findall(" :1: ", item)
            if result_2:
                    coding_PORTRAIT = coding_PORTRAIT + 1
G.close()


#calculating the total coding probability of PORC
calculating_percentage = ((coding_PORTRAIT + amount_Coding_CPAT_PORC)/(amount_CPAT + amount))
total_percentage = (calculating_percentage * 100)

print ("the percentage coding of your file is {}".format(total_percentage))

