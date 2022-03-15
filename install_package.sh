#!/bin/bash
username="dev1"
password="abc123"

echo "---> Install package openssh-server and sudo"
apt update && apt install -y openssh-server sudo
echo "---> service ssh start"
service ssh start
echo "---> Prepare executing add user"
chmod +x add_user_passwd.sh
./add_user_passwd.sh $username $password
echo "---> Add user done"
usermod -aG sudo $username
echo "---> Escalate user!"

