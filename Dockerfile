FROM envoyproxy/envoy:v1.21.1

COPY ./envoy.yaml /etc/envoy/envoy.yaml
COPY entrypoint.sh /

RUN chmod go+r /etc/envoy/envoy.yaml
RUN chmod 500 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080/tcp
