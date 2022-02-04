FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get install -y php
RUN wget https://wordpress.org/wordpress-5.9.tar.gz
RUN tar -xvf wordpress-5.9.tar.gz && rm wordpress-5.9.tar.gz
#RUN mv wordpress /var/www/html/ 
COPY ./script.sh ./
#RUN bash script.sh

CMD bash
