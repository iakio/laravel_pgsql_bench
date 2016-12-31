#!/bin/sh
composer require laravel/framework && \
phpunit --bootstrap=vendor/autoload.php --repeat=1000 --stop-on-error tests && \
composer require laravel/framework dev-pgsql_improve && \
phpunit --bootstrap=vendor/autoload.php --repeat=1000 --stop-on-error tests
