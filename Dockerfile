FROM ubuntu:bionic

RUN apt update &&  apt install -y build-essential libevent-2.1-6 libevent-dev

COPY src /src

WORKDIR /src

RUN make
