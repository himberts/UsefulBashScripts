#! /bin/bash
# Script to convert multiple .tif files to jpg

if [ "$1" == "-h" ]
then
  echo " "
  echo -e "\033[34mCreatePdf Skript\033[0m"
  echo "This Script create several directorys"
  echo " "
  echo -e "\033[34mUsage:\033[0m"
  echo "CreateSeDir Dir_Name Number"
  echo " "
  echo -e "\033[34mOptions:\033[0m"
  echo "No more options"
  echo " "
  exit 0
fi


for pic in *.tif ;
do
    picname=$(basename "$pic" .tif)
    picname="$picname.jpg";
    echo "Bearbeite Bild:    $picname"
    convert "$pic"  "$picname"
done
