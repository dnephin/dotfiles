FROM    golang:1.10-alpine

RUN     apk add -U curl git bash

ARG     FILEWATCHER_SHA=v0.3.0
RUN     go get -d github.com/dnephin/filewatcher && \
        cd /go/src/github.com/dnephin/filewatcher && \
        git checkout -q "$FILEWATCHER_SHA" && \
        go build -v -o /usr/bin/filewatcher . && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

RUN     go get github.com/FiloSottile/gvt && \
        cp /go/bin/gvt /usr/bin/ && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

RUN     go get github.com/stretchr/testify && \
        go get gotest.tools && \
        go get github.com/google/go-cmp/cmp && \
        go get github.com/pkg/errors && \
        go get github.com/pmezard/go-difflib/difflib

WORKDIR /go/src/github.com/alecthomas/gometalinter
ENV     CGO_ENABLED=0
