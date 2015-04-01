#!/bin/bash

function tagisan() {
    cd;
    
    if [ $1 == 'db' ]; then
        dbmongo;
        mongod --dbpath /c/users/karljarren/nodefiles/tagisan_ng_talino/data;
    elif [ $1 == 'sys' ]; then
        cd /c/users/karljarren/nodefiles/tagisan_ng_talino;
    fi
}

function run() {
    if [ $1 == 'laravel' ]; then
        if [ -z $2 ]; then
            php artisan serve;
        else
            php artisan serve --port=$2;
        fi
    elif [ $1 == 'nodejs' ]; then
        node app;
    fi
}

function gc() {
    cd /c/program\ files\ \(x86\)/google/chrome/application;

    if [ $1 == '-i' ]; then
        if [ -z $2 ]; then
            chrome.exe --incognito;
        else
            chrome.exe --incognito $2;
        fi
    else
        if [ -z $1 ]; then
            chrome.exe;
        else
            chrome.exe $1;
        fi;
    fi
}

function mz() {
    cd /c/program\ files\ \(x86\)/mozilla\ firefox;

    if [ $1 == '-p' ]; then
        if [ -z $2 ]; then
            firefox.exe -private-window;
        else
            firefox.exe -private-window $2;
        fi
    else
        if [ -z $1 ]; then
            firefox.exe;
        else
            firefox.exe $1;
        fi;
    fi
}