#!/bin/bash

# --------------------------------------------------
#                      Nodefiles
# --------------------------------------------------
#   This Bash File contains a function that
#   will redirect you to pythonfiles folder or any
#   of its subdirectories.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save the
#     command below inside .bash_profile:
#
#     source ~/pythonfiles.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

pythonfiles() {
    cd;
    
    if [ -z $1 ]; then
        cd /c/users/karljarren/pythonfiles/;
    else
        cd /c/users/karljarren/pythonfiles/;
        cd $1;
    fi
}