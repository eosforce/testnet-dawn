#!/bin/bash
docker stop $(docker ps -a -q)
echo "stop success"
