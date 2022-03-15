#!/bin/bash

apt update && apt install -y openssh-server sudo
service ssh start
chmod +x add_user_passwd.sh
./add_user_passwd.sh dev abc123
usermod -aG sudo dev1

