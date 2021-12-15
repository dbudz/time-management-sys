#!/bin/bash
repeat=y
while ( repeat = $y )
do
read -p "What status would you like to add to your assignment? (Open/Completed) " status
read -p "What is the name of the assignment you would like to modify? " name
read -p "What is the course code of the assignment you would like to modify? (BCS215, BUS300, etc. " course
case $status in
  Completed)
    awk -v c=$course -v n=$name ' BEGIN { FS = ";" } 
    	{ if ( $1 == c && $2 == n )  
    		{sub ("Open" , "Completed" , $0 ) ;
    		print $0 ;}
    		else
    		print $0 
    	}' assignments > temp
    mv temp assignments
    echo "You have updated the status of the assignment to completed"
    ;;
  Open)
    awk -v c=$course -v n=$name ' BEGIN { FS = ";" } 
    	{ if ( $1 == c && $2 == n )  
    		{sub ("Completed" , "Open" ) ;
    		print $0 ;}
    		else
    		print $0 
    	}' assignments >> temp
    mv temp assignments
    echo "You have updated the status of the assignment to open"
    ;;
  *) echo Please enter the status you would like to change
esac
read -n1 -p "Would you like to update another assignment? (y/n) " repeat
done
source ./menu.sh
