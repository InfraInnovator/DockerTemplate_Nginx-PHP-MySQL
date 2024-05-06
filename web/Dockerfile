FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y tzdata


RUN apt install -y git nginx
RUN apt update
# RUN apt install -y php7.4-fpm php7.4-cli php7.4-mysql php7.4-curl php7.4-json php-mysql
# RUN apt install -y php8.3-fpm php8.3-cli php8.3-mysql php8.3-curl php-mysql

RUN apt install -y php-fpm php-cli php-mysql php-curl php-json php-mysql


#Debug / Setup tools
RUN apt install -y nano

RUN rm -rf /var/www/html/

COPY src/config/sites-available_default /etc/nginx/sites-available/default

# Uncomment the following line to copy the html files to the container instead of mounting them
#COPY src/html /var/www/html

COPY src/up.sh /up.sh
RUN chmod +x /up.sh


# Launch the script that starts the services
ENTRYPOINT ["/up.sh"]

# Debug purposes - Keep the container running with a shell
# CMD ["bash"]
