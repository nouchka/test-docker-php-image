FROM php:7.3-cli

RUN pecl install redis \
	&& docker-php-ext-enable redis && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
