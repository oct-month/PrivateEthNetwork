#!/bin/sh
echo -e "\n" | geth \
    --datadir=data \
    --bootnodes=enode://bf44782a648b21a8433d39b951aac73e7110440fdd3c60125bc71227f9eb0a77299c1e2422a39f272739f16a738cf664eccda800fc9c7d95a186e3f3abdd101f@boot-node:0?discport=30301 \
    --networkid=201807247 \
    --unlock 0x37F2f5168fD669d9ddd943724819A4e97211b9D6 \
    --mine \
    --miner.threads=1 \
    --miner.etherbase=0x37F2f5168fD669d9ddd943724819A4e97211b9D6
