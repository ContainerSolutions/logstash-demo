FROM logstash:1.5.4

RUN /opt/logstash/bin/plugin install logstash-output-slack

ADD boot.sh /boot.sh
RUN chmod +x /boot.sh

CMD ["/boot.sh"]
