FROM php:8.0-fpm

# install php
RUN apt update \
    && apt install -y zlib1g-dev g++ libicu-dev zip libzip-dev zip \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install symfony
RUN curl -sS https://get.symfony.com/cli/installer | bash && \
    mv /root/.symfony/bin/symfony /usr/local/bin/symfony

# Install git
ENV GIT_EMAIL "GIT_EMAIL"
ENV GIT_NAME "GIT_NAME"
RUN apt install -y git \
    && git config --global user.email "$GIT_EMAIL" \
    && git config --global user.name "$GIT_NAME"

# setup bashrc
COPY ./.bashrc /root/.bashrc

# Install XDEBUG
RUN pecl install xdebug
COPY ./ext-xdebug.ini /usr/local/etc/php/conf.d/ext-xdebug.ini

WORKDIR /var/www/symfony_app