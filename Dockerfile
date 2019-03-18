FROM php:7.3.3-cli-stretch

RUN apt-get update && apt-get install -y git zlib1g-dev libzip-dev \
    && docker-php-ext-install pdo_mysql zip

WORKDIR /app
COPY ./src /app

RUN php composer.phar install

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT php run.php