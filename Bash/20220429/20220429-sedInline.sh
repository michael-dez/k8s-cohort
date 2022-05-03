#! /usr/bin/bash
# Author: Mike Mendez
# Description: Use sed with the -i option to edit files in place
s=~/sed_test
[ ! -f $s ] && touch $s
seq 10 | xargs -I {} echo "{} Misisipi" > $s
cat $s
sed -i 's/Misisipi/Mississippi/' $s
cat $s
