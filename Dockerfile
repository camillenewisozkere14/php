FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    perl \
    python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN a2dismod mpm_event || true \
    && a2enmod mpm_prefork

COPY src/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
