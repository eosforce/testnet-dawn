#!/bin/bash
if [ -d "/data/eosforce" ];then
    echo "eosforce has been installed"
    exit 1
fi
HTTPPORT=8888
P2PPORT=9876
sh stop.sh
docker rm $(docker ps -a -q)
docker rmi $(docker  images -q)
mkdir -p /data/eosforce/
mkdir -p /data/nodeos/eosforce
cp ../config.ini /data/eosforce/ -fr
cp ../genesis.json /data/eosforce/ -fr
docker run -d --restart=always --name eosforce -v /data/eosforce:/opt/eosio/bin/data-dir -v /data/nodeos/eosforce:/root/.local/share/eosio/nodeos -p $HTTPPORT:8888 -p $P2PPORT:9876 eosforce/eos:20180430 nodeosd.sh
docker ps -a 
echo "install success"
