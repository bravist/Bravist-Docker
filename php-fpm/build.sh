#!/bin/bash

# 清除已有的
docker stop php-fpm-docker
docker rm php-fpm-docker
docker rmi bravist/php-7.0-fpm-alpine:1.0  

# 重新生成
docker build -t bravist/php-7.0-fpm-alpine:1.0 ./
