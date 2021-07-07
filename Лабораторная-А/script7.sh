#!/bin/bash

#Регулярное выражение соответсвующее целому числу
number='^[+-]?[0-9]+$'
#Регулярное выражение соответсвующее арифметическим знакам знакам
operators='^[+%*/-]$'

while true
do
	isText=false
	read first
	#Проверка на условие выхода
	if [[ $first  == "q" ]]
	then
		break
	fi
	read second
	read third
	
	#Проверка на число
	if ! [[ $first =~ $number ]]
	then
	   isText=true
	fi
	
	#Проверка на оператор
	if ! [[ $second =~ $operators ]]
	then
	   isText=true
	fi
	
	#Проверка на число
	if ! [[ $third =~ $number ]]
	then
	   isText=true
	fi
	
	#Если текст добавляем приписку и выводим
	if [[ $isText == "true" ]]
	then
		echo "Текстовые данные - $first $second $third"
	else
		#иначе рассчитываем результат и выводим
		let "result=$first$second$third"
		echo $result
	fi
	
	echo "-------"
done
