#! /bin/bash
#Skript to rotate your screen

  if [ "$1" == "-h" ]
  then
    echo " "
    echo -e "\033[34mCreatePdf Skript\033[0m"
    echo "This Script allows you to rotate your screen. It becomes handy when using a convertible laptop."
    echo " "
    echo -e "\033[34mUsage:\033[0m"
    echo "RotateScreen [option]"
    echo " "
    echo -e "\033[34mOptions:\033[0m"
    echo "-l rotate screen left"
    echo " "
    exit 0
  fi


if [ $1 == "-l" ]
  then
  xrandr --output eDP1 --rotate left
else
  xrandr --output eDP1 --rotate normal
fi
