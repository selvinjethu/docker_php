FROM php:7.2-apache

RUN apt-get update && apt-get install -y

RUN docker-php-ext-install mysqli pdo_mysql

RUN mkdir /app \
 && mkdir /app/selvin \
 && mkdir /app/selvin/www

COPY www/ /app/selvin/www/

RUN cp -r /app/selvin/www/* /var/www/html/.
