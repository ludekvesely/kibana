FROM kibana:latest
MAINTAINER Ludek Vesely <ludek.vesely@email.com>
ENV KIBANA_INDEX .kibana
ENV KIBANA_ELASTICSEARCH_USERNAME foo
ENV KIBANA_ELASTICSEARCH_PASSWORD bar
COPY ./docker-entrypoint.sh /
ADD kibana.yml /opt/kibana/config/kibana.yml
