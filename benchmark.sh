#!/bin/sh
composer -q require laravel/framework ^5.3 && \
phpunit --bootstrap=vendor/autoload.php --repeat=100 --stop-on-error tests && \
composer -q require laravel/framework dev-pgsql_improve && \
phpunit --bootstrap=vendor/autoload.php --repeat=100 --stop-on-error tests
