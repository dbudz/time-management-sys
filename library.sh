#All assignments 
!/bin/bash

read -n1 -p "Do you want too display the assignemnt due? [y,n] "
case $assignment in
  y|Y) cat assignment ;;
  n|N) echo User does not want to display assignmment ;;
  *) echo Please enter a y or n ;;
esac 

#All classes
#!/bin/bash

read -n1 -p "Do you want to display your class schedule? [y,n]" class 
case $class in  
  y|Y) cat class_schedule ;; 
  n|N) echo User does not want to display class schedule  ;; 
  *) echo Please enter a y or n ;; 
esac 

#Class lookup 
#!/bin/sh

printf 'What day of the week would you like to lookup? ' >&2
read -r day

case $day in
    Monday)
        grep 'Monday' class_schedule
        ;;
    Tuesday)
        grep 'Tuesday' class_schedule
        ;;
    Wednesday)
        grep 'Wednesday' class_schedule
        ;;
    Thursday)
        grep 'Thursday' class_schedule
        ;; 
    Friday)
        grep 'Friday' class_schedule
        ;;
    *)
        echo 'Please enter a day of the week."
esac

#We need All incomplete, Add an assignment, Update an assignment
