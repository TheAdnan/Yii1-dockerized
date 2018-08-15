FROM php:7-apache
MAINTAINER Kicin

COPY php.ini /usr/local/etc/php/
RUN apt-get update \
  && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev \
  && docker-php-ext-install pdo_mysql mysqli gd iconv
COPY docker.conf  /etc/apache2/sites-available/000-default.conf
COPY hosts  /etc/hosts
RUN a2enmod rewrite
RUN apache2ctl stop && apache2ctl start

WORKDIR /var/www/html
RUN mkdir assets
WORKDIR /var/www/html/protected
RUN mkdir runtime
RUN chmod -R 777 /var/www/html/protected/runtime \
&& chmod -R 777 /var/www/html/assets
RUN chmod a+rwx -R /var/www/html/protected/runtime \
&& chmod a+rwx -R /var/www/html/assets