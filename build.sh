#!/bin/sh
set PWD = `pwd`

cd go-ethereum-1.10.5
make all

cp genesis.json member-node/genesis.json
