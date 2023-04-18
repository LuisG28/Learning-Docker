FROM debian

LABEL version = "1.0"
LABEL description = "this is an apache image"
LABEL vendor = "Luis Gustavo"

RUN apt update -y

RUN  apt install apache2 -y

RUN echo "cambios" > /var/www/html/user1.html 

RUN id -u luis || useradd -ms /bin/bash luis

RUN chown luis /var/www/html -R

USER luis

RUN echo "$(whoami)" > /var/www/html/user2.html

CMD apachectl -DFOREGROUND