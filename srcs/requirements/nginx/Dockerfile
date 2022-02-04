FROM debian:buster

RUN apt-get update && apt-get upgrade
RUN apt-get install -y vim
RUN apt-get install -y nginx
RUN apt-get install -y openssl

EXPOSE 80

COPY ./script.sh ./
#RUN bash script.sh
CMD ["bash", "script.sh"]
