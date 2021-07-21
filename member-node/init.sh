echo -e "y\ny\n" | geth removedb --datadir data
geth init --datadir data ../genesis.json
