#! /bin/sh

if [ -z $SLACK_HOOK_URL ]; then
  echo "No SLACK_HOOK_URL set. Don't forget to export the env var!"
  exit 1
fi

logstash --verbose -e "$(sed -e "s,%%SLACK_HOOK_URL%%,$SLACK_HOOK_URL,g" /config-dir/logstash.conf)"
