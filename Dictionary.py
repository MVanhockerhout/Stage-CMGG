#!/usr/bin/python3
#this script will make a positive and a negative set, from 50, 100 and 150 AA


#this part will make a ID_list_CDS ( a list of all the ID's) and a dictionary of the CDS
from collections import defaultdict 
f = open('/home/mathias/Downloads/CDS.txt','r')
ID_list_CDS = []
dictionary_CDS=defaultdict(str)
name = ''
for line in f:
    if line.startswith('>'):
        name = line[1:-1]
        ID_list_CDS.append(name)
        continue
    dictionary_CDS[name] += line

#This part will actually make the positive set dictionary
Pos_set = {}
for item in ID_list_CDS:
    Pos_set.update({item: {"CDS": dictionary_CDS[item].rstrip('\n')}

                     })


#Bij dit stuk worden de documenten gemaakt
# 50 AA, met startcodon
# 150 nucleotiden CDS (inclusief startcodon) + stopcodon (TAA)

ofile = open("Pos_set_50.fa", "w")
for item in ID_list_CDS:
    if (len(Pos_set[item]["CDS"])) > 149:
        ofile.write(">" + item + "\n" + Pos_set[item]["CDS"][0:149] + ("TAA") + "\n")
ofile.close() 


#Bij dit stuk worden de documenten gemaakt
# 100 AA, met startcodon
# 300 nucleotiden CDS (inclusief startcodon) + stopcodon (TAA) 

ofile = open("Pos_set_100.fa", "w")
for item in ID_list_CDS:
    if (len(Pos_set[item]["CDS"])) > 299:
        ofile.write(">" + item + "\n" + Pos_set[item]["CDS"][0:299] + ("TAA") + "\n")
ofile.close() 



#Bij dit stuk worden de documenten gemaakt
# 150 AA, met startcodon
# 450 nucleotiden CDS (inclusief startcodon) + stopcodon (TAA) 

ofile = open("Pos_set_150.fa", "w")
for item in ID_list_CDS:
    if (len(Pos_set[item]["CDS"])) > 449:
        ofile.write(">" + item + "\n" + Pos_set[item]["CDS"][0:449] + ("TAA") + "\n")
ofile.close() 


####################################################
#This part will be for the negative set


#deze blok zal een ID_list_CDS en dictionary_CDS maken
 

f = open('/home/mathias/Downloads/Neg_set.fa','r')
ID_list_Neg_set = []
dictionary_Neg_set=defaultdict(str)
name = ''
for line in f:
    if line.startswith('>'):
        name = line[1:-1]
        ID_list_Neg_set.append(name)
        continue
    dictionary_Neg_set[name] += line

#Dit stuk zal de dictionary en ID_list_Neg_set maken
Neg_set = {}
for item in ID_list_Neg_set:
    Neg_set.update({item: {"sequence": dictionary_Neg_set[item].rstrip('\n')}

                     })


#Bij dit stuk worden de documenten gemaakt
# 50 AA van de negatieve set
# Startcodon (ATG) + 150 nucleotiden negatieve set + stopcodon (TAA)

ofile = open("Neg_set_100.fa", "w")
for item in ID_list_Neg_set:
    if (len(Neg_set[item]["sequence"])) > 299:
        ofile.write(">" + item + "\n" + ("ATG") + Neg_set[item]["sequence"][0:299] + ("TAA") + "\n")
ofile.close() 


# 100 AA van de negatieve set
# Startcodon (ATG) + 300 nucleotiden negatieve set + stopcodon (TAA)

ofile = open("Neg_set_100.fa", "w")
for item in ID_list_Neg_set:
    if (len(Neg_set[item]["sequence"])) > 299:
        ofile.write(">" + item + "\n" + ("ATG") + Neg_set[item]["sequence"][0:299] + ("TAA") + "\n")
ofile.close() 



#Bij dit stuk worden de documenten gemaakt
# 150 AA van de negatieve set
# Startcodon (ATG) + 450 nucleotiden negatieve set + stopcodon (TAA)

ofile = open("Neg_set_150.fa", "w")
for item in ID_list_Neg_set:
    if (len(Neg_set[item]["sequence"])) > 449:
        ofile.write(">" + item + "\n" + ("ATG") + Neg_set[item]["sequence"][0:449] + ("TAA") + "\n")
ofile.close() 

