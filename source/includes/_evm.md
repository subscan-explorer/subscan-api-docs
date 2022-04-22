# EVM API

## evm block

Get evm display block by blockNum

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/block' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "block_num": 5012287
  }'
```

### Request URL

`POST /api/scan/evm/block`

### Payload

| Name      | Type | Require |
|-----------|------|---------|
| block_num | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "block_num": 5012287,
    "block_hash": "0x2d1be5d00b303366b59a4b9cf930852137802297a470ec691add3aee8001427a",
    "parent_hash": "0x07ddfee38a95dac16a195eb18a5e97f788f8897470d5337c671c770665fe8211",
    "sha3_uncles": "0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347",
    "author": "0x68d9882f0c95f1443966a87d90e6d7dc069a70a6",
    "miner": "0x68d9882f0c95f1443966a87d90e6d7dc069a70a6",
    "state_root": "0xd9a1f04aba02a4ca1b0bec92b8c12c435dfcb3b4222790f6f555f382fe249af1",
    "transactions_root": "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
    "receipts_root": "0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347",
    "gas_used": "0",
    "gas_limit": "4294967295",
    "extra_data": "0x",
    "logs_bloom": "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
    "timestamp": 1619580384,
    "difficulty": "0",
    "total_difficulty": "0",
    "seal_fields": "[\"0x0000000000000000000000000000000000000000000000000000000000000000\",\"0x0000000000000000\"]",
    "uncles": "[]",
    "block_size": "514"
  }
}
```

## transactions

Get evm transactions by blockNum

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/transactions' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "block_num": 5226287
  }'
```

### Request URL

`POST /api/scan/evm/transactions`

### Payload

| Name        | Type   | Require    |
|-------------|--------|------------|
| block_num   | int    | no         |
| contract    | string | no         |
| address     | string | no(signer) |
| page        | int    | no         |
| row         | int    | no         |
| block_range | string | no         |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1642990714,
  "data": {
    "count": 22,
    "list": [
      {
        "hash": "0xa47532a4508c18c79ab9954d2f0492c62e8b7452edee02f07818484cf944efab",
        "from": "0x85297fb4c4006565aac113cd2f3f510ec8cc49cc",
        "to": "0x68068501b1b27d0de067e2433c0554f2b9a52bfa",
        "value": "0",
        "gas_used": "56715",
        "success": false
      }
    ]
  }
}
```

## account tokens

Get evm tokens by account address

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/account/tokens' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "0x3217f36ae34aca2ce60d218af8f47d29101204a8"
  }'
```

### Request URL

`POST /api/scan/evm/account/tokens`

### Payload

| Name    | Type   | Require                   |
|---------|--------|---------------------------|
| address | string | yes                       |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": [
    {
      "contract": "0x7139e2b08d58987a4327b11fec388536cc65d37a",
      "holder": "0xbb3e51d20ca651fbe19b1a1c2a6c8b1a4d950437",
      "balance": "9999000000000000000000"
    }
  ]
}
```

## erc20 tokens

Get evm tokens info by contract address

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/tokens' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "contracts": ["0x7139e2b08d58987a4327b11fec388536cc65d37a"]
  }'
```

### Request URL

`POST /api/scan/evm/tokens`

### Payload

| Name      | Type   | Require                   |
|-----------|--------|---------------------------|
| contracts | array  | no                        |
| page      | int    | no                        |
| row       | int    | no                        |
| search    | string | no (erc20 symbol or name) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1642990882,
  "data": {
    "count": 1,
    "list": [
      {
        "contract": "0x8eb2281bbd90ea671c9f6cb1e51102b7fe3d480e",
        "name": "Apostle",
        "symbol": "APO",
        "decimals": 0,
        "totalSupply": "2100000000000000",
        "holders": 76,
        "transfer_count": 930,
        "price": "0"
      }
    ]
  }
}
```

## transaction

Get evm transaction

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/transaction' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "hash": 0x3b9c2b978a72b1f4b220c0640ada12bcb894cf692a0e7a1faca33f0acb7d6fde
  }'
