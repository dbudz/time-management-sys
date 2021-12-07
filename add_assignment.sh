#!/bin/bash

read -p "Please enter the course for the assignment you would like to add: " course 
read -p "Please enter the description for the assignment you would like to add: " description
read -p "Please enter the due date for the assignment you would like to add: " dueDate 
read -p "Please enter the course for the status you would like to add: " status

awk -F ";" course description dueDate status >> homework 

#Didn't test
