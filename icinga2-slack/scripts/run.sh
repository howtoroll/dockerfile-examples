#!/bin/bash

docker run -d \
  -p 80:80 \
  -h icinga2-slack-container \
  --name icinga2-slack-container \
  icinga2-slack:latest
