#!/bin/bash

# --------------------------------------------------
#                      Project
# --------------------------------------------------
#   This Bash File contains a function that lets you
#   traverse to specific directories. This function
#   is created to compile all necessary commands to
#   a single command.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save this
#     command inside .bash_profile:
#
#     source ~/traverse.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

project() {
    cd;

    if [ -z $1 ]; then
        echo "Usage:";
        echo "    project [command] [arguments]";
        echo "";
        echo "Available commands:";
        echo "    ";
    else
        if [ $1 == "create-electron" ]; then
            if [ ! -z $2 ]; then
                mkdir $2;
                cd $2;
                npm init;
                npm install --save-dev electron;
            fi
        else
            echo "Unknown command.";
        fi
    fi
}
