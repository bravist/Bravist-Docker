FROM php:7.0-fpm-alpine
MAINTAINER bravist chenghuiyong1987@gmail.com

# 换为国内镜像，以加速docker image制作速度，非中国镜内用户请注释掉下一行
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/' /etc/apk/repositories
RUN apk update && apk upgrade

#时区配置
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime
RUN echo $TIMEZONE > /etc/timezone

# 从国内镜像安装composer，并配置成默认从国内镜像安装composer包
RUN php -r "readfile('http://install.phpcomposer.com/installer');" | php -- --install-dir=/bin/ --filename=composer
#更新composer
RUN composer self-update
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com

# pdo_mysql 扩展
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli

#工作目录
RUN mkdir /mnt/www
WORKDIR /mnt/wwww

# 端口号配置
EXPOSE 9000

# 容器命令执行
CMD ["php-fpm"]