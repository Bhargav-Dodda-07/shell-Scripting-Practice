#! /bin/bash

USERID=$(id -u)

if [$USERID -ne 0]; then
    echo "ERROR:: please run this script with root privelege"
    exit 1 # faliure is other 0
fi

VALIDATE(){ # functions receive inputs through args just like shell script args
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "python3"