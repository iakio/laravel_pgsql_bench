#!/bin/sh
composer require laravel/framework && \
phpunit -q --bootstrap=vendor/autoload.php --repeat=100 --stop-on-error tests && \
composer require laravel/framework dev-pgsql_improve && \
phpunit -q --bootstrap=vendor/autoload.php --repeat=100 --stop-on-error tests
