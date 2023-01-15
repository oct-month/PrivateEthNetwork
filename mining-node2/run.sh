#!/bin/sh
echo -e "\n" | geth \
    --datadir=data \
    --bootnodes=enode://0ebda7472f5168fb9fa36a51fe4085737ed4ed396bd6e8cdaddc2011dfc389548e88724246cb2c3c59f4d2bc30aed2d4a7f106f564e01f15792372968f07b050@eth-miner1:30303 \
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
