#!/bin/bash
tput clear
source ./dueDate.sh
PS3="Enter what you would like to view: "
 
select menu_item in "Classes" "Class Lookup" "Assignments" "Incomplete Assignments" "Assignment Due Date" "Add an Assignment" "Update an Assignment" "Quit"
do
	case $menu_item in
		"Classes")
			./class.sh
			;;
		"Class Lookup")
			./class_lookup.sh
			;;
		"Assignments")
			./assignments.sh
			;;
		"Incomplete Assignments")
			./incomplete.sh
			;;		
		"Assignment Due Date") 
			dueDate
			;;
		"Add an Assignment")
			./add_assignment.sh
			;;		
		"Update an Assignment")
			./update_assignment.sh
			;;
		"Quit")
			exit
			;;
		*)		
			echo "Error: Please try again (select 1..8)!"
			;;		
	esac
done
