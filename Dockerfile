FROM debian
RUN apt update -y
RUN  apt install apache2 -y
CMD apachectl -DFOREGROUND