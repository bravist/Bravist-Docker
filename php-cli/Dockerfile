FROM alpine:edge

MAINTAINER  bravist chenghuiyong1987@gmail.com

# 换为国内镜像，以加速docker image制作速度
RUN echo 'http://mirrors.ustc.edu.cn/alpine/edge/main' > /etc/apk/repositories
RUN echo '@community http://mirrors.ustc.edu.cn/alpine/edge/community' >> /etc/apk/repositories
RUN echo '@testing http://mirrors.ustc.edu.cn/alpine/edge/testing' >> /etc/apk/repositories

RUN apk --update add \
        php7 \
        php7-dom \
        php7-ctype \
        php7-curl \
        php7-gd \
        php7-intl \
        php7-json \
        php7-mbstring \
        php7-mcrypt \
        php7-mysqlnd \
        php7-opcache \
        php7-pdo \
        php7-pdo_mysql \
        php7-posix \
        php7-session \
        php7-xml \
        php7-iconv \
        php7-phar \
        php7-openssl \
        php7-zip \
        php7-bcmath \
        php7-pcntl \
        php7-zlib \
    && rm -rf /var/cache/apk/*


RUN ln -s /usr/bin/php7 /usr/bin/php

#时区配置
ENV TIMEZONE Asia/Shanghai
