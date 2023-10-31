#!/bin/bash

concat_two_strings(){
    string1=$1" "$2
    echo $string1
}
first_name="Juan"
last_name="Cano"

newFirst="Joe"
newLast="Shmoe"

concat_two_strings $first_name" "$last_name
concat_two_strings $newFirst $newLast
echo $full_name
