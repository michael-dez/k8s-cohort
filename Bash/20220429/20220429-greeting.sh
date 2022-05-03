#! /usr/bin/bash
# Author: Mike Mendez
# Description: Read first name and last name, and greet

read -p 'What is your first name? ' firstName
echo
read -p 'What is your last name? ' lastName
echo "Hello $firstName $lastName, How was your day?"
