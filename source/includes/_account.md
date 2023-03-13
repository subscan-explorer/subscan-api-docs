# Account API

## accounts

Account list

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/accounts' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/accounts`

### Payload

| Name        | Type         | Require                                                                                                                                                    |
|-------------|--------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| row         | int          | yes                                                                                                                                                        |
| page        | int          | yes                                                                                                                                                        |
| order       | string       | no (desc,asc)                                                                                                                                              |
| order_field | string       | no(balance)                                                                                                                                                |
| min_balance | string       | no                                                                                                                                                         |
| max_balance | string       | no                                                                                                                                                         |
| filter      | string       | no(validator nominator councilMember techcomm registrar system module evm nominationPool proxy proxies multisig multisigMember fellowship onChainIdentity) |
| address     | array string | no (max:100)                                                                                                                                               |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653374584,
  "data": {
    "count": 967943,
    "list": [
      {
        "account_display": {
          "account_index": "127Ac3",
          "address": "15fNZmAVqLdg6JMD9ZRtzhXrouzd2D4YTWdg3WYW8yZae6F2",
          "display": "",
          "judgements": [
            {
              "index": 0,
              "judgement": "FeePaid"
            }
          ],
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        },
        "address": "15fNZmAVqLdg6JMD9ZRtzhXrouzd2D4YTWdg3WYW8yZae6F2",
        "balance": "8223.4312040139",
        "balance_lock": "8172.7073040139",
        "count_extrinsic": 10,
        "derive_token": {
          "string": {
            "token": "",
            "balance": "",
            "locked": ""
          }
        },
        "is_erc20": false,
        "is_evm_contract": false,
        "kton_balance": "0",
        "kton_lock": "0",
        "fellowship_rank": 1,
        "assets_tag": [
          "Whale"
        ],
        "registrar_info": {
          "registrar_index": 1,
          "registrar_fee": "0"
        },
        "ring_lock": "8172.7073040139"
      }
    ]
  }
}
```

## account-statistics

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/accounts/statistics' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "type":"role"
  }'
```

### Request URL

`POST /api/scan/accounts/statistics`

### Payload

| Name | Type   | Require         |
|------|--------|-----------------|
| type | string | no(assets,role) |

> Example Role type Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1674012922,
  "data": [
    {
      "role": "registrar",
      "count": 1
    },
    {
      "role": "proxies",
      "count": 1140
    },
    {
      "role": "multisig",
      "count": 413
    },
    {
      "role": "multisigMember",
      "count": 865
    },
    {
      "role": "validator",
      "count": 16
    },
    {
      "role": "nominator",
      "count": 22429
    },
    {
      "role": "proxy",
      "count": 1107
    },
    {
      "role": "nominationPool",
      "count": 416
    }
  ]
}
```

> Example Assets type Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1677207181,
  "data": [
    {
      "name": "Whale",
      "max_balance": "0",
      "min_balance": "13281536626674830",
      "total": "2651412049964972151481434",
      "account_count": 97
    },
    {
      "name": "Dolphin",
      "max_balance": "13281536626674830",
      "min_balance": "1328153662667480",
      "total": "847270455523017511",
      "account_count": 224
    },
    {
      "name": "Fish",
      "max_balance": "1328153662667480",
      "min_balance": "132815366270",
      "total": "431931610772807017",
      "account_count": 7596
    },
    {
      "name": "Shrimp",
      "max_balance": "132815366270",
      "min_balance": "0",
      "total": "36788464394507",
      "account_count": 885
    }
  ]
}
```

## account-tokens

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/account/tokens' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "162NZmCZ8d2koaQqnFb5t9GCPE4UXFELjiCE5kWxDWnZPBMC"
  }'
```

### Request URL

`POST /api/scan/account/tokens`

### Payload

| Name    | Type   | Require                   |
|---------|--------|---------------------------|
| address | string | yes (ss58 or eth_address) |

> Example Response

```json

{
  "code": 0,
  "message": "Success",
  "generated_at": 1653375440,
  "data": {
    "native": [
      {
        "symbol": "CRAB",
        "unique_id": "CRAB",
        "decimals": 9,
        "balance": "1000000000",
        "lock": "3",
        "reserved": "7",
        "bonded": "9",
        "unbonding": "11",
        "democracy_lock": "13",
        "election_lock": "14"
      },
      {
        "symbol": "CKTON",
        "unique_id": "CKTON",
        "decimals": 9,
        "balance": "2000000000",
        "lock": "4",
        "reserved": "8",
        "bonded": "10",
        "unbonding": "12",
        "democracy_lock": "15"
      }
    ],
    "builtin": [
      {
        "symbol": "AUSD",
        "unique_id": "AUSD",
        "decimals": 9,
        "balance": "1000000"
      }
    ],
    "assets": [
      {
        "symbol": "MARK",
        "decimals": 10,
        "balance": "10000000000"
      }
    ],
    "ERC20": [
      {
        "symbol": "EVO",
        "decimals": 0,
        "balance": "1"
      }
    ]
  }
}
```

## tokens holders list

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/token/holders' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "token": "DOT",
    "row":20
  }'
```

### Request URL

`POST /api/scan/token/holders`

### Payload

| Name        | Type   | Require            |
|-------------|--------|--------------------|
| token       | string | yes                |
| order       | string | no(asc desc)       |
| order_field | string | no(balance locked) |
| row         | int    | yes                |
| page        | int    | no                 |

> Example Response

```json

{
  "code": 0,
  "message": "Success",
  "generated_at": 1653375440,
  "data": {
    "list": [
      {
        "account_display": {
          "address": "15fNZmAVqLdg6JMD9ZRtzhXrouzd2D4YTWdg3WYW8yZae6F2"
        },
        "ring_lock": "1",
        "balance": "1",
        "count_extrinsic": 4
      }
    ]
  }
}
```
