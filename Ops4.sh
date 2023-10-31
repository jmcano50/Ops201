#!/bin/bash

# Create four directories
mkdir dir1 dir2 dir3 dir4

# Store the directory paths in an array
directories=("dir1" "dir2" "dir3" "dir4")

# Loop through the array and create a new .txt file in each directory
for dir in "${directories[@]}"; do
    mkdir $dir
    touch "$dir/$dir.txt"
    echo "Created $dir/$dir.txt"
done

echo "Script completed."
