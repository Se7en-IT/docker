export DATA_DIR={data directory}
docker-compose up -d

MYSQL
-----
docker run --name mysql -d -p 3306:3306 -v /Users/seven/Progetti/Docker/data/mysql:/var/lib/mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=yes mysql:5.7.16

MONGO
-----
docker run --name mongo -d  -p 27017:27017 -v /Users/seven/Progetti/Docker/data/mongo:/data/db mongo:3.3

PHP
----
cd php && docker build -t php-custom:5.6.28-apache .
docker run --name php -d -p 80:80 -v /Users/seven/Progetti/Docker/data/php:/var/www/html --link mysql:mysql php-custom:5.6.28-apache
