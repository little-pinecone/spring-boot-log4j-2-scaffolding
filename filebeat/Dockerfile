ARG ELASTIC_STACK_VERSION
FROM docker.elastic.co/beats/filebeat:${ELASTIC_STACK_VERSION}
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chown root:filebeat /usr/share/filebeat/filebeat.yml
RUN chmod go-w /usr/share/filebeat/filebeat.yml
USER filebeat