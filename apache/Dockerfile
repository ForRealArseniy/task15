FROM php:7.4-apache

COPY info.php /var/www/html/

EXPOSE $PORT

RUN sed -i "s/Listen 80/Listen \${PORT}/" /etc/apache2/ports.conf && \
    chown -R www-data:www-data /var/www/html

CMD ["apache2-foreground"]