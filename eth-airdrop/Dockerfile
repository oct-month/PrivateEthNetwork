# 编译
FROM golang:1.16-alpine as builder

ENV GO111MODULE on
ENV GOPROXY https://goproxy.cn

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.bfsu.edu.cn/g' /etc/apk/repositories
RUN apk add --no-cache gcc musl-dev linux-headers git

WORKDIR /go-ethereum

COPY go-ethereum-1.10.5/ /go-ethereum/
RUN go run build/ci.go install ./cmd/geth

# 生成
FROM python:3.8-alpine

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.bfsu.edu.cn/g' /etc/apk/repositories
RUN apk add --no-cache gcc musl-dev
COPY --from=builder /go-ethereum/build/bin/geth /usr/local/bin/

WORKDIR /eth-airdrop

COPY eth-airdrop/ /eth-airdrop/

RUN pip install -r requirements.txt -i https://mirrors.bfsu.edu.cn/pypi/web/simple

EXPOSE 3000

ENTRYPOINT [ "python", "-u", "app.py" ]

LABEL maintainer="sun oct-month@qq.com"
