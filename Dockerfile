FROM logstash:1.5.4

RUN /opt/logstash/bin/plugin install logstash-output-slack

CMD ["logstash", "-f", "/config-dir/logstash.conf"]

