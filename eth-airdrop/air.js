function airdrop(address, value) {
    return eth.sendTransaction({
        from: eth.accounts[0],
        to: address,
        value: web3.toWei(value,'ether')
    })
}
