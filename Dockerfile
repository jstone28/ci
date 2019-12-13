FROM docker:stable-dind

# Configure Go
ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH /go/bin:$PATH

WORKDIR $GOPATH

RUN apk --no-cache add jq git bash make musl-dev go

# copy scripts to be globally available
COPY ./scripts/ /usr/bin/
