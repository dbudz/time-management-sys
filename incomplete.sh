#!/bin/bash

read -n1 -p "Would you like to see all incomplete assignments? [y/n] " incomplete
clear
case $incomplete in
 y|Y) grep 'Open' assignments ;;
 n|N) echo User does not want to display all incomplete assignments  ;;

esac
