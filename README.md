# 私有以太坊网络

## 部署

```sh
docker-compose up -d --build
```

## 说明

### 网络结构

本网络共有6个节点：

- 1个`bootnode`，即启动节点，用于对等网络发现
- 3个`mining-node`，即挖矿节点
- 2个`member-node`，即普通记账节点，不挖矿

共识算法使用`Clique`权威证明，只有经过授权的“签名者”才能创建新块。

### 创世区块

`genesis.json`描述了创世区块。

本创世区块设定由`eth-miner1`节点负责打包。
