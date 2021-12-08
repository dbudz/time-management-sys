#!/bin/bash

read -n1 -p "Do you want to display your assignments? [y,n]" class 
case $assignment in  
  y|Y) cat homework ;; 
  n|N) echo User does not want to display assignments  ;; 
  *) echo Please enter a y or n ;; 
esac
