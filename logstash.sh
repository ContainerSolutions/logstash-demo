#!/bin/bash
docker build -t containersol/logstash .

# Note that you have to have a --name because you don't want multiple
# logstashes running because that will lead to double logs.
docker run \
  --name logstash \
  -v "$PWD":/config-dir \
  -v "$PWD/logs":/logs \
  -d \
  -e SLACK_HOOK_URL=$SLACK_HOOK_URL \
  containersol/logstash

# A test container that logs to a log file
docker run \
  -v "$PWD":/mnt \
  --rm \
  debian:jessie \
  /mnt/test.sh
