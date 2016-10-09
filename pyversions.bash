#!/bin/bash

# --------------------------------------------------
#                      PyVersion
# --------------------------------------------------
#   This Bash File contains a function that
#   will execute py.exe (for Python) with specified
#   version.
#
#   NOTE: py2() and py3 functions of this file will
#   ignore shebang of the python file (if specified)
#   and will execute with the version of the
#   function. So if you use py2() function on a
#   python file with a shebang of python3, then the
#   file will execute on version 2.x instead of 3.x.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save the
#     command below inside .bash_profile:
#
#     source ~/pyversion.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

py2() {
    if [ -z $1 ]; then
        echo "Please speciy a filename (without file extension)."
    else
        py -2 ./$1.py
    fi
}

py3() {
    if [ -z $1 ]; then
        echo "Please speciy a filename (without file extension)."
    else
        py -3 ./$1.py
    fi
}