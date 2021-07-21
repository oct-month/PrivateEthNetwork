# 私有以太坊网络

## 部署

```sh
docker-compose up -d --build
```

## 说明

### 网络结构

本网络共有6个节点：

- 1个`boot-node`，即启动节点，用于对等网络发现
- 3个`mining-node`，即挖矿节点
- 2个`member-node`，即普通记账节点，不挖矿

共识算法使用`Clique`权威证明，只有经过授权的“签名者”才能创建新块。

### 创世区块

`genesis.json`描述了创世区块。

可以使用`puppeth`工具来创建此json文件。

本创世区块中设定由`eth-miner1`、`eth-miner2`、`eth-miner3`节点负责打包。

如果需要加入新的挖矿节点，则需要进入`geth console`，运行：

```js
clique.propose('0x地址', true)
```

以提名新的挖矿节点。

## 踩坑

- `bootnode`节点中输出的`enode`不太对，要改对应的`ip`。
- 成员节点也需要有账户，不然会报`err="etherbase must be explicitly specified"`错误。
- 每个节点都有一个`nodekey`，存储在`data/geth/nodekey`中，用于区分不同节点，不能相同。
- `Clique`系统中，挖矿节点必须`unlock`账户才能打包区块。
- `genesis.json`中的`extraData`记录了初始的可记账节点，必须把对应的账户填入。
- 挖矿节点必须至少存在一个，这样创世区块才能打包，不然会报`Dropping unsynced node during sync`错误。
