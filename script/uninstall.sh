#!/bin/bash
echo -n "Do you want uninstall eosforce? [y|n]"
read answer
if [ x"$answer" = x"y" ];then
    rm /data/eosforce -fr
    rm /data/nodeos -fr
    sh stop.sh
    docker rm $(docker ps -a -q)
    docker rmi $(docker  images -q)
    echo "uninstall success"
elif [ x"$answer" = x"n" ];then
    echo "cancel"
fi
