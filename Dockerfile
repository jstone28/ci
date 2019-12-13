FROM golang:1.13.5-alpine

# Configure Go
ENV GOPATH=/go \
    PATH=/go/bin:$PATH \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
    GO111MODULE=on

WORKDIR $GOPATH

# copy scripts to be globally available
COPY ./scripts/ /usr/bin/

RUN apk --no-cache add jq git bash make
