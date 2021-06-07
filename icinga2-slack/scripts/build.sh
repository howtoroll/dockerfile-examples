#!/bin/bash

IMAGE_NAME=icinga2-slack

if [ "$1" == "" ]; then
  VERSION="latest"
else
  VERSION="$1"
fi

docker build -t $IMAGE_NAME:$VERSION --no-cache ../
