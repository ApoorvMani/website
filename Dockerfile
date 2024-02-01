FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
