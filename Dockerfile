FROM debian

LABEL version = "1.0"
LABEL description = "this is an apache image"
LABEL vendor = "Luis Gustavo"

RUN apt update -y

RUN  apt install apache2 -y

RUN echo "cambios" > /var/www/html/user1.html 

RUN  useradd luis

USER luis

RUN echo "$(whoami)" > /tmp/user2.html

VOLUME /var/www/html/

USER root 

RUN cp /tmp/user2.html /var/www/html/user2.html 

CMD apachectl -DFOREGROUND