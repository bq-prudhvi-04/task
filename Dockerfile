FROM ubuntu:18.04

RUN apt-get upadte

RUN apt-get install -y apache2

COPY index.html /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/aache2ctl", "-D", "FOREGROUND" ]
