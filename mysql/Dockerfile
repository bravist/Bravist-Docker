FROM mysql:5.6
MAINTAINER bravist chenghuiyong1987@gmail.com

WORKDIR /var/lib

#配置

COPY my.cnf /etc/mysql/my.cnf
RUN chmod 644 /etc/mysql/my.cnf

COPY init_mysql.sh /var/lib/mysql
RUN chmod +x /var/lib/mysql/init_mysql.sh
COPY import.sql /var/lib/mysql


# 端口号配置
EXPOSE 3306

# 容器命令执行

ENTRYPOINT ["/var/lib/mysql/init_mysql.sh"]

CMD ["mysqld"]
