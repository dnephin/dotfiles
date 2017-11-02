FROM    golang:1.9-alpine

RUN     apk add -U curl git bash make

ARG     FILEWATCHER_SHA=2e12ea42f6c8c089b19e992145bb94e8adaecedb
RUN     go get -d github.com/dnephin/filewatcher && \
        cd /go/src/github.com/dnephin/filewatcher && \
        git checkout -q "$FILEWATCHER_SHA" && \
        go build -v -o /usr/bin/filewatcher . && \
        rm -rf /go/src/* /go/pkg/* /go/bin/*

ARG     GOMETALINTER_SHA=7f9672e7ea538b8682e83395d50b12f09bb17b91
RUN     go get -d github.com/alecthomas/gometalinter && \
        cd /go/src/github.com/alecthomas/gometalinter && \
        git checkout -q "$GOMETALINTER_SHA" && \
        go build -v -o /usr/local/bin/gometalinter . && \ 
        gometalinter --install && \
        rm -rf /go/src/* /go/pkg/*

ARG     VNDR_SHA=a6e196d8b4b0cbbdc29aebdb20c59ac6926bb384
RUN     go get -d github.com/LK4D4/vndr && \
        cd /go/src/github.com/LK4D4/vndr && \
        git checkout -q "$VNDR_SHA" && \
        go build -v -o /usr/bin/vndr . && \
        rm -rf /go/src/* /go/pkg/*

WORKDIR /go/src/github.com/moby/tool
ENV     CGO_ENABLED=0
