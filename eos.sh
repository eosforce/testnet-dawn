#!/bin/bash
cd script

help(){
    echo "Usage: $(basename $0) status|start|stop|restart|install|uninstall|test"
    exit
}

if [ $# -lt 1 ];then
    help
fi

if [ x"$1" = x"restart" ];then
    sh restart.sh
elif [ x"$1" = x"stop" ];then
    sh stop.sh
elif [ x"$1" = x"start" ];then
    sh start.sh
elif [ x"$1" = x"status" ];then
    sh status.sh
elif [ x"$1" = x"install" ];then
    sh install.sh
elif [ x"$1" = x"uninstall" ];then
    sh uninstall.sh
elif [ x"$1" = x"test" ];then
    sh test.sh
else
    help
fi
