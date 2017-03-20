#!/bin/bash

sudo dnf remove npm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

nvm install node
nvm use node
