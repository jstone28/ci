FROM docker

COPY ./scripts/ /usr/bin/

RUN apk --no-cache add jq git bash make
