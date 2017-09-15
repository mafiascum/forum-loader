FROM php:7.1.9-apache
EXPOSE 80

ARG PHPBB_URL=https://www.phpbb.com/files/release/phpBB-3.2.1.zip

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y unzip libpng-dev imagemagick git \
  && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli gd
RUN a2enmod rewrite

RUN curl $PHPBB_URL -o /tmp/phpbb.zip
RUN unzip /tmp/phpbb.zip -d /tmp/
RUN cp -a /tmp/phpBB3/. /var/www/html/
RUN rm /tmp/phpbb.zip
RUN rm -rf /tmp/phpBB3/
RUN mkdir -p /var/www/html/cache/
RUN rm -rf /var/www/html/install/

ADD config.php.docker /var/www/html/config.php

ADD zip_extensions /tmp/
ADD install_zip_extensions.sh /tmp/
RUN chmod +x /tmp/install_zip_extensions.sh
RUN /tmp/install_zip_extensions.sh
RUN rm /tmp/install_zip_extensions.sh /tmp/zip_extensions

ADD git_extensions /tmp/
ADD install_git_extensions.sh /tmp/
RUN chmod +x /tmp/install_git_extensions.sh
RUN /tmp/install_git_extensions.sh
RUN rm /tmp/install_git_extensions.sh /tmp/git_extensions

ADD git_styles /tmp/
ADD install_git_styles.sh /tmp/
RUN chmod +x /tmp/install_git_styles.sh
RUN /tmp/install_git_styles.sh
RUN rm /tmp/install_git_styles.sh /tmp/git_styles

RUN chown -R www-data:www-data /var/www/

ADD ./start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
