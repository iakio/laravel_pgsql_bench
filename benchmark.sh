#!/bin/sh
composer require laravel/framework && \
phpunit --bootstrap=vendor/autoload.php --repeat=10 --stop-on-error tests && \
composer require laravel/framework dev-pgsql_improve && \
phpunit --bootstrap=vendor/autoload.php --repeat=10 --stop-on-error tests
