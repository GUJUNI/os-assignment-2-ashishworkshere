# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 2
# Write a script that takes file name from user and display all line
# starting not with a or b or c. (Use grep/sed)

echo "Enter filename: "
read filename

if [ ! -f $filename ]; then
  echo "File not found!"
  exit 1
fi

echo "Lines not starting with a, b, or c: "
sed -n '/^[abc]/!p' $filename

