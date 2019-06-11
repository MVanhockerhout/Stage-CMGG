#!/usr/bin/python3


#open the xlsx file
import pandas as pd
import xlrd
file_name =  '/home/mathias/Pos_set_GFF.xlsx'
sheet =  'Sheet1' 
#the name of this xlsx file will be df
df = pd.read_excel(io=file_name, sheet_name=sheet)

#Because there or more than one 3 UTR start, this part will take the smallest start and will change this into integer instead of str
for row in df.index:
    if (type(df['3 UTR start'][row])) !=int:
        split_3UTR = sorted(df['3 UTR start'][row].rsplit(";"))
        df['3 UTR start'][row] = int(max(split_3UTR))
        



ofile = open("Pos_set_50.GFF", "w")  #this will be the name of the new file that will be created
for row in df.index:
    
    # this part will create a list of all Exon region ends that are still in the CDS of the transcript
    # to be in the CDS of the transcript, the region ends need to be bigger than 5 UTR end and smaller or equal to the 3UTR end
    split_exon_end = sorted(df['Exon region end'][row].rsplit(";"))
    split_exon_end = [ int(x) for x in split_exon_end ] # this line is to change every item in the list to integer
    Eerstvolgende_exon_end = list()
    for i in split_exon_end:
        if i > int(df['5 UTR end'][row]) and i <= int(df['3 UTR start'][row]):
            Eerstvolgende_exon_end.append(i)
        Eerstvolgende_exon_end.append(df['3 UTR start'][row])
        
        
        
    # this part will create a list of all Exon region starts that are in the CDS of the transcript
    split_exon_start = sorted(df['Exon region start'][row].rsplit(";"))
    split_exon_start = [ int(x) for x in split_exon_start ] # this line is to change every item in the list to integer
    Eerstvolgende_exon_start = list()
    for j in split_exon_start:
        if j > df['5 UTR end'][row] and j < df['3 UTR start'][row]:
            Eerstvolgende_exon_start.append(j)
            
            
    # this is the actual start of making the file
    m = 0
    n= 2
    if (df['5 UTR end'][row] + 150) < Eerstvolgende_exon_end[m]: #if your 150 nucleotides(starting from the 5UTR end), isn't bigger than the next exon end, than this loop is used
        ofile.write("{} \t  unknown \t  unknown \t {} \t {} \t . \t {} \t . \t {} \n".format(df['Chromosome'][row], df['5 UTR end'][row], (df['5 UTR end'][row] + 150), df['strand'][row], df['ENST ID'][row]))
        continue
        
    if (Eerstvolgende_exon_start[m] + (150 - (Eerstvolgende_exon_end[m] - df['5 UTR end'][row])) < Eerstvolgende_exon_end[m+1]): 
        #each line represents a peice of the 150 nucleotides divided into the different exons
        ofile.write("{} \t  unknown \t  unknown \t {} \t {} \t . \t {} \t . \t {} \n".format(df['Chromosome'][row], df['5 UTR end'][row], Eerstvolgende_exon_end, df['strand'][row], df['ENST ID'][row]))
        ofile.write("{} \t  unknown \t  unknown \t {} \t {} \t . \t {} \t . \t {} \n".format(df['Chromosome'][row], Eerstvolgende_exon_start[m], (Eerstvolgende_exon_start[m] + (150 - (Eerstvolgende_exon_end[m] - df['5 UTR end'][row]))), df['strand'][row], df['ENST ID'][row]))
        
    else:
        ofile.write("{} \t  unknown \t  unknown \t {} \t {} \t . \t {} \t . \t {} \n".format(df['Chromosome'][row], df['5 UTR end'][row], Eerstvolgende_exon_end, df['strand'][row], df['ENST ID'][row]))
        ofile.write("{} \t  unknown \t  unknown \t {} \t {} \t . \t {} \t . \t {} \n".format(df['Chromosome'][row], Eerstvolgende_exon_start[m], Eerstvolgende_exon_end[m+1] , df['strand'][row], df['ENST ID'][row]))
        while ((Eerstvolgende_exon_start[m+1] + (150 - (Eerstvolgende_exon_end[n] - Eerstvolgende_exon_start[m+1])))) > Eerstvolgende_exon_end[n]:
            ofile.write("{} \t  unknown \t  unknown \t {} \t {} \t . \t {} \t . \t {} \n".format(df['Chromosome'][row], Eerstvolgende_exon_start[m+1], Eerstvolgende_exon_end[n] , df['strand'][row], df['ENST ID'][row]))
            m=m+1 
            n=n+1
        ofile.write("{} \t  unknown \t  unknown \t {} \t {} \t . \t {} \t . \t {} \n".format(df['Chromosome'][row], Eerstvolgende_exon_start[m+2], (Eerstvolgende_exon_start[m+2] + (150 - (Eerstvolgende_exon_end[n+1]- Eerstvolgende_exon_start[m+2]))) , df['strand'][row], df['ENST ID'][row]))
        
ofile.close()  #closing the new file 
# the output will be a GFF file which represents the positive set. This file will be the CDS of 150 nucleotides or 50AA
