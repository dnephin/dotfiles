FROM    golang:1.8-alpine

RUN     apk add -U curl git bash

ARG     FILEWATCHER_SHA=2e12ea42f6c8c089b19e992145bb94e8adaecedb
RUN     go get -d github.com/dnephin/filewatcher && \
        cd /go/src/github.com/dnephin/filewatcher && \
        git checkout -q "$FILEWATCHER_SHA" && \
        go build -v -o /usr/bin/filewatcher . && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

RUN     go get github.com/ernesto-jimenez/gogen/imports

WORKDIR /go/src/github.com/stretchr/testify
