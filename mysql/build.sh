#!/bin/bash

# 清除已有的
docker stop mysql-docker
docker rm mysql-docker
docker rmi bravist/mysql-5.6:1.0

# 重新生成
docker build -t bravist/mysql-5.6:1.0 ./
