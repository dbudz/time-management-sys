#!/bin/bash
clear
repeat=y
while [ $repeat = y ]
do
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
        echo "Please enter a day of the week."
esac
read -n1 -p "Would you like to look up another day of the week? (y/n)" repeat
echo
done
source ./menu.sh
