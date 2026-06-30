#!/bin/bash

set -e

echo "Script started"

ls -ltr

touch example.txt

echo "Before wrong command"

ls -l

echo "After wrong command"

cd /tmp

pwd

cd /home/centos

pwd

echo "Script completed"