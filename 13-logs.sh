#!/bin/bash

ID=$(id -u)

echo "Script name:$0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo "ERROR:$2 is failed"
    else
       echo "$2 is success"
    fi

}

if [ $ID -ne 0 ]
then
   echo "ERROR:Please run this script with root access"
else  
   echo "You are root user"
fi

yum install mysql -y
VALIDATE $? "Installing mysql"

yum install git -y
VALIDATE $? "Installing git"