#!/bin/bash

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
    USAGE
    exit 1
fi

echo "Hello $NAME. $WISHES. I have been learning Shell Script."