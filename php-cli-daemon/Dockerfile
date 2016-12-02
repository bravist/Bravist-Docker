FROM php:7.0-alpine

MAINTAINER  bravist chenghuiyong1987@gmail.com

# 换为国内镜像，以加速docker image制作速度
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/' /etc/apk/repositories
RUN apk update && apk upgrade

#时区配置
ENV TIMEZONE Asia/Shanghai

# mcrypt 扩展
RUN apk add libmcrypt-dev
RUN docker-php-ext-install mcrypt

# pdo_mysql 扩展
RUN docker-php-ext-install pdo_mysql

# bamatch
RUN docker-php-ext-install bcmath

#zip
RUN docker-php-ext-install zip

# supervisor
RUN apk add supervisor

RUN mkdir -p /etc/supervisor.d

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
