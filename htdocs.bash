#!/bin/bash

# --------------------------------------------------
#                      Htdocs
# --------------------------------------------------
#   This Bash File contains a function that lets you
#   go to any directory located inside
#   /c/xampp/htdocs. This function is
#   created to compile all necessary commands to a
#   single command.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save this
#     command inside .bash_profile:
#
#     source ~/htdocs.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

htdocs() {
    cd;
    
    if [ -z $1 ]; then
        cd /c/xampp/htdocs/;
    else
        cd /c/xampp/htdocs/;
        cd $1;
    fi
}