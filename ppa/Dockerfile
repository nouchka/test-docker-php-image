FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install software-properties-common -y --no-install-recommends -y \
	&& export LC_ALL=en_US.UTF-8 \
		export LANG=en_US.UTF-8 \
	&& add-apt-repository ppa:ondrej/php \
	&& apt-get update && apt-get install -y --no-install-recommends -yf \
		php7.3 php7.3-redis \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& apt-get --purge autoremove && apt-get clean
