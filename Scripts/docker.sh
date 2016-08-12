sudo dnf install docker

sudo systemctl start docker

sudo groupadd docker

sudo gpasswd -a ${USER} docker

sudo serviec docker restart

newgrp docker
