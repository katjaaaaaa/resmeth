# "De" counter script

This program takes a .txt or .pdf file with text in it as input, reads it and searches for a word "de". The search is case-sensitive and it counts all "de"s, encountered in a file. To test the script I included a .pdf file and a raw version of a webpage of Rijksuniversiteit Groningen as a .txt file. It is also possible to use other files to work with the script. The instructions of how to do that are listed in "to run" section.

## Used software
The script was tested by using `bash` command on **Ubuntu OS**. Steps for running the code, as well as expected output of the program, are accurate for the following versions of software: 
- **bash**: 5.0.17(1)-release
- **Ubuntu**: 20.04.4 LTS

## To run the code on a .pdf file
Before running the code it is important install the package first that lets Ubuntu to work with .pdf file format.  
Insert `sudo apt install pdftohtml` to install the package  
After installation the command to run a script with a .pdf file:  
`bash de_counter.sh <filename>.pdf`

## To run the code on a .txt file
The command to run a script with a .txt file:  
`bash de_counter.sh <filename>.txt`  
If there is a need to run a code on a webpage, to install a raw version of a page use the following command:  
`curl -sS "<url of a webpage>" > <name of a file>.txt`  
**Beware** that a raw version of a webpage may also contain meta-data with "de" in it that is not shown on site. If there is a need to count only "de"s that are visible on a page, the use of .pdf method is more sufficient. 

## Expected output
The output of the program must be an **integer**, representing the amount of "de"s in a file. Otherwise an error message will be shown. 
Expected output for `bash de_counter.sh Rijksuniversiteit_Groningen.pdf`:  
253  
  
Expected output for `bash de_counter.sh rug.txt`:  
251
