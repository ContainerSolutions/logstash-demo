# logstash-demo
Demo Logstash application which aggregates build logs

# Goal

This demo app builds Github projects and stores logs into Logstash. Logstash
then forwards the logs to:

* Slack
* Elasticsearch
* Other places?

# How to use

Run `SLACK_HOOK_URL=<your slack webhook url> ./logstash.sh`

# Resources

* [Logstash Slack Output Plugin](https://github.com/cyli/logstash-output-slack)
* [Logstash Docker Image](https://hub.docker.com/_/logstash/)
