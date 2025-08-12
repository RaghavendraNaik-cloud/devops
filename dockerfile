FROM ubuntu:lastest
RUN apt-get update && apt-get install apache2 -y && apt-get clean
COPY index.html /var/www/html
Expose 80
CMD ["apachectl","-D","FOREGROUND"]