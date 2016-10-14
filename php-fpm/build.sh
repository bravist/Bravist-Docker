#!/bin/bash

# 清除已有的
docker stop php7.0.11-fpm:1.0
docker rm php7.0.11-fpm:1.0
docker rmi bravist/php7.0.11-fpm:1.0 

# 重新生成
docker build -t bravist/php7.0.11-fpm:1.0 ./
