#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP"

VALIDATE(){
    if [ $1 -ne 0 ]
then  
    echo -e "$2.. $R failed $N"
    exit 1
else
    echo -e "$2  is $G success $N"
fi

}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:please run this script with root user $N"
    exit 1 #you can give other than 0
else
    echo -e "$G You are root user $N"
fi #fi means reverse of if , indicationg condition to end

yum install mysql -y &>> $LOGFILE

VALIDATE $? "INstalling mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing GIT"