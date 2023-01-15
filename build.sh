#!/bin/sh
set PWD = `pwd`

cd $PWD/go-ethereum-1.10.26
make all

cp $PWD/genesis.json member-node/genesis.json

