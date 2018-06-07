#!/bin/bash
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

sudo apt install php7.2 php-msgpack libsodium-dev php7.2-mcrypt php-redis php7.2-dev php-xdebug php-mbstring php7.2-ampq php7.2-bcmath php7.2-xml composer

composer global require phpunit/phpunit
composer global require squizlabs/php_codesniffer
composer global require phpmd/phpmd
composer global require friendsofphp/php-cs-fixer
composer global require techlivezheng/phpctags

phpcs --config-set default_standard PSR2

