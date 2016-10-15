#!/bin/bash

# 清除已有的
docker stop mariadb-docker
docker rm mariadb-docker
docker rmi bravist/mariadb-5.6:1.0

# 重新生成
docker build -t bravist/mariadb-5.6:1.0 ./
