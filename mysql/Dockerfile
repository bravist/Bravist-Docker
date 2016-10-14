FROM mysql:5.6
MAINTAINER bravist chenghuiyong1987@gmail.com

# 换为国内镜像，以加速docker image制作速度，非中国镜内用户请注释掉下一行
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/' /etc/apk/repositories

#时区配置
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime
RUN echo $TIMEZONE > /etc/timezone

WORKDIR /var/lib

#配置

COPY my.cnf /etc/mysql/my.cnf
RUN chmod 644 /etc/mysql/my.cnf
COPY init_mysql.sh /var/lib/
RUN chmod +x /var/lib/init_mysql.sh
COPY import.sql /var/lib/


# 端口号配置
EXPOSE 3306

# 容器命令执行

ENTRYPOINT ["/var/lib/mysql/init_mysql.sh"]

CMD ["mysqld"]
