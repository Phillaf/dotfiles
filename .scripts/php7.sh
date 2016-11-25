#!/bin/bash

wget http://rpms.remirepo.net/fedora/remi-release-24.rpm
sudo dnf install remi-release-24.rpm -y
rm remi-release-24.rpm -y
dnf config-manager --set-enabled remi-php70
sudo dnf update -y
sudo dnf install php -y
sudo dnf install composer -y

composer require phpunit/phpunit
composer require squizlabs/php_codesniffer
composer require phpmd/phpmd
composer require friendsofphp/php-cs-fixer
