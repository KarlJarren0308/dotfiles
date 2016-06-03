#!/bin/bash

# --------------------------------------------------
#                      Phonegapfiles
# --------------------------------------------------
#   This Bash File contains a function that lets you
#   go to any directory located inside
#   ~/phonegapfiles. This function is
#   created to compile all necessary commands to a
#   single command.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save this
#     command inside .bash_profile:
#
#     source ~/phonegapfiles.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

phonegapfiles() {
    cd;
    
    if [ -z $1 ]; then
        cd ~/phonegapfiles/;
    else
        cd ~/phonegapfiles/;
        cd $1;
    fi
}