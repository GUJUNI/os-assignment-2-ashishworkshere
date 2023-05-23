# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 6
# Write a script that takes file name from user and display all line start
# with space(' ') . (Use grep/sed)


#!/bin/bash

echo "Enter filename: "
read filename

if [ ! -f $filename ]; then
  echo "File not found!"
  exit 1
fi

echo "Lines starting with a space character:"
grep -E '^ ' $filename
