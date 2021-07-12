#!/bin/bash

#Регулярное выражение соответсвующее числу от 1 -5
number='^[1-5]$'

while true
do
	echo "Choose what to do:"
	echo "1) remftrash"
	echo "2) unftrash"
	echo "3) makebackup"
	echo "4) restorebackup"
	echo "5) exit"
	echo "---------"
	
	#Считываем выбор
	read buf
	#Проверка на подходящее число
	if ! [[ $buf =~ $number ]]
	then
	   echo "error: $buf is not a number between 1 and 5" >&2
	   exit 1
	fi
	
	#Обработка в зависимости от выбранного числа
	case $buf in
	"1" )
	echo "Write a file name"
	read word
	./remftrash "$word"
	;;
	"2" )
	echo "Write a file name"
	read word
	./unftrash "$word"
	;;
	"3" )
	./makebackup
	;;
	"4" )
	./restorebackup
	;;
	"5" )
	break
	;;
	esac
	echo
done
