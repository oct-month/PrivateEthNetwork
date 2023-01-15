FROM node:lts-alpine
LABEL maintainer="sun oct-month@qq.com"

# RUN npm config set registry https://registry.npm.taobao.org
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.bfsu.edu.cn/g' /etc/apk/repositories
RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash git openssh

USER root

WORKDIR /root/eth-net-intelligence-api

RUN npm install -g pm2
COPY ./package.json /root/eth-net-intelligence-api/
COPY ./package-lock.json /root/eth-net-intelligence-api/
RUN npm install

COPY . /root/eth-net-intelligence-api/
RUN sed -i 's/\r$//' *.sh
RUN chmod a+x *.sh

ENTRYPOINT ["./run.sh"]
