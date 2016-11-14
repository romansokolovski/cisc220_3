#!/bin/bash
#question 1

function recursion {
	numb=$1
	sum=0
	while [[ $numb -gt 0 ]]; do 
		x=`expr $numb % 10`
		sum=`expr $sum + $x`
		numb=`expr $numb / 10`
	done
	if [ $sum -eq 7 ]; then
		echo 1
	elif [ $sum -lt 10 ]; then
		echo 0
	else
		recursion $sum
	fi
}


function main {
	for (( i=1000; i<=10000; i++ )); do
		if [ $(recursion $i) -eq 1 ]; then
			echo $i
		fi
	done
}


main
