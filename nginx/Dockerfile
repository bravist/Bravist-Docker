FROM nginx:alpine
MAINTAINER  bravist chenghuiyong1987@gmail.com

# 换为国内镜像，以加速docker image制作速度，非中国镜内用户请注释掉下一行
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/' /etc/apk/repositories
RUN apk update && apk upgrade

#时区配置
ENV TIMEZONE Asia/Shanghai
RUN apk add tzdata
RUN ln -snf /usr/share/zoneinfo/$TIMEZONE /etc/localtime
RUN echo $TIMEZONE > /etc/timezone


WORKDIR /usr/share/nginx/html

# 端口号配置
EXPOSE 80 443

VOLUME ["/var/log/nginx"]


COPY conf/ /etc/nginx/conf.d/


# 容器命令执行
ENTRYPOINT ["nginx", "-g", "daemon off;"]