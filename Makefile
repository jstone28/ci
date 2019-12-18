build:
	docker build -t jstone28/ci:2.0.0 .

push:
	docker push jstone28/ci:2.0.0

run:
	docker run -it -u root --privileged -v /var/run/docker.sock:/var/run/docker.sock jstone28/ci:2.0.0 bash

all: build push
