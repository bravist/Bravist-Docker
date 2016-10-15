# Version: 1.1 
+ 更新镜像命名空间为：bravist
+ Nginx容器增加443对外端口
+ 更新Maintainer作者
* 将nginx、php日志也放在host主机volumes/apps/logs/下，方便调试
* 增加php.ini中max_execution_time的配置
* 增加php composer包，修改为从国内镜像下载
* 增加在host主机中php、composer别名指向到phpfpmp容器，这样可以实现本地完全不需要安装任何php相关组件

# 为什么要做这个配置包？

* 以前一直使用virtualbox+ubuntu虚拟机环境来搭建php开发环境，配置慢，不利于共享
* 前一段时间采用Docker配置，官方很多包默认采用ubuntu为底包，包很大，还是不利于共享，我配置好完整的LNMP Docker image有1G多
* 后来了解到alpine，一个轻量级的linux发行版，小到5M的底包，docker build速度非常快，所以就有了自己做一个开发环境配置包的想法。
* 我希望做一个超轻量级的全功能php开发测试环境配置包。

# 配置原则

* 使用docker hub官方应用mysql/php/nginx，具体参考*/Dockerfile
* 默认采用中国大陆国内镜像，加速docker build的过程
* 默认采用Asia/Shanghai时区，国人开发更方便
* 默认配置好nginx多虚拟主机环境，可以在host主机按范本修改虚拟主机配置以满足自己的需求
* 默认配置好php-fpm环境，gd、mcrypt等常见模块均可直接使用
* 配置文件、程序开发代码、数据、日志均放在host主机，通过volume挂载到相应容器，并可跨容器共享访问


# 模块组成

* alpine 最新版为基础包，目前是3.4
* nginx 1.11.5
* mysql 5.6
* php 7.0

# 开始使用
* 进入项目主目录的上一级目录： cd ~/server
* 克隆仓库：git clone https://github.com/bravist/sandbox-php-docker && cd sandbox-php-docker 
* 构建并运行：docker-compose build && docker-compose up -d
* 查看 nginx/conf/vhosts.conf，添加server_name到host, 并访问
* [可选] 配置别名：source alias.sh

# 配置调整

*   虚拟主机自定义：nginx/conf/vhosts.conf

    修改里面server_name和root名称为自己想要定义的域名，然后将这个域名添加到/etc/hosts文件，即可建立自己的虚拟主机

*   mysql默认帐号密码：docker-compose.yml， 可以根据需要修改，其他配置可在mysql/my.cnf中修改

    ```yaml
        environment:
    - MYSQL_ROOT_PASSWORD=root
    - MYSQL_USER=developer
    - MYSQL_PASSWORD=developer
    ```

*   其他配置调整可以参照源码和注释修改，然后运行

      `docker-compose build && docker-compose up -d`


