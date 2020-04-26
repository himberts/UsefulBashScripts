#! /bin/bash
#Skript to create a new command

  if [ "$1" == "-h" ]
  then
    echo " "
    echo -e "\033[34mCreatePdf Skript\033[0m"
    echo "This Script allows you to add a shell script to your linux-OS. It requires a folder /usr/local/UserScripts/ to exist"
    echo " "
    echo -e "\033[34mUsage:\033[0m"
    echo "CreateNewCommand FileName_without_extention"
    echo " "
    echo -e "\033[34mOptions:\033[0m"
    echo "there are no more options"
    echo " "
    exit 0
  fi

cp "$1.sh" /usr/local/UserScripts/$1
ln -s /usr/local/UserScripts/$1 /usr/local/bin/$1
