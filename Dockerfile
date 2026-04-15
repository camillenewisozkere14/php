FROM php:7.4-apache
RUN apt-get update && apt-get install -y git curl wget perl python python3
RUN a2dismod mpm_event || true && a2enmod mpm_prefork
COPY src/ /var/www/html
EXPOSE 80

