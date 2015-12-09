FROM kibana:latest
MAINTAINER Ludek Vesely <ludek.vesely@email.com>
ENV KIBANA_INDEX .kibana
ENV KIBANA_ELASTICSEARCH_USERNAME foo
ENV KIBANA_ELASTICSEARCH_PASSWORD bar
ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ADD kibana.yml /opt/kibana/config/kibana.yml
