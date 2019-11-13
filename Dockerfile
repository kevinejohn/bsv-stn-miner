FROM ubuntu:18.04
MAINTAINER KevinEJohn <kevinejohn@gmail.com>

RUN apt-get update
RUN apt-get install -y wget
RUN mkdir /miner
WORKDIR /miner
RUN wget https://github.com/pooler/cpuminer/releases/download/v2.5.0/pooler-cpuminer-2.5.0-linux-x86_64.tar.gz
RUN tar -xf pooler-cpuminer-2.5.0-linux-x86_64.tar.gz

CMD ["/miner/minerd"]
