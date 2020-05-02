FROM php:7.3-apache
RUN docker-php-ext-install mysqli
RUN pecl install xdebug-2.8.0
RUN docker-php-ext-enable xdebug

RUN echo "" >> /usr/local/etc/php/php.ini

RUN echo ";xdebug.remote_enable=1" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_handler=dbgp" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_port=9000" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_autostart=1" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_connect_back=0" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.idekey=docker" >> /usr/local/etc/php/php.ini
RUN echo "xdebug.remote_host=host.docker.internal" >> /usr/local/etc/php/php.ini
