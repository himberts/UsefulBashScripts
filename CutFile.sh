#!/bin/bash
#Skript to crop lines from a file

if [ "$1" == "-h" ]
then
  echo " "
  echo -e "\033[34mCreatePdf Skript\033[0m"
  echo "This Script cut a text file"
  echo "by using sed"
  echo " "
  echo -e "\033[34mUsage:\033[0m"
  echo "CutFile InputFile a b c OutputFile"
  echo " "
  echo "This delete row a to b and the last c rows from the Inputfile"
  echo "and write it to the OutputFile"
  echo ""
  echo -e "\033[34mOptions:\033[0m"
  echo "no more options"
  echo " "
  exit 0
fi

cat $1 | sed $2,$3d | sed -e :a -e "\$d;N;2,$4ba" -e 'P;D' > $5
