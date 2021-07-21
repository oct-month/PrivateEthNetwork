FROM ubuntu:focal
LABEL maintainer="sun oct-month@qq.com"

ARG workdir=/geth-node

WORKDIR ${workdir}

COPY ../go-ethereum-1.10.5/build/bin/geth ${workdir}/
COPY ./ ${workdir}/

EXPOSE 8545 8546 30303 30303/udp

ENTRYPOINT ["./run.sh"]
