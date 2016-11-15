FROM php:5.6.28-apache
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libssl-dev \
        libxml2-dev \
        imagemagick \
        libmagickwand-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) iconv mcrypt gd mbstring pdo pdo_mysql mysql mysqli soap zip \
    && pecl install imagick mongodb \
    && docker-php-ext-enable imagick \
    && docker-php-ext-enable mongodb
RUN a2enmod rewrite
