#!/bin/bash

docker stop --time=30 icinga2-slack-container
docker rm --force icinga2-slack-container
