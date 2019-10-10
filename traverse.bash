#!/bin/bash

# --------------------------------------------------
#                      Traverse
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

traverse() {
    cd;

    if [ -z $1 ]; then
        echo "Please specify a directory to traverse.";
        echo "";
        echo "Usage:"
        echo "    traverse [root_directory] [project_directory]"
        echo "";
        echo "Root directories:"
        echo "    htdocs                    Xampp Htdocs Directory."
        echo "    laravel                   Laravel Project Directory."
        echo "    node                      Node.js Project Directory."
        echo "    phonegap                  Phonegap Project Directory."
        echo "    python                    Python Project Directory."
        echo "    react                     React Native Project Directory."
    else
        if [ $1 == "htdocs" ]; then
            cd /c/xampp/htdocs/;

            if [ ! -z $2 ]; then
                cd $2;
            fi
        elif [ $1 == "laravel" ]; then
            cd ~/laravelfiles/;

            if [ ! -z $2 ]; then
                cd $2;
            fi
        elif [ $1 == "node" ]; then
            cd ~/nodefiles/;

            if [ ! -z $2 ]; then
                cd $2;
            fi
        elif [ $1 == "phonegap" ]; then
            cd ~/phonegapfiles/;

            if [ ! -z $2 ]; then
                cd $2;
            fi
        elif [ $1 == "python" ]; then
            cd ~/pythonfiles/;

            if [ ! -z $2 ]; then
                cd $2;
            fi
        elif [ $1 == "react" ]; then
            cd ~/reactfiles/;

            if [ ! -z $2 ]; then
                cd $2;
            fi
        else
            echo "Unknown directory.";
        fi
    fi
}
