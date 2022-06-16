# assets 

## assets

assets list 

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/assets/assets' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/assets/assets`

### Payload

| Name   | Type   | Require                 |
|--------|--------|-------------------------|
| row    | int    | yes                     |
| page   | int    | yes                     |
| search | string | no(fuzzy search symbol) |
| asset_id | int  | no                      |

> Example Response

```json

{
  "code": 0,
  "message": "Success",
  "generated_at": 1650347429,
  "data": {
    "count": 139,
    "list": [
      {
        "asset_id": "0",
        "metadata": {
          "deposit": "6692999670",
          "name": "Polkadog",
          "symbol": "DOG",
          "decimals": 6
        },
        "owner": {
          "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd",
          "display": "",
          "judgements": [
            {
              "index": 0,
              "judgement": "FeePaid"
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        },
        "issuer": {
          "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd",
          "display": "",
          "judgements": [
            {
              "index": 0,
              "judgement": "FeePaid"
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        },
        "supply": "1000000000000000000",
        "holders": 6
      }
    ]
  }
}
```


## asset

asset info

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/assets/asset' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "assert_id": 1,
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/assets/asset`


### Payload

| Name     | Type | Require |
|----------|------|---------|
| asset_id | int  | yes     |


> Example Response

```json

{
  "code": 0,
  "message": "Success",
  "generated_at": 1650349279,
  "data": {
    "asset_id": "1",
    "metadata": {
      "deposit": "6694332990",
      "name": "Listen Token",
      "symbol": "L T",
      "decimals": 14
    },
    "owner": {
      "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd",
      "display": "",
      "judgements": [
        {
          "index": 0,
          "judgement": "FeePaid"
        }
      ],
      "account_index": "",
      "identity": false,
      "parent": {
        "address": "",
        "display": "",
        "sub_symbol": "",
        "identity": true
      }
    },
    "issuer": {
      "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd",
      "display": "",
      "judgements": [
        {
          "index": 0,
          "judgement": "FeePaid"
        }
      ],
      "account_index": "",
      "identity": false,
      "parent": {
        "address": "",
        "display": "",
        "sub_symbol": "",
        "identity": true
      }
    },
    "admin": {
      "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd",
      "display": "",
      "judgements": [
        {
          "index": 0,
          "judgement": "FeePaid"
        }
      ],
      "account_index": "",
      "identity": false,
      "parent": {
        "address": "",
        "display": "",
        "sub_symbol": "",
        "identity": true
      }
    },
    "freezer": {
      "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd",
      "display": "",
      "judgements": [
        {
          "index": 0,
          "judgement": "FeePaid"
        }
      ],
      "account_index": "",
      "identity": false,
      "parent": {
        "address": "",
        "display": "",
        "sub_symbol": "",
        "identity": true
      }
    },
    "supply": "1000000000000000",
    "min_balance": "1000000000000",
    "is_frozen": false,
    "is_destroyed": false,
    "holders": 2
  }
}
```


## asset-holders

asset holders

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/assets/asset/holders' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "asset_id": 1,
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/assets/asset/holders`


### Payload

| Name     | Type | Require |
|----------|------|---------|
| asset_id | int  | yes     |
| row      | int  | yes     |
| page     | int  | no     |

> Example Response

```json

{
  "code": 0,
  "message": "Success",
  "generated_at": 1650350389,
  "data": {
    "count": 6,
    "list": [
      {
        "holder": {
          "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd",
          "display": "",
          "judgements": [
            {
              "index": 0,
              "judgement": "FeePaid"
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        },
        "balance": "999996000000000000"
      }
    ]
  }
}
```


## account-assets

asset holders

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/assets/account/balances' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd"
  }'
```

### Request URL

`POST /api/scan/assets/account/balances`


### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |


> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1650351232,
  "data": [
    {
      "asset_id": "0",
      "balance": "999996000000000000",
      "name": "Polkadog",
      "symbol": "DOG",
      "decimals": 6
    }
  ]
}
```


## account-assets

asset holders

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/assets/activities' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "asset_id": 20,
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/assets/activities`


### Payload

| Name      | Type | Require |
|-----------|------|---------|
| asset_id  | int  | yes     |
| row       | int  | yes     |
| page      | int  | no     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1650352863,
  "data": {
    "count": 4,
    "list": [
      {
        "event_index": "1164135-3",
        "extrinsic_index": "1164135-2",
        "block_num": 1164135,
        "asset_id": "20",
        "block_timestamp": 1637140176,
        "module_id": "assets",
        "event_id": "Issued"
      }
    ]
  }
}
```
