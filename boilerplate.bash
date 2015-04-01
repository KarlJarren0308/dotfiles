#!/bin/bash

# --------------------------------------------------
#                   Boilerplate
# --------------------------------------------------
#   This Bash File contains a function that
#   manipulates a boilerplate for web development.
#
#   How to user this function?
#   → Source this file inside .bash_profile.
#     To do that you have to type and save the
#     command below inside .bash_profile:
#
#     source ~/boilerplate.bash
#
#     If you placed this file elsewhere, you have to
#     include_once the directory.
# --------------------------------------------------

boilerplate() {
    if [ -z $1 ]; then
        echo "Incomplete command.";
    elif [ $1 == "add" ]; then
        if [ -z $2 ]; then
            echo "Incomplete command.";
        elif [ $2 == "ordinary" ]; then
            if [ -z $3 ]; then
                echo "Incomplete command.";
            elif [ $3 == "here" ]; then
                mkdir assets;
                mkdir requests;

                touch index.php;

                printf "<?php\n    include_once('assets/system/header.php');\n?>\n\n<?php\n    include_once('assets/system/footer.php');\n?>" > index.php;

                cd assets;

                mkdir css;
                mkdir js;
                mkdir img;
                mkdir system;

                cd system;

                printf "<!doctype html>\n<html>\n<head>\n    <meta charset=\"UTF-8\">\n    <title></title>\n    <link rel=\"stylesheet\" href=\"assets/css/stylesheet.css\">\n    <script src=\"assets/js/script.js\"></script>\n</head>\n<body>" > header.php;

                printf "</body>\n</html>" > footer.php;

                cd ../css;

                touch stylesheet.css;

                cd ../js;

                touch script.js;

                cd ../../;

                echo "Boilerplate successfully created.";
            else
                echo "Unknown command.";
            fi
        elif [ $2 == "custom" ]; then
            if [ -z $3 ]; then
                echo "Incomplete command.";
            elif [ $3 == "here" ]; then
                mkdir assets;
                mkdir requests;

                printf "<?php\n    \$TEXT['title'] = '';\n?>" > system.php;

                printf "<?php\n    include_once('assets/system/header.php');\n?>\n\n<?php\n    include_once('assets/system/footer.php');\n?>" > index.php;

                cd assets;

                mkdir css;
                mkdir js;
                mkdir img;
                mkdir system;

                cd system;

                printf "<?php\n    include_once('system.php');\n?>\n\n<!doctype html>\n<html>\n<head>\n    <meta charset=\"UTF-8\">\n    <title><?php echo \$TEXT['title']; ?></title>\n    <link rel=\"stylesheet\" href=\"assets/css/stylesheet.css\">\n    <script src=\"assets/js/script.js\"></script>\n</head>\n<body>" > header.php;

                printf "</body>\n</html>" > footer.php;

                cd ../css;

                touch stylesheet.css;

                cd ../js;

                touch script.js;

                cd ../../;

                echo "Boilerplate successfully created.";
            else
                echo "Unknown command.";
            fi
        else
            echo "Unknown command.";
        fi
    elif [ $1 == "delete" ]; then
        if [ -z $2 ]; then
            echo "Incomplete command.";
        elif [ -d $2 ]; then
            rm -R $2;

            echo "Directory is now empty.";
        else
            echo "Directory not found.";
        fi
    else
        echo "Unknown command.";
    fi
}