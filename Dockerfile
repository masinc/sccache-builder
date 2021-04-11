FROM rust:1-slim-buster

WORKDIR /root

RUN apt-get -y update \
&& apt-get -y install --no-install-recommends curl libssl-dev pkg-config \
&& cargo install --root /root sccache

CMD ["/root/bin/sccache"]
