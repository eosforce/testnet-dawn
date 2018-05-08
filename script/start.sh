#!/bin/bash
cp ../config.ini /data/eosforce/ -fr
docker start $(docker ps -a -q)
docker ps 
echo "start success"
