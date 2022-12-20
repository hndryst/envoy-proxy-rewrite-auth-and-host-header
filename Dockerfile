FROM envoyproxy/envoy:v1.21.1
# checkov:skip=CKV_DOCKER_2: Health Check by k8s

COPY ./envoy.yaml /etc/envoy/envoy.yaml
COPY entrypoint.sh /

RUN chmod go+r /etc/envoy/envoy.yaml
RUN chmod 500 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080/tcp
