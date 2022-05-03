#! /usr/bin/bash
# Author: Mike Mendez
# Description: Explore two operators from each of the operator categories.
# Arithmetic, relational, boolean, string, file test
# Usage: sh operators age name

myAge=30
# arithmetic
combined=`expr $1 + $myAge`
echo "Our combined age: $combined"
difference=`expr $1 - $myAge`
echo "Difference between your age and mine: $difference"

# relational
[ $1 -gt $myAge ] && echo "You're older and wiser than me."
[ $1 -lt $myAge ] && echo "lucky."
sleep 2s

# boolean
[ $1 -lt $myAge -a $1 -lt 20 ] && echo "You're over 10 years my junior."
[ $1 -lt 5 -o $1 -gt 99 ] && echo "no you're not."
sleep 2s

# string
[ -n $2 ] && echo "$2 is indeed a name."
[ $2 = "mike" ] && echo "That is my name!"
sleep 2s

# file test
touch $2
[ -f $2 ] && echo "I found your file."
[ -d $PWD ] && echo "It's here $PWD"
