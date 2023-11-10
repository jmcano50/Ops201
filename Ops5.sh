#!/bin/bash

# Purpose:              Demo loops
#Execution              bash loops.sh
# Additional sources:   X

#   Declaration of variables

var=0

# Declaration of functions

# Main
while true; do
    clear  #Clear the screen
        echo "Running Processes:"
        ps aux

        read -p "Enter the PID of the process you want to kill (Ctrl+C to exit): " user_pid

        if [ -z "$user_pid" ]; then
        echo "Invalid input. Please enter a PID."
else
        # Check if the PID exists
        if  ps -p $user_pid > /dev/null; then
            echo "Killing process with PID $user_pid"
            kill $user_pid
            sleep 2 # Give some time for the process to terminate
        else
            echo "PID $user_pid does not exist or you don't have permission to kill it."
        fi 
    fi 

    read -p "Do you want to kill another process? (y/n): "continue_killing
    if [ "continue_killing" != "y" ]; then
        break
    fi
done








    