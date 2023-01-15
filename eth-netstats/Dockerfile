FROM node:lts-alpine
LABEL maintainer="sun oct-month@qq.com"

# RUN npm config set registry https://registry.npm.taobao.org

WORKDIR /eth-netstats

RUN npm install -g grunt-cli
COPY ./package.json /eth-netstats/
COPY ./package-lock.json /eth-netstats/
RUN npm install

COPY . /eth-netstats/
RUN grunt

ENV PORT 3000
ENV WS_SECRET="mysecret"

EXPOSE  3000

ENTRYPOINT ["npm", "start"]
