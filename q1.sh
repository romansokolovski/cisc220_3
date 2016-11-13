#!/bin/bash
#question 1







function main{
	for (( i=1000; i<=10000; i++ )); do 
		numString="$i"
#		sum=0
#		sum=$(( $sum+($num%10) ))

		echo $numString
	done
}

main()
