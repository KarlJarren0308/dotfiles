#!/bin/bash

# --------------------------------------------------
#                      Repo
# --------------------------------------------------
#   This Bash File contains a function that uses
#   some Git Commands. This function was created to
#   help developers work faster by grouping up
#   multiple commands into one.
#
#   This version includes:
#   → A create command for initialization of local
#     repository.
#   → A pack command for including files to local
#     repository and establishing link to remote
#     repository.
#   → An upload command for transferring of files
#     from local repository to remote repository.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save the
#     command below inside .bash_profile:
#
#     source ~/repo.bash
#
#     If you placed this file elsewhere, you have to
#     include the directory.
# --------------------------------------------------

repo() {
    cd;
    
    if [ -z $1 ]; then
        echo "Incomplete command.";
    elif [ $1 == "create" ]; then
        if [ -z $2 ]; then
            echo "Incomplete command.";
        elif [ $2 == "here" ]; then
            command git init;
            command git status;
            command touch README.md;

            echo "Initialization of local repository successful.";
        elif [ $2 == "at" ]; then
            if [ -z $3 ]; then
                echo "No directory found.";
            else
                if [ -d $3 ]; then
                    command cd $3;
                    command git init;
                    command git status;
                    command touch README.md;

                    echo "Initialization of local repository successful.";
                else
                    echo "Directory doesn't exist.";
                fi
            fi
        else
            echo "Unknown command.";
        fi
    elif [ $1 == "help" ]; then
        echo "usage: repo [command]";
        echo;
        echo "Cool Repo Commands you'll shouldn't forget:";
        echo "  create                Initializes Local Repository.";
        echo "  pack                  Adds all files to Local Repository and creates a link to                        remote repository.";
        echo "  upload                Uploads Local Repository to Remote Repository.";
        echo "  version               Displays Repo's current version.";
    elif [ $1 == "pack" ]; then
        if [ -z ${2} ]; then
            echo "Incomplete command.";
        elif [ $2 == "default" ]; then
            if [ -z $3 ]; then
                echo "No remote repository found.";
            else
                if [ -z $4 ]; then
                    echo "No commit message found.";
                else
                    command git add --all;
                    command git commit -m "$4";

                    echo "Files successfully packed.";

                    command git remote add origin $3;

                    echo "Link to remote repository established.";
                fi
            fi
        else
            echo "Unknown command.";
        fi
    elif [ $1 == "upload" ]; then
        if [ -z $2 ]; then
            echo "Incomplete command.";
        elif [ $2 == "default" ]; then
            command git push -u origin master;

            echo "Upload successful.";
        else
            echo "Unknown command.";
        fi
    elif [ $1 == "version" ]; then
        echo "Repo Version 1.0";
    else
        echo "Unknown command.";
    fi
}