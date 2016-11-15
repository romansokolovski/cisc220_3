#!/bin/bash


strengthLvl=0

echo "Password Strength Checker"
echo " "
echo "The following must be met for a password to be considered Strong: "
echo " "
echo "--Minimum length of 8 characters"
echo "--Must contain at least one numeric character"
echo "--Must contain at least one of the following non-alphabetic characters: @, #, $, %, &, *, +, -, =.  "
echo " "
read -p "Enter a password: " -s pass

#checks if requirements are met, adds to str lvl if they are met

if [ ${#pass} -ge 8 ]; then
	((strengthLvl+=1))
fi

if echo $pass | grep '[0-9]' >/dev/null; then
	((strengthLvl+=1))
fi

if echo $pass | grep '[@#$%&*+-=]' >/dev/null; then
	((strengthLvl+=1))
fi

echo "---------------------------------------- "


#checks and outputs pass strength level
if [ $strengthLvl == 1 ]; then
	echo "Your password is Weak"
elif [ $strengthLvl == 2 ]; then
	echo "Your password is Okay(Moderate)"
elif [ $strengthLvl == 3 ]; then
	echo "Your password is Strong!"
else
	echo "Please try again, password requirements not met.."
fi



