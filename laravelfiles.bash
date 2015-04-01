#!/bin/bash

# --------------------------------------------------
#                   Boilerplate
# --------------------------------------------------
#   This Bash File contains a function that
#   will redirect you to laravelfiles folder or any
#   of its subdirectories.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save the
#     command below inside .bash_profile:
#
#     source ~/laravelfiles.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

laravelfiles() {
    cd;
    
    if [ -z $1 ]; then
        cd /c/users/karljarren/laravelfiles/;
    else
        cd /c/users/karljarren/laravelfiles/;
        cd $1;
    fi
}