#!/bin/bash
docker build -t containersol/logstash .

if [ ! -e logstash.conf ]; then
  echo "Please provide a logstash.conf!"
  exit 1
fi

docker run -v "$PWD":/config-dir -it --rm containersol/logstash logstash -f /config-dir/logstash.conf
