FROM php:5.6.33-apache
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libssl-dev \
        libxml2-dev \
        imagemagick \
        libmagickwand-dev \
    && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) iconv mcrypt gd mbstring pdo pdo_mysql mysql mysqli soap zip \
    && pecl install imagick mongodb mongo xdebug-2.5.5 \
    && docker-php-ext-enable imagick mongodb mongo xdebug
RUN echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=1" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_port=9000" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "memory_limit=128M" >> /usr/local/etc/php/php.ini \
    && echo "upload_max_filesize=50M" >> /usr/local/etc/php/php.ini \
    && echo "post_max_size=50M" >> /usr/local/etc/php/php.ini \
    && echo "log_errors=On" >> /usr/local/etc/php/php.ini \
    && echo "error_log=/dev/stderr" >> /usr/local/etc/php/php.ini \
    && echo "display_errors=Off" >> /usr/local/etc/php/php.ini \
    && a2enmod rewrite