#!/bin/bash

wget http://rpms.remirepo.net/fedora/remi-release-24.rpm
sudo dnf install remi-release-24.rpm -y
rm remi-release-24.rpm -y
dnf install dnf-plugins-core
dnf config-manager --set-enabled remi-php71
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
