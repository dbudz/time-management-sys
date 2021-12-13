#!/bin/bash
source add_assignment.sh
tput clear
PS3="Enter what you would like to view: "
 
select menu_item in "Classes" "Assignments" "Incomplete Assignments" "Add an Assignment" "Update an Assignment" "Quit"
do
	case $menu_item in
		"Classes")
			echo "1"
			./class.sh
			;;
		"Assignments")
			echo "2"
			./assignments.sh
			;;
		"Incomplete Assignments")
			echo "3"
			
			;;		
		"Add an Assignment")
			echo "4"
			./add_assignment.sh
			;;		
		"Update an Assignment")
			echo "5"
			;;
		"Quit")
			exit
			;;
		*)		
			echo "Error: Please try again (select 1..6)!"
			;;		
	esac
done
