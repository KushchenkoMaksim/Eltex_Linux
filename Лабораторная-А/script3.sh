#!/bin/bash

#В этой строке будет храниться текст
string=""

#Работает пока не break
while true
do
	#Считываем построчно
	read buf
	#Проверка выходного условия
	if [[ $buf == "q" ]]
	then
		echo $string
		break
	else
		#Иначе конкатинация строк
		string="$string$buf"
	fi
done
