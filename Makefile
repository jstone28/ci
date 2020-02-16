build:
	docker build -t registry.gitlab.com/jstone28/ci .

push:
	docker push registry.gitlab.com/jstone28/ci

run:
	docker run -it -u root --privileged -v /var/run/docker.sock:/var/run/docker.sock registry.gitlab.com/jstone28/ci bash

all: build push
