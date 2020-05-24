IMAGE=dns2doh
REPO=kaija

all: build

build:
	docker pull ubuntu:bionic
	docker build -t ${REPO}/${IMAGE} .

run:
	docker run -d --name dns2doh ${REPO}/${IMAGE}

stop:
	docker stop dns2doh
	docker rm dns2doh
