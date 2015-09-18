#! /bin/sh

logstash -e "$(sed -e "s,%%SLACK_HOOK_URL%%,$SLACK_HOOK_URL,g" /config-dir/logstash.conf)"
