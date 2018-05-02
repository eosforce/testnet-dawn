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
* NOTE: your BP producer name must be between a-z lowercase letters, and length must be less than 12.
* Generate your EOS key pair: <https://nadejde.github.io/eos-token-sale/>
* `git clone https://github.com/eosforce/EOSForce-Testnet.git`
* `cd EOSForce-Testnet`
* `mkdir -p /data/eosforce`
* `mkdir -p /data/nodeos/eosforce`
* `cp config.ini /data/eosforce` and modify the contents with `NOTE:` keyword.
* `cp genesis.json /data/eosforce` and don't need to modify anything.
* `docker run -d --restart=always --name eosforce -v /data/eosforce:/opt/eosio/bin/data-dir -v /data/nodeos/eosforce:/root/.local/share/eosio/nodeos -p 8888:8888 -p 9876:9876 eosforce/eos:20180430 nodeosd.sh`

## Register as a candidate BP
* `docker exec -it eosforce bash`
* `cleos wallet create`
* Send us a GitHub PR containing your BP information, we will create your producer account.
* `cleos push action eosio regproducer "$(cat regproducer.json)" -p <your-producer-name>`
* NOTE: If you find it difficult to do it, you can also send your desired <producer-name> and your EOS key pair to us, we help you to register BP, or do it by your own. Contract us in the telegram group <https://t.me/EOSForce> and contract [@eosforceio](https://t.me/eosforceio).

## Check Docker status
* check Docker container running status: `docker container ls`
* check Docker container log: `docker logs -f eosforce`

## Apply to us
* Fork this repo, and send a Github PR to us.
* add a `/bp/<your-producer-name>.json` into the `bp` directory

### BP json file content example

```
{
    "bp_name" : "eosforce",
    "organisation" : "EOS原力 EOSForce",
    "location" : "中国, 杭州",
    "node_addr" : "eosio.eosfore.io",
    "port_http" : "8888",
    "port_ssl" : "",
    "port_p2p" : "9876",
    "pub_key" : "EOS6VhjNxYTRNDCHV8Mm1H8c6SzoRre6KfNydpheo4N59xxXajfsr",
    "bp" : false,
    "enabled" : true,
    "site" : "http://www.eosforce.io/",
    "telegram" : "https://t.me/eosforce",
    "comment" : ""
}
```
