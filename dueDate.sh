#!/bin/bash
function dueDate {
clear
continue=y
while [ $continue = y ]
do
read -p "What is the name of the assignment? " name
read -p "What is the course code of the assignment? (BCS215,BUS300, etc.) " course
if grep -q $name ./assignments
then
	awk -v c=$course -v n=$name ' BEGIN  { FS = ";" } { if ( $1 == c && $2 == n ) { print "The due date of " c " " n " is " $3 ; } }' ./assignments

else
	echo "No assignment with the name" $NAME "exists."
fi
read -n1 -p "Would you like to look up another assignment's due date? (y/n)" continue
echo
done
source ./menu.sh
}


# The purpose of this script is to allow the user to check when an assignment is due. By 
# inputting the name of an assignment, the program will return the assignment’s due date.
# Inputting an assignment name that is not found will return an error message.

# Seamus O’Driscoll

# 12/12/2021
