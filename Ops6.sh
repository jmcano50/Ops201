#!/bin/bash


# Script Name:                  Ops6.sh (SemperFile)
# Marine Operator:              GySgt Juan Miguel Cano
# Date of latest revision:      30/10/2023
# Mission:                      Ops Challenge - Establishing Forward Operating Bases (Files) and Patrol Routes (Directories)
#


# Declaration of variables
operations=()


# Declaration of functions


# Main
while true; do


    echo " "
    echo "Marine, are we establishing a new forward operating base or defining a patrol route?"
    read -p "(enter 1 for a base or 2 for a route):" choice


    if [ "$choice" == 1 ]; then


        read -p "A forward operating base, Marine? What should we name it?" base_name


            echo -e "Marine, the forward operating base '$base_name' is already established. No need to waste our time."
            sleep 1


        else
            touch "$base_name"


            echo "A new forward operating base, named '$base_name,' has been established, Marine."
            operations+=("$base_name")
            sleep 1
        fi


    elif [ "$choice" == 2 ]; then


        read -p "A patrol route, Marine? What shall we name it?" route_name


        else
            mkdir "$route_name"


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


