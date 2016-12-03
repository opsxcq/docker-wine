FROM strm/vnc

MAINTAINER opsxcq <opsxcq@thestorm.com.br>

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    wine && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME /c

