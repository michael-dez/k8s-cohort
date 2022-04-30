# April 29 2022 - Assignment
## Problem 1: Check the option to save/persist changes made with `sed`.
Use the `-i` option to edit files in place (makes backup if suffix supplied).
### Solution:
```bash
#! /usr/bin/bash
# Author: Mike Mendez
# Description: Use sed with the -i option to edit files in place
s=~/sed_test
[ ! -f $s ] && touch $s
seq 10 | xargs -I {} echo "{} Misisipi" > $s
cat $s
sed -i 's/Misisipi/Mississippi/' $s
cat $s
```
## Problem 2:Change the second occurrence of "Sunday" to "Sunday is a holiday" in `weekday.txt`.
###Contents of `weekday.txt`:
```
Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday
Sunday
Sunday
```
### Solution:
```bash
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

```
## Problem 3: Explore 3 additional `awk` options
### Solution:
```bash
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
```
## Problem 4: `mkdir -p`, what does this command do?
### Solution
When using `mkdir` with the `-p` option parent directories are created if needed to create a directory at the specified path.
## Problem 5: Read your first name and last name and gree your name like this:
```bash
Hello Santhosh NC, How was your day?
```
### Solution
```bash
#! /usr/bin/bash
# Author: Mike Mendez
# Description: Read first name and last name, and greet

read -p 'What is your first name? ' firstName
echo
read -p 'What is your last name? ' lastName
echo "Hello $firstName $lastName, How was your day?"
```
## Problem 6: What is `shellcheck`?
### Solution
ShellCheck is an open source static analysis tool that automatically finds bugs in your shell scripts.
