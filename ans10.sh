# Name: Ashish Vaghela
# Roll No: 38
# Class: MCA 2
# Subject: Operating Systems
# Assignment 2

# Script 10
# Write a shell script to display list of files which can be either regular
# or directory along with number of links in ascending order of links.

count_links() {
    local num_links=$(find "$1" -mindepth 1 -maxdepth 1 | wc -l)
    echo "$num_links"
}
find . -mindepth 1 -maxdepth 1 | while read file; do
    if [[ -f "$file" || -d "$file" ]]; then
        num_links=$(count_links "$file")
        echo "$num_links $file"
    fi
done | sort -n

