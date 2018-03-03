# Check for missing CoAs
# Written by Sam. Feel free to modify and redistribute, just give credit.
from os import listdir

titles = []
coas = []

for filename in listdir("../gfx/flags"):
    if ".tga" in filename:
        coas.append(filename.replace(".tga", ""))

#print coas

for filename in listdir("../common/landed_titles"):
    file = open("../common/landed_titles/" + filename)
    for line in file.readlines():
        title = ""
        validTitle = 0
        reading = False
        prevChar = ""
        for char in line:
            if char == '#':
                break
            if (prevChar.isspace() or prevChar == "") and (char == 'c' or char == 'd' or char == 'k' or char == 'e'):
                reading = True
            if not (char.isalpha() or char == '_' or char == '-'):
                reading = False
            if reading:
                title += char
            if char == '=' or char == '{':
                validTitle += 1
            prevChar = char
        if validTitle == 2 and "color" not in title and title != "":
            titles.append(title)

#print titles
for title in titles:
    if title not in coas:
        print title

#print "Extraneous CoAs:"
#for coa in coas:
#    if coa not in titles:
#        print coa
        
#while True:
#    continue
    