#!/bin/bash

docker stop --time=30 redis-container
docker rm --force redis-container