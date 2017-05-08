FROM gcr.io/google_containers/fluentd-elasticsearch:1.23

RUN sed -i "s/host\selasticsearch-logging/host \"#{ENV['ELASTICSEARCH_ENDPOINT']}\"/"  /etc/td-agent/td-agent.conf && \
    sed -i "s/port\s9200/port \"#{ENV['ELASTICSEARCH_PORT']}\"/"  /etc/td-agent/td-agent.conf


