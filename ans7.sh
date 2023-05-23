# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 7
# Write a script which takes input from a file, with multiple records, as:
# Firstname:middlename:lastname:address:city:pin:phone
# and displays output as:
# Record 1
# Lastname middlename firstname
# Address
# City - pin
# Phone
# Record 2
# Lastname middlename firstname
# Address
# City - pin
# Phone
# and so on, for all records.

echo "Enter input filename: "
read input_file

if [ ! -f $input_file ]; then
  echo "File not found!"
  exit 1
fi

record_count=1

while IFS=':' read -r firstname middlename lastname address city pin phone
do
  echo "Record $record_count"
  echo "$lastname $middlename $firstname"
  echo "$address"
  echo "$city - $pin"
  echo "$phone"
  echo ""
  
  record_count=$((record_count + 1))
done < $input_file
