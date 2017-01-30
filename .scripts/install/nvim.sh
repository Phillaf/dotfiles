#!/bin/bash
sudo dnf -y install neovim
sudo dnf -y install python2-neovim python3-neovim

git clone https://github.com/msgpack/msgpack-php.git
cd msgpack-php
phpize
./configure
make && sudo make install
