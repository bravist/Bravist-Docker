#!/bin/bash

# 清除已有的
docker stop nginx-docker
docker rm nginx-docker
docker rmi bravist/nginx:1.0

# 重新生成
docker build -t bravist/nginx:1.0 ./
