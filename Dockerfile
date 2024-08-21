FROM yourls:1.8.1-apache as yourl

RUN apt-get update -y && apt-get install -y libpng-dev

RUN docker-php-ext-install gd

EXPOSE 80

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
