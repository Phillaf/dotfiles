#!/bin/bash

# https://fedoramagazine.org/docker-and-fedora-35/

 sudo dnf -y install dnf-plugins-core
 sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker


sudo dnf -y install docker-compose-plugin
