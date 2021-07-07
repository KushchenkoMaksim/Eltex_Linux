#!/bin/bash

#Регулярное выражение соответсвующее целому числу
number='^[+-]?[0-9]+$'

#Проверки вводимых аргументов, на то что они являются целыми числами
if ! [[ $1 =~ $number ]] ; then
   echo "error: $1 is not a number" >&2
   exit 1
fi

if ! [[ $2 =~ $number ]] ; then
   echo "error: $2 is not a number" >&2
   exit 1
fi

if ! [[ $3 =~ $number ]] ; then
   echo "error: $3 is not a number" >&2
   exit 1
fi

#Попарное сравнение трех чисел
if [[ "$1" -ge "$2" ]]
then
	if [[ "$1" -ge "$3" ]]
	then
		echo $1
	else
		echo $3
	fi
else
	if [[ "$2" -ge "$3" ]]
	then
		echo $2
	else
		echo $3
	fi
fi

