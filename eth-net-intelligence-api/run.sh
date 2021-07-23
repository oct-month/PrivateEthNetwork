#!/bin/bash
set -e

pm2 start app.json
# tail -f /root/.pm2/logs/eth-netstat-api-out-0.log
pm2 logs
