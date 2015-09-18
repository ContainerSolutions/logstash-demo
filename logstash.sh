#!/bin/bash
docker build -t containersol/logstash .
docker run -v "$PWD":/config-dir -it --rm containersol/logstash logstash -f /config-dir/logstash.conf
