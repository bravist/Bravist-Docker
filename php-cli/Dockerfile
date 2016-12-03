FROM alpine:latest

MAINTAINER  bravist chenghuiyong1987@gmail.com

# 换为国内镜像，以加速docker image制作速度
RUN echo 'http://mirrors.ustc.edu.cn/alpine/edge/main' > /etc/apk/repositories
RUN echo '@community http://mirrors.ustc.edu.cn/alpine/edge/community' >> /etc/apk/repositories
RUN echo '@testing http://mirrors.ustc.edu.cn/alpine/edge/testing' >> /etc/apk/repositories

RUN apk update && apk upgrade

RUN apk add php7@community \
        php7-dom@community \
        php7-ctype@community \
        php7-curl@community \
        php7-gd@community \
        php7-intl@community \
        php7-json@community \
        php7-mbstring@community \
        php7-mcrypt@community \
        php7-mysqlnd@community \
        php7-opcache@community \
        php7-pdo@community \
        php7-pdo_mysql@community \
        php7-posix@community \
        php7-session@community \
        php7-xml@community \
        php7-iconv@community \
        php7-phar@community \
        php7-openssl@community \
        php7-zip@community \
        php7-bcmath@community \
        php7-pcntl@community \
        php7-zlib@community 

RUN ln -s /usr/bin/php7 /usr/bin/php
#php.ini /etc/php7/php.ini




#时区配置
ENV TIMEZONE Asia/Shanghai
