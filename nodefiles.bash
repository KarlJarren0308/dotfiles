#!/bin/bash

# --------------------------------------------------
#                      Nodefiles
# --------------------------------------------------
#   This Bash File contains a function that
#   will redirect you to nodefiles folder or any
#   of its subdirectories.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save the
#     command below inside .bash_profile:
#
#     source ~/nodefiles.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

nodefiles() {
    cd;
    
    if [ -z $1 ]; then
        cd nodefiles/;
    else
        cd nodefiles/;
        cd $1;
    fi
}