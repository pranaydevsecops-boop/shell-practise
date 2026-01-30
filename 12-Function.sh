#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "need to run with sudo access"
    exit 1
fi 

VALIDATE(){
STATUS=$?
if [ $STATUS -ne 0 ]; then
    echo "$2 is failed not successfull"
    exit 1
else
    echo "$2 is pass adn sucessfull"
fi
}


dnf install nginx -y
VALIDATE $STATUS "Installing nginx"

dnf install mysql -y
VALIDATE $STATUS "Installing mysql"

dnf install nodejs -y
VALIDATE $STATUS "Installig node"
