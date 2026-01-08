#!/bin/bash

ID=$(id -u)

echo "Script name: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
then  
    echo "$2..  failed"
    exit 1
else
    echo "$2  is success"
fi

}

if [ $ID -ne 0 ]
then
    echo "ERROR:please run this script with root user"
    exit 1 #you can give other than 0
else
    echo "You are root user"
fi #fi means reverse of if , indicationg condition to end

yum install mysql -y

VALIDATE $? "INstalling mysql"

yum install git

VALIDATE $? "Installing GIT"