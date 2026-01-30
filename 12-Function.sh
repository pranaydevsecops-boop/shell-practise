#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "need to run with sudo access"
    exit 1
fi 

echo "installing nginx"
dnf install nginx -y

STATUS=$?

if [ $STATUS -ne 0 ]; then
    echo "Installion is failed not successfull"
else
    echo "installion is pass adn sucessfull"
fi