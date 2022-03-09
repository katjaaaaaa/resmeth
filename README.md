# "De" counter script

The program I wrote takes a .txt and .pdf files with text in it, reads it and searches for a word "de". The search is case-sensitive and the output of a program is the amount of "de", encountered in a file. To test the script I included a .pdf file and a raw version of a webpage of Rijksuniversiteit Groningen. 
## To run the code on a .pdf file
Before running the code it is important install the package first that lets Linux to work with .pdf format.  
Insert `sudo apt install pdftohtml` to install the package
After installation the command to run a script with a .pdf file:  
`bash de_counter.sh Rijksuniversiteit_Groningen.pdf`

## To run the code on a .txt file
The command to run a script with a .txt file:  
`bash de_counter.sh rug.txt`  
If there is a need to run a code on another webpage, to install a raw version of a page use the following command:  
`curl -sS "<url of a webpage>" > <name of a file>.txt`  
