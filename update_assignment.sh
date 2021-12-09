#!/bin/bash
update_assignment () {
	echo "Would you like to update an assignment? [y,n]" class 
case $class in  
  y|Y) cat assignment ;; 
  n|N) echo No changes made  ;; 
  *) echo Please enter a y or n ;; 
esac
		}
