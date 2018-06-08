FROM    golang:1.9.2-alpine

RUN     apk add --no-cache \
            git \
            gcc \
            bash \
            curl \
            musl-dev \
            linux-headers \
            btrfs-progs btrfs-progs-dev \
            libseccomp-dev libseccomp \
            ;

RUN     go get github.com/dnephin/filewatcher && \
        cp /go/bin/filewatcher /usr/bin/ && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

# TODO: vndr

ENV     CGO_ENABLED=1
WORKDIR /go/src/github.com/docker/docker
