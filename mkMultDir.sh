#/bin/bash
#Skript to multiple enumbered directorys

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

for((i=1; i<=$2; i++))
do
mkdir `printf "%s_%02d" $1 $i`
done
