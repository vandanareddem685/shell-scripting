#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "Please run this script with root access"
else
   echo "You are root user"
fi

yum install mysql -y