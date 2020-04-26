#!/bin/bash
# Script to rename downloaded articles

if [ "$1" == "-h" ]
then
  echo " "
  echo -e "\033[34mCreatePdf Skript\033[0m"
  echo "This Script convert pdf files using its meta data: Year_Author_Title.pdf"
  echo " "
  echo -e "\033[34mUsage:\033[0m"
  echo "RenamePDF"
  echo " "
  echo -e "\033[34mOptions:\033[0m"
  echo "No more options"
  echo " "
  exit 0
fi


for FileName in *pdf
do
#FileName="c5sm01713k.pdf"
echo "---------------"
echo "---------------"
echo "File Name:" $FileName
Title=$(pdfinfo "$FileName" | grep "Title")
Author=$(pdfinfo "$FileName" | grep "Author")
Date=$(pdfinfo "$FileName" | grep "CreationDate")
Title=$(echo "$Title" | sed -e 's/Title://g')
Title=$(echo "$Title" | sed -e 's/^[ \t]*//')
Title=$(echo "${Title// /_}")
Author=$(echo "$Author" | sed -e 's/Author://g')
Author=$(echo "$Author" | sed -e 's/^[ \t]*//')
Author=$(echo "$Author" | tr -d '.,')
Author=$(echo "${Author// /_}")
Date=$(echo "${Date: -4}")

if [ -z "$Title" ];
then
    echo "No Title found"
    if [ -z "$Author" ]; then
        echo "No Author found"
    else
        echo "Author found"
        echo $Author
    fi
else
    echo "Title:"
    echo "---------------"
    echo $Title
    if [ -z "$Author" ]; then
        echo "No Author found"
        Postfix=".pdf"
        EtAl="_etal_"
        Underline="_"
        OutputFileName="$Date$Underline$Title$Postfix"
        mv $FileName $OutputFileName
        echo "Written Data in:"
        echo "---------------"
        echo $OutputFileName
    else
        echo "Author:"
        echo "---------------"
        echo $Author
        Postfix=".pdf"
        EtAl="_etal_"
        Underline="_"
        OutputFileName="$Date$Underline$Author$EtAl$Title$Postfix"
        mv $FileName $OutputFileName
        echo "Written Data in:"
        echo "---------------"
        echo $OutputFileName
    fi
fi
echo "---------------"
echo "---------------"
echo " "
echo " "
done
