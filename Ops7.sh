#!/bin/bash

# Script:                    Reconnaissance Script for System Intel
# Author:                    Juan Miguel Cano
# Date of latest revision:   10/30/2023

# Function to display system component information
show_info() {
    echo "=== $1 Intel ==="
    sudo lshw -c $2 | grep -A2 "description: $1" | grep -v "logical name"
    echo
}

# Function to display BIOS information
show_bios_info() {
    echo "=== Base Information Operating System (BIOS) ==="
    sudo dmidecode -t bios
    echo
}

# Main script
echo "=== Reconnaissance Report - System Intel ==="

# Show CPU information
show_info "Central Processing Unit" "processor"

# Show RAM information
show_info "RAM" "memory"

# Show Display adapter information
show_info "VGA" "display"

# Show Network adapter information
show_info "Network controller" "network"

# Optionally, show BIOS information
show_bios_info

# End of report
echo "=== Mission Complete - End of Reconnaissance Report ==="