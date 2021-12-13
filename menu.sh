#!/bin/bash
source add_assignment.sh
tput clear
PS3="Enter what you would like to view: "
 
select menu_item in "Classes" "Class Lookup" "Assignments" "Incomplete Assignments" "Assignment Due Date" "Add an Assignment" "Update an Assignment" "Quit"
do
	case $menu_item in
		"Classes")
			echo "1"
			./class.sh
			;;
		"Class Lookup")
			echo "2" 
			./class_lookup.sh
			;;
		"Assignments")
			echo "3"
			./assignments.sh
			;;
		"Incomplete Assignments")
			echo "4"
			./incomplete.sh
			;;		
		"Assignment Due Date") 
			echo "5"
			./dueDate.sh
			;;
		"Add an Assignment")
			echo "6"
			./add_assignment
			;;		
		"Update an Assignment")
			echo "7"
			
			;;
		"Quit")
			exit
			;;
		*)		
			echo "Error: Please try again (select 1..7)!"
			;;		
	esac
done
