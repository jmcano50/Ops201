#!/bin/bash

# Script:               301 Ops Challenge Day 2 
# Author:               Juan Miguel Cano
# Purpose:              
# Variables:
# Resources:            https://chat.openai.com/share/244c176b-fb29-4f0c-b22e-b3ed1d3234e3           


# Set the source and destination filenames
source_file="/var/log/syslog"
current_datetime=$(date +"%Y%m%d_%H%M%S")
destination_file="syslog_backup_${current_datetime}.log"

# Copy the syslog file to the current working directory
cp "$source_file" "$destination_file"

# Print a message indicating the operation is completed
echo "Syslog copied to: $destination_file"
