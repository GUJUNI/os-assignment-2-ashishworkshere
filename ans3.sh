# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 3
# Write a script that takes file name from user and display all line
# starting not with a or b or c. (Use grep/sed)


echo "Enter filename: "
read filename

if [ ! -f $filename ]; then
  echo "File not found!"
  exit 1
fi

echo "Lines not starting with a, b, or c with line numbers: "
sed -n '/^[abc]/!=' $filename | sed 'N;s/\n/ /'
sed -n '/^[abc]/!p' $filename

