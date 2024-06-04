
FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y nano 
CMD [ "apache2ctl","-D","FOREGROUND" ]
COPY index.html /var/www/html
VOLUME [ "/home/ubuntu/dock:/var/www/html" ]
