#!/bin/bash

USAGE(){
    echo "USGAE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes. (Optional). Default is Good Morning"
    echo " -h, Display Help and exit"
}

while getopts "n:a:" opt
do
    case $opt in
        n)
            echo "Name: $OPTARG"
            ;;
        a)
            echo "Age: $OPTARG"
            ;;
        *)
            echo "Usage: $0 -n <name> -a <age>"
            ;;
    esac
done

if [ -z "$NAME" ] | [ -z "$WISHES" ] ; then # now wishes is optional
    #echo "ERROR: Both -n and -w are mandatory options."
    echo "ERROR: -n is mandatory."
    echo "ERROR: -w is mandatory."
    USAGE;
    exit 1
fi

echo "Hello $NAME. $WISHES. I have been learning Shell Script."