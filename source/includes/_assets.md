# Assets

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

| Name     | Type   | Require                 |
|----------|--------|-------------------------|
| row      | int    | yes                     |
| page     | int    | yes                     |
| search   | string | no(fuzzy search symbol) |
| asset_id | int    | no                      |

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
        "holders": 6,
        "unique_id": "standard_assets/0"
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
    "holders": 2,
    "unique_id": "standard_assets/1"
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
| page     | int  | no      |

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

| Name     | Type | Require |
|----------|------|---------|
| asset_id | int  | yes     |
| row      | int  | yes     |
| page     | int  | no      |

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


## assets-list-all

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/assets/all' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/assets/all`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1667352665,
  "data": {
    "list": [
      {
        "asset_id": "101",
        "symbol": "DOT",
        "decimals": 10
      }
    ]
  }
}
```


## asset transfers

Asset Transfer list

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/assets/transfers' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "asset_id": "1",
    "row": 10,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/assets/transfers`

### Payload

| Name            | Type      | Require               |
|-----------------|-----------|-----------------------|
| row             | int       | yes                   |
| page            | int       | yes                   |
| asset_id        | string    | yes                   |
| address         | string    | no                    |
| extrinsic_index | string    | no                    |
| block_range     | string    | no                    |
| direction       | string    | no(all sent received) |
| min_amount      | string    | no                    |
| max_amount      | string    | no                    |
| success         | bool      | no                    |
| after_id        | array int | no                    |
| order           | string    | no (asc desc)         |

**tip**: For performance & security considerations, only the first 10000 results can use row & page. If you need to get
more data, you can use `after_id`, params `after_id` is the last record `block_num` && `event_idx`. For example: You can
use `[3783422,2]` to get the data after block num is 3783422 and event_idx is 2

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1648457279,
  "data": {
    "count": 1,
    "transfers": [
      {
        "from": "CtsavRLysRcGpJiaUrnMS48PYoE3X1bXAheaLJ7kTMs3Wcc",
        "to": "F3opxRUwkBj1LqjZ7DyiHCRh9Z4zVPLaVjoxfD5ddbip8mt",
        "extrinsic_index": "1948098-2",
        "success": true,
        "hash": "0xbbb0553d59a55266a2cd062a9d9861df46cff32d199237d1cc1c324846740351",
        "block_num": 1948098,
        "block_timestamp": 1682555502,
        "module": "assets",
        "amount": "11",
        "amount_v2": "11000000",
        "usd_amount": "0",
        "fee": "55029659",
        "nonce": 12,
        "asset_symbol": "USDR",
        "asset_unique_id": "standard_assets/1984",
        "asset_type": "assets",
        "from_account_display": {
          "address": "CtsavRLysRcGpJiaUrnMS48PYoE3X1bXAheaLJ7kTMs3Wcc"
        },
        "to_account_display": {
          "address": "F3opxRUwkBj1LqjZ7DyiHCRh9Z4zVPLaVjoxfD5ddbip8mt",
          "display": "modlPotStake"
        },
        "event_idx": 4
      }
    ]
  }
}

```
