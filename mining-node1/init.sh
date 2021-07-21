# geth account new --datadir data
# 0x37F2f5168fD669d9ddd943724819A4e97211b9D6
echo -e "y\ny\n" | geth removedb --datadir data
geth init --datadir data ../genesis.json
