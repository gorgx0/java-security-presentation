#!/usr/bin/env bash

echo "deb http://deb.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/backoprts.list
apt-get update -y
apt-get install -y vim zip unzip curl git zsh libxrender1 libxtst6 libxi6
chsh -s /bin/zsh vagrant
