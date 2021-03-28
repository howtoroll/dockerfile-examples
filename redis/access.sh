#!/bin/bash

# access local redis server
docker exec -it redis-container redis-cli

# access remore redis server
#docker run -it --rm redis redis-cli -h xxx.cache.amazonaws.com