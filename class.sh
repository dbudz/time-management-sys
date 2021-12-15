#!/bin/bash
clear
end=n
while [ $end = n ]
do
cat class_schedule
read -n1 -p "Press enter to go to main menu." end
done
source ./menu.sh
