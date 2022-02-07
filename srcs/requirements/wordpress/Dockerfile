FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get install -y php7.3
RUN apt-get install -y php-fpm 
RUN wget https://wordpress.org/wordpress-5.9.tar.gz
RUN tar -xvf wordpress-5.9.tar.gz && rm wordpress-5.9.tar.gz
#RUN mv wordpress /var/www/html/
EXPOSE 9000 
COPY ./script.sh ./
#RUN bash script.sh

CMD ["bash", "script.sh"]
