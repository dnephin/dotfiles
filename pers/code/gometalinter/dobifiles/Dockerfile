FROM    golang:1.10-alpine

RUN     apk add -U curl git bash

ARG     FILEWATCHER_SHA=v0.3.0
RUN     go get -d github.com/dnephin/filewatcher && \
        cd /go/src/github.com/dnephin/filewatcher && \
        git checkout -q "$FILEWATCHER_SHA" && \
        go build -v -o /usr/bin/filewatcher . && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

ARG     GOTESTSUM=v0.3.0
RUN     go get -d gotest.tools/gotestsum && \
        cd /go/src/gotest.tools/gotestsum && \
        git checkout -q "$GOTESTSUM" && \
        go build -v -o /usr/bin/gotestsum . && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

RUN     go get github.com/FiloSottile/gvt && \
        cp /go/bin/gvt /usr/bin/ && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

RUN     go get github.com/stretchr/testify && \
        go get gotest.tools/...

WORKDIR /go/src/github.com/alecthomas/gometalinter
ENV     CGO_ENABLED=0
ENV     PS1="# "
