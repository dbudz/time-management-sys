#!/bin/bash

read -p "Do you want to display your class schedule? [y,n] "
read input 
if [[ $input == "y" || $input == "Y" ]]; then
        cat class
else 
        exit
fi
done
