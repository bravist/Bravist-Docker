FROM php:7.0-alpine

MAINTAINER  bravist chenghuiyong1987@gmail.com

# 换为国内镜像，以加速docker image制作速度
RUN echo 'http://mirrors.ustc.edu.cn/alpine/edge/main' > /etc/apk/repositories
RUN echo '@community http://mirrors.ustc.edu.cn/alpine/edge/community' >> /etc/apk/repositories
RUN echo '@testing http://mirrors.ustc.edu.cn/alpine/edge/testing' >> /etc/apk/repositories

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

# pcntl 扩展
RUN docker-php-ext-install pcntl

# zlib extensio
RUN docker-php-ext-install zlib

# zip
RUN docker-php-ext-install zip