```

### Request URL

`POST /api/scan/evm/transaction`

### Payload

| Name            | Type   | Require |
|-----------------|--------|---------|
| hash            | string | no      |
| extrinsic_index | string | no      |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "block_num": 5145082,
    "hash": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6",
    "block_timestamp": 1620383694,
    "success": true,
    "error_type": "",
    "error_msg": "Returned",
    "from": "0xbb3e51d20ca651fbe19b1a1c2a6c8b1a4d950437",
    "to": {
      "address": "0xd6fc3e187da47e33774b25c3d0adc619032bf686",
      "is_contract": true,
      "precompile_name": ""
    },
    "value": "1000000000000000000",
    "gas_limit": "3000000",
    "gas_price": "1000000000",
    "gas_used": "0",
    "nonce": 18,
    "input_data": "f305d7190000000000000000000000000eae9babe944105dd3e0d81c24ef1f6f63d463c70000000000000000000000000000000000000000000000008ac7230489e8000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000de0b6b3a7640000000000000000000000000000bb3e51d20ca651fbe19b1a1c2a6c8b1a4d9504370000000000000000000000000000000000000000000000000000000060953eb4",
    "token_transfers": [
      {
        "contract": "0x0eae9babe944105dd3e0d81c24ef1f6f63d463c7",
        "hash": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6",
        "create_at": 1620383694,
        "from": "0xbb3e51d20ca651fbe19b1a1c2a6c8b1a4d950437",
        "to": "0x6b0e1c0c971b998593fb9b5abd17b5ed9b0c4f8f",
        "value": "10000000000000000000",
        "receipt_index": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6-1"
      },
      {
        "contract": "0x6b0e1c0c971b998593fb9b5abd17b5ed9b0c4f8f",
        "hash": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6",
        "create_at": 1620383694,
        "from": "0x0000000000000000000000000000000000000000",
        "to": "0x0000000000000000000000000000000000000000",
        "value": "1000",
        "receipt_index": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6-5"
      },
      {
        "contract": "0x6b0e1c0c971b998593fb9b5abd17b5ed9b0c4f8f",
        "hash": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6",
        "create_at": 1620383694,
        "from": "0x0000000000000000000000000000000000000000",
        "to": "0xbb3e51d20ca651fbe19b1a1c2a6c8b1a4d950437",
        "value": "3162277660168378331",
        "receipt_index": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6-6"
      },
      {
        "contract": "0xa3ee184ed6ea8fa276afa282980f83a7091b1e8c",
        "hash": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6",
        "create_at": 1620383694,
        "from": "0xd6fc3e187da47e33774b25c3d0adc619032bf686",
        "to": "0x6b0e1c0c971b998593fb9b5abd17b5ed9b0c4f8f",
        "value": "1000000000000000000",
        "receipt_index": "0x97c3163c0e4779cd14f4068bc55f8cdb8fa19469fd9af388e426211607b6c7b6-4"
      }
    ]
  }
}
```

## contracts

Get contracts by contract address

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/contracts' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "contracts": ["0x7139e2b08d58987a4327b11fec388536cc65d37a"]
  }'
```

### Request URL

`POST /api/scan/evm/contracts`

### Payload

| Name      | Type  | Require |
|-----------|-------|---------|
| contracts | array | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": [
    {
      "address": "0x02c1de58fc5cd6e97385d6234fe6d95856fa1cc1",
      "deployer": "0x0f14341a7f464320319025540e8fe48ad0fe5aec",
      "block_num": 4998447,
      "deploy_at": 1619496876
    }
  ]
}
```

## erc20 transfers

Get erc20 transfers by address

```shell
curl -X POST 'https://shibuya.api.subscan.io/api/scan/evm/erc20/transfer' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": ["0x7139e2b08d58987a4327b11fec388536cc65d37a"]
  }'
```

### Request URL

`POST /api/scan/evm/erc20/transfer`

### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |
| row     | int    | yes     |
| page    | int    | no      |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1635239251,
  "data": {
    "count": 10,
    "list": [
      {
        "contract": "0x878f2bd833e2986faafe5eb3216cf34bda51849b",
        "hash": "0x5ade0e525aa29ca3bafe92cd08ef91c34370bad6784602ca5297b251eac7e56f",
        "create_at": 1631719386,
        "from": "0x870a26caadb927c7bf94abbb40a2121a20fe1bf8",
        "to": "0x4bc5bda0908a786616c0f4d52a403113cb9cf71f",
        "value": "212140000000000",
        "decimals": 18,
        "symbol": "PLP",
        "name": "PolkaEx LP Token"
      }
    ]
  }
}
```

## erc20 token holders

Get erc20 transfers by address

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/token/holders' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "contract": "0x7139e2b08d58987a4327b11fec388536cc65d37a",
    "row":10,
    "page":0
  }'
```

### Request URL

`POST /api/scan/evm/token/holders`

### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |
| row     | int    | yes     |
| page    | int    | no      |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1642992040,
  "data": {
    "count": 1,
    "list": [
      {
        "contract": "0x8eb2281bbd90ea671c9f6cb1e51102b7fe3d480e",
        "name": "Apostle",
        "symbol": "APO",
        "decimals": 0,
        "totalSupply": "2100000000000000",
        "holders": 76,
        "transfer_count": 930,
        "price": "0"
      }
    ]
  }
}
```


## contract list 

Get contract list

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/contract/list' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row":10,
    "page":0
  }'
```

### Request URL

`POST /api/scan/evm/contract/list`

### Payload

| Name        | Type   | Require                               |
|-------------|--------|---------------------------------------|
| contracts   | array  | no                                    |
| verified    | bool   | no                                    |
| row         | int    | yes                                   |
| page        | int    | no                                    |
| search      | string | no                                    |
| order       | string | no(desc or asc)                       |
| order_field | string | no(verify_time or transaction_count ) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1642992332,
  "data": {
    "count": 1,
    "list": [
      {
        "address": "0x9f5098Dc064F6ca8D7f7Eb9e722706256b35bb37",
        "contract_name": "ProxyAdmin",
        "evm_version": "istanbul",
        "balances": "0",
        "verify_status": "partial",
        "verify_time": 0
      }
    ]
  }
}
```


## EVM meta

```shell
curl -X POST 'https://crab.webapi.subscan.io/api/scan/evm/meta' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{}'
```

### Request URL

`POST /api/scan/evm/meta`


> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1643178109,
  "data": {
    "ERC20_count": 12,
    "account_count": 3249,
    "contracts_count": 189,
    "transaction_count": 8411,
    "verified_contracts_count": 11
  }
}
```