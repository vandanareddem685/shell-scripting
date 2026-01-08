#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
RED="\e31m"
GREEN="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
then  
    echo -e "$2.. $RED failed $N"
    exit 1
else
    echo "$2  is $GREEN success $N"
fi

}

if [ $ID -ne 0 ]
then
    echo "ERROR:please run this script with root user"
    exit 1 #you can give other than 0
else
    echo "You are root user"
fi #fi means reverse of if , indicationg condition to end

yum install mysql -y &>> $LOGFILE

VALIDATE $? "INstalling mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"