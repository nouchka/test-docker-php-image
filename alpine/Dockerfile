FROM php:7.3-alpine

RUN apk add --no-cache $PHPIZE_DEPS \
	&& pecl install redis \
	&& docker-php-ext-enable redis
