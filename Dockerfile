
FROM ubuntu:18.04
MAINTAINER KevinEJohn <kevinejohn@gmail.com>

RUN apt-get update
RUN apt-get install -y wget
RUN mkdir /miner
WORKDIR /miner
RUN wget https://github.com/pooler/cpuminer/releases/download/v2.5.0/pooler-cpuminer-2.5.0-linux-x86_64.tar.gz
RUN tar -xf pooler-cpuminer-2.5.0-linux-x86_64.tar.gz

CMD ["/miner/minerd"]

# docker build . --tag bsv-miner

# docker run --rm -it --name miner bsv-miner /miner/minerd --url=stratum+tcp://178.128.58.114:3033 --userpass=mhA2C8UaJTDWBM7qCHpaMFdj4ZPtxoV9ut:x --algo=sha256d

# curl --location --request GET "https://api.whatsonchain.com/v1/bsv/stn/address/mhA2C8UaJTDWBM7qCHpaMFdj4ZPtxoV9ut/unspent"
