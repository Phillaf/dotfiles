
#!/bin/bash

sudo dnf install xorg-x11-utils

git clone https://github.com/franglais125/no-title-bar.git
cd no-title-bar/
sudo make install
sudo gnome-shell-extension-tool -e no-title-bar@franglais125.gmail.com
cd ../
rm -rf no-title-bar
