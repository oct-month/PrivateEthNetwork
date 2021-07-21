# 编译
FROM golang:1.16-alpine as builder

ENV GO111MODULE on
ENV GOPROXY https://goproxy.cn

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.bfsu.edu.cn/g' /etc/apk/repositories
RUN apk add --no-cache gcc musl-dev linux-headers git

WORKDIR /go-ethereum

COPY go-ethereum-1.10.5/ /go-ethereum/
RUN go run build/ci.go install ./cmd/bootnode

# 生成镜像
FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.bfsu.edu.cn/g' /etc/apk/repositories
RUN apk add --no-cache ca-certificates
COPY --from=builder /go-ethereum/build/bin/bootnode /usr/local/bin/

ARG workdir=/bootnode

WORKDIR ${workdir}

COPY bootnode/boot.key ${workdir}/

EXPOSE 30301 30301/udp

ENTRYPOINT ["bootnode", "--nodekey=boot.key"]

LABEL maintainer="sun oct-month@qq.com"
