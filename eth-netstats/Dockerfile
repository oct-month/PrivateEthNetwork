FROM node:14-alpine
LABEL maintainer="sun oct-month@qq.com"

# RUN npm config set registry https://registry.npm.taobao.org

WORKDIR /eth-netstats
COPY . /eth-netstats/

RUN npm install \
  && npm install -g grunt-cli \
  && grunt

ENV PORT 3000
ENV WS_SECRET="mysecret"

EXPOSE  3000

ENTRYPOINT ["npm", "start"]
