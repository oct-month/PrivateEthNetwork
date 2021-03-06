#!/bin/sh
if [ ! -d "./data/geth" ]; then
    echo -e "\n\n" | geth account new
    geth init --datadir data genesis.json
fi
geth \
    --datadir=data \
    --bootnodes=enode://bf44782a648b21a8433d39b951aac73e7110440fdd3c60125bc71227f9eb0a77299c1e2422a39f272739f16a738cf664eccda800fc9c7d95a186e3f3abdd101f@eth-boot:0?discport=30301 \
    --networkid=201807247 \
    --syncmode "full" \
    --port "30303" \
    --http \
    --http.port "8545" \
    --http.addr "0.0.0.0" \
    --http.api "eth,web3,net" \
    --http.corsdomain "*" \
    --http.vhosts="*" \
    --nat "any"
