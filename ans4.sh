# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 4
# Write a script that takes file name from user and substitute all spaces
# " " with # value. (Use grep/sed)

echo "Enter filename: "
read filename

if [ ! -f $filename ]; then
  echo "File not found!"
  exit 1
fi

echo "Replacing spaces with # value in $filename..."
sed -i 's/ /#/g' $filename

echo "Done."

