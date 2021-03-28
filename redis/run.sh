#!/bin/bash

#docker run -d -p 6379:6379 --name redis-container --sysctl net.core.somaxconn=1024 redis/latest
docker run -d -p 6379:6379 --name redis-container redis/latest