#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"

SOURCE_DIR="/tmp/shellscript-logs"

if [ ! d "$SOURCE_DIR" ]
then
   echo "$R Source diretory $SOURCE_DIR doesn't exists $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.logs")


while IFS= read -r line
    do
     echo "Deleting line: $line"
     rm -rf $line
    done <<< $FILES_TO_DELETE