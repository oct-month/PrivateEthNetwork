# geth account new --datadir data
# 0x3FC6fc17Efa2932884f035533D2CD72eC5119482
echo -e "y\ny\n" | geth removedb --datadir data
geth init --datadir data ../genesis.json
