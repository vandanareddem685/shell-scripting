#!/bin/bash

file=/etc/passwd

if [ ! -f $file ]
then
   echo "Source file $file doesn't exists"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir bash_path

do
  echo "Username is: $username"
  echo "Passwd is: $password"
  echo "user_id is: $user_id"
  echo "group_id is: $group_id"
  echo "user_fullname is: $user_fullname"
  echo "home_dir is $home_dir"
  echo "bash_path is $bash_path"

done <$file