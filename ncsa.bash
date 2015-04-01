#!/bin/bash

function ncsa() {
    if [ -z $1 ]; then
        echo 'Nazareth Christian School of Antipolo - Library System Bash File';
    elif [ $1 == '-l' ]; then
        if [ -z $2 ]; then
            echo 'Missing Option.';
        elif [ $2 == '-gc' ]; then
            cd /c/program\ files\ \(x86\)/google/chrome/application;

            if [ -z $3 ]; then
                chrome.exe http://localhost/ncsa/librarian;
            elif [ $3 == '-pr' ]; then
                chrome.exe --incognito http://localhost/ncsa/librarian;
            fi
        elif [ $2 == '-mz' ]; then
            cd /c/program\ files\ \(x86\)/mozilla\ firefox;

            if [ -z $3 ]; then
                firefox.exe http://localhost/ncsa/librarian;
            elif [ $3 == '-pr' ]; then
                firefox.exe -private-window http://localhost/ncsa/librarian;
            fi
        fi
    elif [ $1 == '-p' ]; then
        if [ -z $2 ]; then
            echo 'Missing Option.';
        elif [ $2 == '-gc' ]; then
            cd /c/program\ files\ \(x86\)/google/chrome/application;

            if [ -z $3 ]; then
                chrome.exe http://localhost/ncsa/opac;
            elif [ $3 == '-pr' ]; then
                chrome.exe --incognito http://localhost/ncsa/opac;
            fi
        elif [ $2 == '-mz' ]; then
            cd /c/program\ files\ \(x86\)/mozilla\ firefox;

            if [ -z $3 ]; then
                firefox.exe http://localhost/ncsa/opac;
            elif [ $3 == '-pr' ]; then
                firefox.exe -private-window http://localhost/ncsa/opac;
            fi
        fi
    elif [ $1 == '-d' ]; then
        if [ -z $2 ]; then
            echo 'Missing Option.';
        elif [ $2 == '-gc' ]; then
            cd /c/program\ files\ \(x86\)/google/chrome/application;

            if [ -z $3 ]; then
                chrome.exe http://localhost/phpmyadmin/#PMAURL-1:db_structure.php?db=ncsa_database&table=&server=1&target=&token=2ad9bdbc250bbfa1fc00fb6caf95c72d;
            elif [ $3 == '-pr' ]; then
                chrome.exe --incognito http://localhost/phpmyadmin/#PMAURL-1:db_structure.php?db=ncsa_database&table=&server=1&target=&token=2ad9bdbc250bbfa1fc00fb6caf95c72d;
            fi
        elif [ $2 == '-mz' ]; then
            cd /c/program\ files\ \(x86\)/mozilla\ firefox;

            if [ -z $3 ]; then
                firefox.exe http://localhost/phpmyadmin/#PMAURL-1:db_structure.php?db=ncsa_database&table=&server=1&target=&token=2ad9bdbc250bbfa1fc00fb6caf95c72d;
            elif [ $3 == '-pr' ]; then
                firefox.exe -private-window http://localhost/phpmyadmin/#PMAURL-1:db_structure.php?db=ncsa_database&table=&server=1&target=&token=2ad9bdbc250bbfa1fc00fb6caf95c72d;
            fi
        fi
    elif [ $1 == '-all' ]; then
        if [ -z $2 ]; then
            echo 'Missing Option.';
        elif [ $2 == '-gc' ]; then
            cd /c/program\ files\ \(x86\)/google/chrome/application;

            if [ -z $3 ]; then
                chrome.exe http://localhost/phpmyadmin/#PMAURL-1:db_structure.php?db=ncsa_database&table=&server=1&target=&token=2ad9bdbc250bbfa1fc00fb6caf95c72d;
                chrome.exe http://localhost/ncsa/librarian;
                chrome.exe http://localhost/ncsa/opac;
            elif [ $3 == '-pr' ]; then
                chrome.exe --incognito http://localhost/phpmyadmin/#PMAURL-1:db_structure.php?db=ncsa_database&table=&server=1&target=&token=2ad9bdbc250bbfa1fc00fb6caf95c72d;
                chrome.exe --incognito http://localhost/ncsa/librarian;
                chrome.exe --incognito http://localhost/ncsa/opac;
            fi
        elif [ $2 == '-mz' ]; then
            cd /c/program\ files\ \(x86\)/mozilla\ firefox;

            if [ -z $3 ]; then
                echo 'Not working at the moment. Try using -gc instead of -mz';
                # firefox.exe http://localhost/phpmyadmin/#PMAURL-1:db_structure.php?db=ncsa_database&table=&server=1&target=&token=2ad9bdbc250bbfa1fc00fb6caf95c72d;
                # firefox.exe http://localhost/ncsa/librarian;
                # firefox.exe http://localhost/ncsa/opac;
            elif [ $3 == '-pr' ]; then
                echo 'Not working at the moment. Try using -gc -pr instead of -mz -pr';
                # firefox.exe -private-window http://localhost/phpmyadmin/#PMAURL-1:db_structure.php?db=ncsa_database&table=&server=1&target=&token=2ad9bdbc250bbfa1fc00fb6caf95c72d;
                # firefox.exe -private-window http://localhost/ncsa/librarian;
                # firefox.exe -private-window http://localhost/ncsa/opac;
            fi
        fi
    fi
}