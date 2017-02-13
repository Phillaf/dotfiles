#!/bin/bash

wget http://rpms.remirepo.net/fedora/remi-release-24.rpm
sudo dnf install remi-release-24.rpm -y
rm remi-release-24.rpm -y
dnf config-manager --set-enabled remi-php70
sudo dnf update -y
sudo dnf install php php-devel composer php-xdebug -y

composer global require phpunit/phpunit
composer global require squizlabs/php_codesniffer
composer global require phpmd/phpmd
composer global require friendsofphp/php-cs-fixer
composer global require techlivezheng/phpctags

composer global require escapestudios/symfony2-coding-standard
phpcs --config-set installed_paths ~/.config/composer/vendor/escapestudios/symfony2-coding-standard
phpcs --config-set default_standard Symfony2

sudo pecl install msgpack
sudo echo "extension=msgpack.so" > /etc/php.d/50-msgpack.ini
