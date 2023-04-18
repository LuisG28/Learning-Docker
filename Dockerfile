FROM debian

RUN apt update -y

RUN  apt install apache2 -y

ENV contenido prueba

WORKDIR /var/www/html

RUN echo "$contenido" > /var/www/html/prueba.html

EXPOSE 8080

CMD apachectl -DFOREGROUND