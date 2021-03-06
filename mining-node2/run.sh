#!/bin/sh
echo -e "\n" | geth \
    --datadir=data \
    --bootnodes=enode://bf44782a648b21a8433d39b951aac73e7110440fdd3c60125bc71227f9eb0a77299c1e2422a39f272739f16a738cf664eccda800fc9c7d95a186e3f3abdd101f@eth-boot:0?discport=30301 \
    --networkid=201807247 \
    --unlock 0xEFa6B36Ca256833AF708B6913b66B871fA009b10 \
    --mine \
    --miner.threads=1 \
    --miner.etherbase=0xEFa6B36Ca256833AF708B6913b66B871fA009b10 \
    --port "30303" \
    --http \
    --http.port "8545" \
    --http.addr "0.0.0.0" \
    --http.api "eth,web3,net" \
    --http.corsdomain "*" \
    --http.vhosts="*" \
    --nat "any" \
    --allow-insecure-unlock

