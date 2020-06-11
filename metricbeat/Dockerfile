ARG ELASTIC_STACK_VERSION
FROM docker.elastic.co/beats/metricbeat:${ELASTIC_STACK_VERSION}
COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
COPY wait-for-kibana.sh /usr/share/metricbeat/wait-for-kibana.sh
USER root
RUN chown root:metricbeat /usr/share/metricbeat/metricbeat.yml
RUN chmod go-w /usr/share/metricbeat/metricbeat.yml
USER metricbeat
ENTRYPOINT ["sh", "/usr/share/metricbeat/wait-for-kibana.sh"]
CMD ["-environment", "container"]