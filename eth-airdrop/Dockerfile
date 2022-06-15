
FROM python:3.8-alpine
LABEL maintainer="ablocker oct-month@qq.com"


RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.bfsu.edu.cn/g' /etc/apk/repositories
RUN apk add --no-cache gcc musl-dev

COPY --from=ablocker/geth:1.10.18 /usr/local/bin/geth /usr/local/bin/

WORKDIR /eth-airdrop

COPY eth-airdrop/ /eth-airdrop/

RUN pip install -r requirements.txt -i https://mirrors.bfsu.edu.cn/pypi/web/simple

EXPOSE 3000

ENTRYPOINT [ "python", "-u", "app.py" ]

LABEL maintainer="sun oct-month@qq.com"
