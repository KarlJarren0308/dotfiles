#!/bin/bash

# --------------------------------------------------
#                      SSHC
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

sshc() {
    cd;

    if [ -z $1 ]; then
        echo "Please specify domain."
    else
        if [ $1 == "eingredientsspecialist.com" ]; then
            ssh gqrc0ukrtvd0@eingredientsspecialist.com
        elif [ $1 == "bitccosmetics.com" ]; then
            ssh yh7swemhv792@bitccosmetics.com
        elif [ $1 == "uernd.org" ]; then
            ssh researchkun08@uernd.org
        elif [ $1 == "karlmacz.com" ]; then
            ssh wxafz4aqsahu@karlmacz.com
        elif [ $1 == "karlmacz.net" ]; then
            ssh v0bov1lrfq6b@karlmacz.net
        elif [ $1 == "ucclibraries.net" ]; then
            ssh ms3v4o5egf7l@ucclibraries.net
        else
            echo "You don't have any access to this domain."
        fi
    fi
}
