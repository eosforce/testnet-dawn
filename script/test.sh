#!/bin/bash
IP=`grep "p2p-server-address" /data/eosforce/config.ini | awk -F= '{print $2}'|awk -F: '{print $1}'`
PORT=`grep "http-server-address" /data/eosforce/config.ini | awk -F= '{print $2}'|awk -F: '{print $2}'`
IP=`echo $IP | sed s/[[:space:]]//g`
PORT=`echo $PORT | sed s/[[:space:]]//g`
API="http://$IP:$PORT/v1/chain/get_info"
while true
do
    curl $API
    echo ""
    sleep 2
done
