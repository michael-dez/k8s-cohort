#! /usr/bin/bash
# Author: Mike Mendez
# Description: Explore 3 additional awk options

s=~/students
echo 'original file:'
echo "1) Amit Physics 80
2) Rahul Maths 90
3) Shyam Biology 87
4) Kedar English 85
5) Hari History 89" > $s
cat $s
sleep 2s
echo 'awk supports conditional statements AND directly setting field values'
sleep 5s
awk '{if ($2 == "Shyam") $3="Astrology";print $0}' $s; sleep 5s
echo 'pass awk a variable with -v'
sleep 2s
awk -v date="$(date)" '{print $0," ",date}' $s; sleep 2s
