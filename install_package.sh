#!/bin/bash

apt update && apt install -y openssh-server sudo
service ssh start


