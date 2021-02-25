#!/bin/bash

is_root()
{
    [ "$(id -u)" -eq 0 ]
}

is_root || echo 'This script must be run as root!' && exit 1

apt-get update
apt-get upgrade -y -qq
apt-get install -y build-essential checkinstall wget
apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

wget http://python.org/ftp/python/3.6.9\/Python-3.6.9.tar.xz
tar xf Python-3.6.9.tar.xz
cd Python-3.6.9
./configure --enable-optimizations --with-ensurepip=install
make -j8
make altinstall
