#!/bin/bash
clear
end=n
while [ $end = n ]
do
grep 'Open' assignments
read -n1 -p "Press enter to go to main menu." end
done
source ./menu.sh
