#!/bin/bash

path="$1"
passfile="$PREFIX/$path.gpg"
check_sneaky_paths "$path"

#This flag chekcs if the user has agreed to overwrite the file
#In case it existed
flag=1

if [[ -f $passfile ]]; then
    echo "File exists, do you want to overwrite it? y/N"
    read result

    if [ "$result" != "y" ]; then
        flag=0
        die ""
    fi
fi

if [ "$flag" == "1" ]; then
    if [[  -e $passfile ]]; then
        tail=$($GPG -d "${GPG_OPTS[@]}" "$passfile" | tail -n +2)
    fi
    
    #The length of the tail should we checked at this point


    linebreak=$'\n'
    echo "$(rdice $2)$linebreak$tail" | gpg -e "${GPG_OPTS[@]}" > $passfile
    #echo $tail >> $passfile
    echo "Your code has been successfully generated"
fi
