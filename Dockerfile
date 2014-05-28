# BUILD-USING:        docker build -t haproxy .
# PUSH-USING:         docker tag haproxy quay.io/queue/haproxy  && docker push quay.io/queue/haproxy
FROM        quay.io/queue/base

RUN sudo apt-get update && apt-get install -y haproxy

EXPOSE 80
EXPOSE 3212
CMD ["haproxy", "-f" ,"/haproxy/haproxy.cfg" ,"-db"]
