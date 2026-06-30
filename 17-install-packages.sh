#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>>LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "$R ERROR:$2 is failed $N"
       exit 1
    else
       echo -e "$G $2 is success $N"
    fi

if [ $ID -ne 0 ]
then
   echo -e "$R ERROR:Please run this script with root access $N"
else
   echo "$G You are root user $N"
fi

for package in $@
do
  yum list installed $package
  if [ $? -ne 0 ]
  then
     yum install $package -y &>>LOGFILE
     VALIDATE $? "Installing $package"
  else
    echo "$package already installed $Y SKIPPING $N"
  fi
done
