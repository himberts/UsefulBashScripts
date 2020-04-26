#/bin/bash
#Skript to convert every .eps file to .pdf

if [ "$1" == "-h" ]
then
  echo " "
  echo -e "\033[34mCreatePdf Skript\033[0m"
  echo "This Script convert every eps-file in a directory to pdf"
  echo " "
  echo -e "\033[34mUsage:\033[0m"
  echo "aepstopdf"
  echo " "
  echo -e "\033[34mOptions:\033[0m"
  echo "No more options"
  echo " "
  exit 0
fi 


for i in `ls *.eps`
do
epstopdf $i
done
