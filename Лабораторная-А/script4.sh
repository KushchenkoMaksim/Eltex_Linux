#!/bin/bash

#Регулярное выражение соответсвующее целому числу
number='^[+-]?[0-9]+$'

#Счетчик
count=1

#Работает пока не break
while true
do
	#Считываем построчно
	read buf
	#Проверка на число
	if ! [[ $buf =~ $number ]]
	then
	   echo "error: $buf is not a number" >&2
	   exit 1
	fi

	#Проверка выходного условия
	if [[ `expr $buf % 2` == 0 ]]
	then
		echo "------"
		echo $count
		break
	else
		#наче +1 к счету
		count=$(($count+1))
	fi
done
