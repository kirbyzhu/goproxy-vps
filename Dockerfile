FROM phuslu/alpine:latest

RUN \
    apk add --no-cache --virtual .build-deps ca-certificates curl \
    && mkdir -p /opt/goproxy \
    && cd /opt/goproxy \
    && curl -fSL https://github.com/phuslu/goproxy-ci/releases/download/r1405/goproxy-vps_linux_amd64-r206.tar.xz | tar xJ 
    
ENV GOPROXY_VPS_CONFIG_URL = https://pastbin/raw/....

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT  /entrypoint.sh 

EXPOSE 8443 22
