#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:please run this script with root user"
    exit 1 #you can give other than 0
else
    echo "You are root user"
fi #fi means reverse of if , indicationg condition to end

yum install mysql -y

if [ $? -ne 0 ]
then  
    echo "INstalling mysql failed"
    exit 1
else
    echo "INstalling mysql is success"
fi

yum install git

if [ $? -ne 0 ]
then  
    echo "INstalling git failed"
    exit 1
else
    echo "INstalling git is success"
fi