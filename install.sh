#!/bin/sh

# upgrade system
sudo apt update
sudo apt upgrade -y

# install redis
sudo apt install -y redis

# install webdis
cd
sudo apt install -y libevent-dev build-essential git
git clone https://github.com/nicolasff/webdis.git
cd webdis
make
make install

# enable webdis
cd
git clone https://github.com/wie-volgt-jou-op-het-internet/raspberry-pi.git
cd raspberry-pi
sudo cp webdis.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable webdis.service
sudo systemctl start webdis.service
