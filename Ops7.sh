 #!/bin/bash

 # Function to display system component information
 show info () {
    echo "=== $1 Intel ==="
    sudo lshw -c $2 | grep -A2 "description: $1" | grep -v "logical name"
    echo
 }

 #Function to display BIOS information
 show_bios_info() {
    echo "===Base Information Operating System (BIOS) ==="
    sudo dmidecode -t bios
    echo
 }

 # Main script
 echo "=== Reconnaissance Report - System Intel ==="
 sudo dmidecode -t bios
 echo

 #Show CPU information
 show_info "Central Processing Unit" "processor"

 # Show RAM information
 sho_info "Random Access Memory" "memory"

 #Show Display adapter information
 show_info "Display Controller" "display"

 # Show Network adapter information
 show_info "Network" "network"

 # Optionally, show BIOS information
 show_bios_info
 #End of report
 echo "=== Mission Complete - End of Reconnaissance Report ==="