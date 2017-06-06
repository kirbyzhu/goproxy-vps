# Usage: https://hub.docker.com/r/phuslu/goproxy-vps/

FROM phuslu/alpine:latest

RUN curl -L git.io/get-goproxy-vps | bash

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT  sh /entrypoint.sh 

EXPOSE 8443
