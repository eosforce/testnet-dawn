# EOSForce Testnet

Welcome to join EOSForce Testnet!

## Community
* Telegram: <https://t.me/EOSForce>

## The Rules to join our EOSForce Testnet!
* Anyone can join our EOSForce Testnet as BP.
* 24-hour online.
* Provide a public IP for better p2p connection.
* Apply to us.

## Run a node with Docker
* `git clone https://github.com/eosforce/EOSForce-Testnet.git`
* `cd EOSForce-Testnet`
* `mkdir -p /data/eosforce`
* `cp config.ini /data/eosforce` and modify the contents with `NOTE:` keyword.
* `cp genesis.json /data/eosforce` and don't need to modify anything.
* `docker run -d --restart=always --name eosforce -v /data/eosforce:/opt/eosio/bin/data-dir -p 8888:8888 -p 9876:9876 eosforce/eos:20180425 nodeosd.sh`

## Check Docker status
* check Docker container running status: `docker container ls`
* check Docker container log: `docker logs -f eosforce`

## Apply to us
* Organisation
* Node IP/Domain
* HTTP RPC Port(default: 8888)
* P2P Port(default: 9876)
* EOS public key
* producer name
