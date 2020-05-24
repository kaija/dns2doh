FROM ubuntu:bionic as builder

RUN apt update &&  apt install -y build-essential libevent-2.1-6 libevent-dev

COPY src /src

WORKDIR /src

RUN make

FROM ubuntu:bionic

ENV TINI_VERSION v0.19.0

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini

RUN chmod +x /tini

RUN apt update && apt install -y libevent-2.1-6 dnsutils

COPY --from=builder /src/dns2doh /usr/local/bin/dns2doh

ENTRYPOINT ["/tini", "--"]

CMD ["/usr/local/bin/dns2doh", "-T"]
