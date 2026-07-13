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