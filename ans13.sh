# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 13
# Create a text file with the headings and data as bill_no, cust_no,
# cust_name, address, city, pin, current_meter_reading,
# previous_meter_reading, month. Write a script that takes the input
# from this file and displays the bill for the query against
# cust_no/bill_no/cust_name. (input at least 15/20 records in this text
# file); otherwise message that no record exists.

echo "Enter query (cust_no/bill_no/cust_name): "
read query

# Search for query in file
result=$(grep -i "$query" bill_data.txt)

# Check if result is empty
if [ -z "$result" ]; then
  echo "No record exists for query: $query"
else
  # Display bill information
  echo "Bill information for $query:"
  echo "$result"
fi
output:-
Enter query (cust_no/bill_no/cust_name):
jay
Bill information for jay:
1,101,jay,mainagar,ahmedabad,380008,20102002,2011202