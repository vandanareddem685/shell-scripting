#!/bin/bash

file=/etc/passwd

if [ ! f $file ]
then
   echo "Source file $file doesn't exists"
fi

while IFs=":" read -r username password user_id group_id user_fullname home_dir bash_path

do
  echo "Username is: $username"
  echo "Passwd is: $password"
  echo "user_id is: $user_id"
done <<< $file