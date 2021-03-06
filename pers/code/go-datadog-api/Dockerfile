
ARG     GOLANG_VERSION
FROM    golang:${GOLANG_VERSION:-1.11-alpine} as golang
RUN     apk add -U curl git bash
ENV     CGO_ENABLED=0
ENV     GO111MODULE=auto
ENV     PS1="# "
WORKDIR /code

FROM    golang as dev
COPY    .tools/go.mod /tools/go.mod
WORKDIR /tools
RUN     go get github.com/dnephin/filewatcher@v0.3.1 
RUN     go get gotest.tools/gotestsum@v0.3.2
WORKDIR /code

FROM    golang as linter
ARG     GOMETALINTER=v2.0.11
RUN     go get -d github.com/alecthomas/gometalinter && \
        cd /go/src/github.com/alecthomas/gometalinter && \
        git checkout -q "$GOMETALINTER" && \
        go build -v -o /usr/local/bin/gometalinter . && \
        gometalinter --install && \
        rm -rf /go/src/* /go/pkg/*
ENTRYPOINT ["/usr/local/bin/gometalinter"]
CMD     ["--config=.gometalinter.json", "./..."]
