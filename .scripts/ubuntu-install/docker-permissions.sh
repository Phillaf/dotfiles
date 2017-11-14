#!/bin/bash
sudo usermod -aG docker ${USER}
su - ${USER}
id -nG
sudo gpasswd -a $USER docker
