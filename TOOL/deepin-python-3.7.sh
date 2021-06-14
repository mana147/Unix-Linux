#!/bin/sh       

# Shell script to add python3.7 to Deepin Linux repositories

cd /tmp
wget  https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz  
sudo apt update
sudo apt install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev
tar -xf Python-3.7*.tar.xz
cd Python-3.7.4
./configure --enable-loadable-sqlite-extensions # Avoid an error in sqlite
make
sudo make altinstall
sudo python3.7 -m pip install --upgrade pip
sudo python3.7 -m pip install --upgrade setuptools 
echo 'Done. Type python3.7 to run.'
