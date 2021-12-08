#!/bin/bash

read -n1 -p "Do you want to display your class schedule? [y,n]" class 
case $class in  
  y|Y) cat class_schedule ;; 
  n|N) echo User does not want to display class schedule  ;; 
  *) echo Please enter a y or n ;; 
esac
