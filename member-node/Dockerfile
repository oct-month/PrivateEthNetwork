FROM alpine:latest
LABEL maintainer="ablocker oct-month@qq.com"


COPY --from=ablocker/geth:1.10.26 /usr/local/bin/geth /usr/local/bin/

ARG workdir=/geth-node

WORKDIR ${workdir}

COPY member-node/ ${workdir}/
RUN sed -i 's/\r$//' *.sh

EXPOSE 8545 8546 30303 30303/udp

ENTRYPOINT ["sh", "run.sh"]
