#!/bin/bash

# --------------------------------------------------
#                      Py
# --------------------------------------------------
#   This Bash File contains a function that
#   will execute specified python file.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save the
#     command below inside .bash_profile:
#
#     source ~/py.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

# Provide python's root directory below (Where python.exe is located; Without trailing slash)
rootdirectory=/c/python27

py() {
    if [ -z $1 ]; then
        echo "Filename not specified.";
    else
        cd $rootdirectory;

        if [ -z $2 ]; then
            $rootdirectory/python.exe $rootdirectory/pythonfiles/$1.py;
        else
            if [ $2 == '--no-ext' ]; then
                $rootdirectory/python.exe $rootdirectory/pythonfiles/$1;
            else
                $rootdirectory/python.exe $rootdirectory/pythonfiles/$1.py $2;
            fi
        fi
    fi
}