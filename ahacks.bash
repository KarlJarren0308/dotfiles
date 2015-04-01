function ahacks() {
    laravelfiles senpai;

    if [ -z $1 ]; then
        echo 'Invalid argument.';
    elif [ $1 == 'pull' ]; then
        git pull https://github.com/AteneoHacks2015/senpai;
    elif [ $1 == 'push' ]; then
        git add --all;
        git commit -m "Added other functionalities";
        git push -u origin master;
    elif [ $1 == 'run' ]; then
        php artisan serve;
    fi
}

function push() {
    laravelfiles senpai;

    if [ -z $1 ]; then
        echo 'Invalid argument';
    elif [ $1 == 'ko' ]; then
        if [ -z $2 ]; then
            echo 'Invalid argument';
        elif [ $2 == 'na' ]; then
            if [ -z $3 ]; then
                echo 'Invalid argument';
            elif [ $3 == 'to' ]; then
                if [ -z $4 ]; then
                    echo 'Invalid argument';
                elif [ $4 == 'teh' ]; then
                    git add --all;
                    git commit -m "Added other functionalities";
                    git push -u origin master;
                fi
            fi
        fi
    fi
}

function pull() {
    laravelfiles senpai;

    if [ -z $1 ]; then
        echo 'Invalid argument';
    elif [ $1 == 'ko' ]; then
        if [ -z $2 ]; then
            echo 'Invalid argument';
        elif [ $2 == 'na' ]; then
            if [ -z $3 ]; then
                echo 'Invalid argument';
            elif [ $3 == 'to' ]; then
                if [ -z $4 ]; then
                    echo 'Invalid argument';
                elif [ $4 == 'teh' ]; then
                    git pull https://github.com/AteneoHacks2015/senpai;
                fi
            fi
        fi
    fi
}