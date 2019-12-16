build:
	docker build -t jstone28/ci:1.0.1 .

push:
	docker push jstone28/ci:1.0.1

all: build push
