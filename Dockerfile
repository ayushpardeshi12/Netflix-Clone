
FROM ubuntu:latest

RUN apt-get update

RUN apt-get -y install apache2

RUN rm /var/www/html/index.html

ADD ./Netflix-Clone/index.html /var/www/html

ENTRYPOINT apachectl -D FOREGROUND
