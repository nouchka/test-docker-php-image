FROM debian:buster-slim

RUN apt-get update && \
	apt-get install -y php7.3 php7.3-redis && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
	&& apt-get --purge autoremove && apt-get clean
