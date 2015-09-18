#!/bin/bash
docker build -t containersol/logstash .

docker run \
  -v "$PWD":/config-dir \
  -it --rm \
  -e SLACK_HOOK_URL=$SLACK_HOOK_URL \
  containersol/logstash
