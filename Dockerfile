FROM --platform=linux/arm prom/node-exporter:v1.1.2

ENV NODE_ID=none

USER root

COPY docker-entrypoint.sh /etc/node-exporter/docker-entrypoint.sh
RUN CHMOD +x /etc/node-exporter/docker-entrypoint.sh

ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]
CMD [ "/bin/node_exporter" ] 