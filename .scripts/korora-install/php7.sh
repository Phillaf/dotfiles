#!/bin/bash

sudo dnf install http://rpms.remirepo.net/fedora/remi-release-26.rpm
sudo dnf config-manager --set-enabled remi
sudo dnf config-manager --set-enabled remi-php72

dnf install dnf-plugins-core
sudo dnf update -y
sudo dnf install php php-devel composer php-xdebug -y

composer global require phpunit/phpunit
composer global require squizlabs/php_codesniffer
composer global require phpmd/phpmd
composer global require friendsofphp/php-cs-fixer
composer global require techlivezheng/phpctags

phpcs --config-set default_standard PSR2

sudo dnf install php-pear -y
sudo pecl install msgpack

sudo -i
echo "extension=msgpack.so" > /etc/php.d/50-msgpack.ini

sudo dnf install libsodium libsodium-devel
sudo pecl install libsodium
echo "extension=libsodium.so" > /etc/php.d/50-libsodium.ini

sudo dnf install mcrypt php-mcrypt

sudo pecl install redis
echo "extension=redis.so" > /etc/php.d/50-redis.ini
