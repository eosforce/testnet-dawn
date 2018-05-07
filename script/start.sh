#!/bin/bash
docker start $(docker ps -a -q)
docker ps 
echo "start success"
