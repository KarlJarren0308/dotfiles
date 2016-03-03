#!/bin/bash

function web() {
    if [ $1 == 'chrome' ]; then
        cd /c/program\ files\ \(x86\)/google/chrome/application;
        
        if [ $2 == '-i' ]; then
            if [ $3 == '-l' ]; then
                chrome.exe --incognito localhost/$3;
            elif [ $2 == '-a' ]; then
                chrome.exe --incognito $3;
            else
                echo "Invaid Input. Please use 'web help' to view the documentation.";
            fi
        elif [ $2 == '-n' ]; then
            if [ $3 == '-l' ]; then
                chrome.exe localhost/$3;
            elif [ $2 == '-a' ]; then
                chrome.exe $3;
            else
                echo "Invaid Input. Please use 'web help' to view the documentation.";
            fi
        else
            echo "Invaid Input. Please use 'web help' to view the documentation.";
        fi
    elif [ $1 == 'firefox' ]; then
        cd /c/program\ files\ \(x86\)/mozilla\ firefox;

        if [ $2 == '-p' ]; then
            if [ $3 == '-l' ]; then
                firefox.exe -private-window localhost/$3;
            elif [ $2 == '-a' ]; then
                firefox.exe -private-window $3;
            else
                echo "Invaid Input. Please use 'web help' to view the documentation.";
            fi
        elif [ $2 == '-n' ]; then
            if [ $3 == '-l' ]; then
                firefox.exe localhost/$3;
            elif [ $2 == '-a' ]; then
                firefox.exe $3;
            else
                echo "Invaid Input. Please use 'web help' to view the documentation.";
            fi
        else
            echo "Invaid Input. Please use 'web help' to view the documentation.";
        fi
    elif [ $1 == 'help' ]; then
        printf "Usage: web [command|browser] [mode] [custom domain] url\n\n";
        printf "Browser Option(s):\n";
        printf "chrome     Uses Google Chrome\n";
        printf "firefox    Uses Mozilla Firefox\n\n";
        printf "Mode Option(s):\n";
        printf -- "-i         Private Browsing for Google Chrome\n";
        printf -- "-p         Private Browsing for Mozilla Firefox\n";
        printf -- "-n         Normal Browsing for Google Chrome and Mozilla Firefox\n\n";
        printf "Custom Domain Options:\n";
        printf -- "-l         Sets 'localhost' in the browser's address bar. This preceeds\n           the url specified by the user.\n";
        printf -- "-a         Doesn't set anything in the browser's address bar. This\n           preceeds the url specified by the user.\n\n";
        printf "Other Option(s):\n";
        printf -- "url        URL to be entered in the address bar.";
    else
        echo "Invaid Input. Please use 'web help' to view the documentation.";
    fi
}