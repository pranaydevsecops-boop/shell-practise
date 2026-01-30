#! /bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run with sudo access"
    exit 1
fi 

echo "executed"
dnf install nginx -y


if [ $? -ne 0 ]; then
    echo "installation nginx failure"
    exit 1
else
    echo "installation passed"
fi