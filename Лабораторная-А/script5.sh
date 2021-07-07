#!/bin/bash

#Регулярное выражение соответсвующее числу от 1 -4
number='^[1-4]$'


echo "Choose what to do:"
echo "1) nano"
echo "2) vim"
echo "3) ifconfig"
echo "4) close menu"
echo "---------"

#Считываем выбор
read buf
#Проверка на подходящее число
if ! [[ $buf =~ $number ]]
then
   echo "error: $buf is not a number between 1 and 4" >&2
   exit 1
fi

#Обработка в зависимости от выбранного числа
case $buf in
"1" )
nano
;;
"2" )
vi
;;
"3" )
ifconfig
;;
"4" )
;;
esac
