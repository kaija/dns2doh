all: docker

docker:
	docker build -t dns2doh .
