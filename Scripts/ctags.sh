#!/bin/bash

sudo apt-get install -y autoconf pkg-config

git clone https://github.com/universal-ctags/ctags.git
cd ctags/
./autogen.sh
./configure
make
sudo make install
cd ../
rm -rf ctags

sudo apt install -y cscope
