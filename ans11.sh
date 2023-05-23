# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 11
# write a script to count number of vowels in file irrespective of case.

echo "Enter the file name:"
read filename
if [ ! -r "$filename" ]; then
    echo "not readable"
    exit 1
fi
for vowel in "${vowels[@]}"; do
    count=$(grep -o "$vowel" "$filename" | wc -l)
    echo "$vowel: $count"
done

output:-
[mca2238@agni ~]$ sh a11.sh
Enter the file name:
a2
a: 1
e: 0
i: 2
o: 0
u: 2
A: 0
E: 0
I: 0
O: 0
U: 0
