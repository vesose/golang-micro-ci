FROM golang:alpine
RUN \
  apk add --no-cache make git gcc g++ protobuf && \
  export GO111MODULE=on && \
  go get -u github.com/golang/protobuf/protoc-gen-go && \
  go get github.com/micro/micro/v2/cmd/protoc-gen-micro@master && \
  go get github.com/micro/go-micro/v2 && \
  mkdir /.cache && chmod -R 777 /.cache $GOPATH
