#!/bin/bash


#Проверка на то, что программа не запущена из домашней директории
if [[ $PWD != $HOME ]]
then
   echo "error: Program launched not from home directory" >&2
   exit 1
fi

#Иначе выводим директорию
echo $PWD
exit 0
