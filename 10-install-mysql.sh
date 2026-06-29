#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "Please run this script with root access"
   exit 1
else
   echo "You are root user"
fi

yum install mysql -y
if [ $? -ne 0 ]
then
   echo "ERROR:Installing MYSQL is failed"
   exit 1
else
   echo "Installing MYSQL is success"
fi

yum install git -y
if [ $? -ne 0 ]
then
   echo "ERROR: INstalling git is failed"
   exit1
else
   echo "Installing git is success"
fi