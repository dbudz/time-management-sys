#!/bin/bash
	read -p "Please enter the course for the assignment you would like to add (eg. BCS215): " input
	printf $input";" >> assignments
	read -p "Please enter the description for the assignment you would like to add: " input
	printf $input";" >> assignments
	read -p "Please enter the due date for the assignment you would like to add (mm/dd/yyyy): " input
	printf $input";" >> assignments
	read -p "Please enter the status for the assignment you would like to add (Open/Completed): " input
	printf $input >> assignments
	echo >> assignments
	source ./menu.sh
done
