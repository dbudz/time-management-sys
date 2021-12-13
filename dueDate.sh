#!/bin/bash

echo What is the name of the assignment?: 
read NAME

if grep -q $NAME assignments.txt 
then
awk -v AWKVAR="$NAME" '$2 ~ AWKVAR{ print "This assignment is due on " $3 "."; }' assignments.txt
else
	echo "No assignment with the name" $NAME "exists."
fi

# The purpose of this script is to allow the user to check when an assignment is due. By 
# inputting the name of an assignment, the program will return the assignment’s due date.

# Seamus O’Driscoll

# 12/12/2021
