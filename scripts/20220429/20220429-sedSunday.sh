#! /usr/bin/bash
# Author: Mike Mendez
# Description: Use sed to modify the second occurrence of "Sunday" to "Sunday
# is a holiday" in weekday.txt.
w=~/weekday.txt
echo "Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday
Sunday
Sunday" > $w

cat $w
sleep 2s
sed -i '8s/Sunday/Sunday is a holiday/' $w
cat $w
