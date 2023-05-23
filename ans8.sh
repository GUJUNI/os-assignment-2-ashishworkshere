# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 8
# Write a script that shows usernames and no. of processes running for
# them.

echo "Username   No. of Processes"
echo "--------------------------"

users=$(ps -eo user= | sort | uniq | awk '{print $1}')

for user in $users
do
    count=$(ps -U $user | awk 'END {print NR-1}')
    echo "$user   $count"
done

