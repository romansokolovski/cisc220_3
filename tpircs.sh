#!/bin/bash

read -p "Insert a list of words: " -a listWords
newArray=($listWords)

for (( i=0; i<${#newArray[@]}; i++ )); do
	echo ${newArray[i]}|rev;
done


