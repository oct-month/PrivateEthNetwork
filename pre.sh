#!/bin/sh
# 本地编译geth所需环境
sudo apt install -y gcc g++ make pkg-config automake autoconf libtool libdb++-dev libevent-dev libboost-all-dev
# windows的\r\n问题
sed -i 's/\r$//' */*.sh
