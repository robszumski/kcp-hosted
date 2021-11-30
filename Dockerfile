#FROM golang:1.17-alpine
FROM golang:1.17-buster

# Set up the Go env

RUN git clone https://github.com/kcp-dev/kcp /go/src/
WORKDIR /go/src/kcp
#RUN go mod init

EXPOSE 6443
CMD go run ../cmd/kcp start
