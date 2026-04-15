FROM php:8.4-apache
RUN apt-get update && apt-get install -y git curl wget perl python3
COPY src/ /var/www/html
EXPOSE 80
