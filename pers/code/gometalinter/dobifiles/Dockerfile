FROM    golang:1.8-alpine

RUN     apk add -U curl git bash

RUN     go get github.com/dnephin/filewatcher && \
        cp /go/bin/filewatcher /usr/bin/ && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

RUN     go get github.com/FiloSottile/gvt && \
        cp /go/bin/gvt /usr/bin/ && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

RUN     go get github.com/stretchr/testify

WORKDIR /go/src/github.com/alecthomas/gometalinter
ENV     CGO_ENABLED=0
