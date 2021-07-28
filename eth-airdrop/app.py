from flask import Flask, render_template
from web3 import Web3

from air import air_port

app = Flask(__name__)

@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')

@app.route('/eth/<address>', methods=['GET'])
def get_eth(address: str):
    if Web3.isAddress(address):
        address = Web3.toChecksumAddress(address)
        tx_id = air_port(address)
        context = {
            'address': address,
            'tx_id': tx_id
        }
        return render_template('eth.html', context=context)
    else:
        context = {
            'msg': 'ETH地址格式错误'
        }
        return render_template('error.html', context=context)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000, debug=False)
