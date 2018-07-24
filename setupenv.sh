#!/bin/bash
echo '1) Apt'
echo '2) Git'
read -p "Please input:" opt

case $opt in
    1)
        apt update 1>&-
        echo 'Install basic server manage package...'
        apt install curl screen wget psmisc vim glances 1>&-
        echo 'Apt install success!'
        ;;
    2)
	read -p "name:" name
	read -p "email:" email
        git config --global user.name $name
        git config --global user.email $email
        git config --global credential.helper store
        echo 'Git Configure Success!'
        ;;
esac

