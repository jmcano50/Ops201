#!/bin/bash

# Script Name: Ops6.sh (SemperFile)
# Marine Operator: GySgt Juan Miguel Cano
# Date of latest revision: 30/10/2023
# Mission: Ops Challenge - Establishing Forward Operating Bases (Directories) and Patrol Routes (Files)

# Declaration of variables
operations=()

# Main
while true; do
    clear
    echo " "
    echo "Marine, are we establishing a new forward operating base or defining a patrol route?"
    read -p "(enter 1 for a base or 2 for a route, or 'q' to quit):" choice

    if [ "$choice" == "q" ]; then
        echo "Marine, exiting the script. Goodbye!"
        break
    fi

    if [ "$choice" == 1 ]; then
        read -p "A forward operating base, Marine? What should we name it?" base_name
        if [ -d "$base_name" ]; then
            echo -e "Marine, the forward operating base '$base_name' is already established. No need to waste our time."
            sleep 1
        else
            mkdir "$base_name"
            echo "A new forward operating base, named '$base_name,' has been established, Marine."
            operations+=("$base_name")
            sleep 1
        fi
    elif [ "$choice" == 2 ]; then
        read -p "A patrol route, Marine? What shall we name it?" route_name
        if [ -f "$route_name" ]; then
            echo "Marine, the patrol route '$route_name' already exists. No need to redefine it."
        else
            touch "$route_name"
            operations+=("$route_name")
            echo "Marine, we've defined a new patrol route named '$route_name.'"
        fi
    else
        echo "Marine, we're veering off course. Please make a valid choice."
    fi

    echo "Marine, here are our current operations and established bases/routes:"
    for entry in "${operations[@]}"; do
        echo "$entry"
    done
done


