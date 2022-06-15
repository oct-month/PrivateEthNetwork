FROM alpine:3
LABEL maintainer="ablocker oct-month@qq.com"


COPY --from=ablocker/geth:1.10.18 /usr/local/bin/bootnode /usr/local/bin/

ARG workdir=/boot-node

WORKDIR ${workdir}

COPY boot-node/boot.key ${workdir}/

EXPOSE 30301 30301/udp

ENTRYPOINT ["bootnode", "--nodekey=boot.key"]
