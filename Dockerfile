FROM golang:alpine
RUN \
  apk add --no-cache make git gcc g++ protobuf && \
  export GO111MODULE=on && \
  go get -u github.com/golang/protobuf/protoc-gen-go && \
  go get github.com/micro/micro/v2/cmd/protoc-gen-micro@master && \
  go get github.com/micro/go-micro/v2 && \
  go get github.com/micro/go-plugins/store/redis/v2 && \
  go get github.com/micro/go-plugins/registry/etcdv3/v2 && \
  go get github.com/micro/go-plugins/broker/nats/v2 && \
  go get github.com/rs/zerolog && \
  go get github.com/micro/go-plugins/logger/zerolog/v2 && \
  go get github.com/micro/cli && \
  go get github.com/gogo/protobuf && \
  mkdir /.cache && chmod -R 777 /.cache $GOPATH