FROM ubuntu:focal
LABEL maintainer="sun oct-month@qq.com"

ARG workdir=/bootnode

WORKDIR ${workdir}

COPY ./boot.key ${workdir}/
COPY ../go-ethereum-1.10.5/build/bin/bootnode ${workdir}/

EXPOSE 30301 30301/udp

ENTRYPOINT ["./bootnode", "--nodekey=boot.key"]
