# geth account new --datadir data
# 0xEFa6B36Ca256833AF708B6913b66B871fA009b10
echo -e "y\ny\n" | geth removedb --datadir data
geth init --datadir data ../genesis.json
