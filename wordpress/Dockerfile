FROM wordpress:latest
RUN apt-get update && \
    apt-get -y install zlib1g-dev && \
    docker-php-ext-install -j$(nproc) zip && \
    rm -rf /var/lib/apt/lists/*
RUN echo "memory_limit=128M" >> /usr/local/etc/php/php.ini && \
    echo "upload_max_filesize=50M" >> /usr/local/etc/php/php.ini && \
    echo "post_max_size=50M" >> /usr/local/etc/php/php.ini