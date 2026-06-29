#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "$R ERROR:$2 is failed $N"
    else
       echo -e "$G $2 is success $N"
    fi

}

if [ $ID -ne 0 ]
then
   echo -e "$R ERROR:Please run this script with root access $N"
   exit1
else  
   echo -e "$G You are root user $N"
fi

yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing mysql"

yum install git -y &>>$LOGFILE
VALIDATE $? "Installing git"