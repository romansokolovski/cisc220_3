#!/bin/bash
#question 1








function main {
	for (( i=1000; i<=1010; i++ )); do 
		numb=$i
		sum=0
		echo the number is: $numb
		while [[ $numb -gt 0 ]] ; do 
			x=`expr $numb % 10`
			sum=`expr $sum + $x`
			numb=`expr $numb / 10`
		done
		echo the sum of $i is $sum
	done
}

main
