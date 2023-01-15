import subprocess
from random import choice

ETH_PIPE = ['http://eth-miner1:8545', 'http://eth-miner2:8545', 'http://eth-miner3:8545']
CMD = "geth --exec \"loadScript('air.js');airdrop('%s',1)\" attach %s"

def air_port(address: str) -> str:
    '''空投1个eth，返回交易地址'''
    p = subprocess.Popen(CMD % (address, choice(ETH_PIPE)), shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    p.wait()
    out_put = p.stdout.read().decode('UTF-8')
    print("程序输出", out_put)
    if out_put.startswith('"'):
        out_put = out_put[1:-2]
    return out_put
