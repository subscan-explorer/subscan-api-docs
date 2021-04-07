# ParaChain API

## meta


```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/meta' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/parachain/meta`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": {
    "total_slot_num": 100,
    "proposed_count": 0,
    "approved_count": 0,
    "registered_count": 0,
    "auction_count": 2,
    "auction_index": 3,
    "auction_active": false,
    "auction_info": {
      "lease_index": 0,
      "ending_block": 0
    },
    "fund_count": 2,
    "online_count": 0,
    "upcoming_count": 2,
    "lease_period": 14400,
    "ending_period": 50,
    "retirement_period": 3600
  }
}
```


## proposals 

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{
    "status": 3
  }'
```

### Request URL

`POST /api/scan/parachain/proposals`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| status      | int  | no     |    0     | Enum(1:Proposal&#124;2:Upcoming&#124;3:Online) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": {
    "chains": [
      {
        "para_id": 12623,
        "name": "KILT PC1"
      }
    ],
    "count": 1
  }
}
```

## auctions

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/auctions' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/parachain/auctions`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| auction_index      | int  | no     |    0     | |
| status      | int  | no     |    0     | Enum(1:Started&#124;2:Closed) |
| row     | int    | yes     |
| page    | int    | yes     |
|order   |string  |no| auction_index desc|


> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": [
    {
      "auction_index": 2,
      "lease_index": 1,
      "start_block": 92,
      "early_end_block": 102,
      "end_block": 152,
      "extinguish_block": 0,
      "status": 1
    },
    {
      "auction_index": 1,
      "lease_index": 1,
      "start_block": 66,
      "early_end_block": 76,
      "end_block": 96,
      "extinguish_block": 0,
      "status": 2
    }
  ]
}
```

## bids

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/bids' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/parachain/bids`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| auction_index      | int  | no     |    0     | |
| para_id      | int  | no     |    0     | |
| from_block      | int  | no     |    0     | start blockNum of range query|
| to_block      | int  | no     |    0     | end blockNum of range query|
| status      | int  | no     |    0     | Enum(1:Accepted&#124;2:Leased&#124;3:Renewal) |
| source| int  | no     |    0     |  Enum(1:Slot&#124;2:Crowdloan) |
| from_history| bool  | no     |    false     |   |
| bidder| string  | no     |         |   |
| row     | int    | yes     |
| page    | int    | yes     |
|order   |string  |no| block_num desc|

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": {
    "bids": [
      {
        "ID": 16,
        "fund_id": 4,
        "auction_index": 3,
        "first_slot": 4,
        "last_slot": 5,
        "para_id": 200,
        "bidder_account": "13UVJyLnbVp77Z2t6rVmRzJSpcNoPWb3kQ5VSBvRm94eCQ2p",
        "bidder_account_display": {
          "address": "13UVJyLnbVp77Z2t6rVmRzJSpcNoPWb3kQ5VSBvRm94eCQ2p",
          "display": "",
          "judgements": null,
          "parent_display": "",
          "parent": "",
          "account_index": "",
          "identity": false
        },
        "amount": "10000000000000",
        "source": 2,
        "status": 1,
        "block_num": 59039,
        "block_timestamp": 1617036222,
        "extrinsic_index": ""
      }
    ],
    "count": 1
  }
}
```

## funds

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/funds' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/parachain/funds`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| fund_index      | int  | no     |    0     | |
| auction_index      | int  | no     |    0     | |
| para_id      | int  | no     |    0     | |
| from_block      | int  | no     |    0     | start blockNum of range query|
| to_block      | int  | no     |    0     | end blockNum of range query|
| status      | int  | no     |    0     | Enum(1:Created&#124;2:Leased&#124;3:Dissolved) |
| from_history| bool  | no     |    false     |   |
| row     | int    | yes     |
| page    | int    | yes     |
|order   |string  |no| last_change_block desc|



> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": {
    "count": 2,
    "funds": [
      {
        "ID": 4,
        "bid_id": 16,
        "fund_index": 200,
        "first_slot": 4,
        "last_slot": 5,
        "auction_index": 3,
        "para_id": 200,
        "owner": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
        "owner_display": {
          "address": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
          "display": "",
          "judgements": null,
          "parent_display": "",
          "parent": "",
          "account_index": "",
          "identity": false
        },
        "cap": "50000000000000",
        "end_block": 59050,
        "raised": "0",
        "status": 3,
        "start_block": 59015,
        "last_change_block": 59082,
        "last_change_timestamp": 1617036480
      },
      {
        "ID": 1,
        "bid_id": 1,
        "fund_index": 199,
        "first_slot": 0,
        "last_slot": 1,
        "auction_index": 1,
        "para_id": 199,
        "owner": "15oF4uVJwmo4TdGW7VfQxNLavjCXviqxT9S1MgbjMNHr6Sp5",
        "owner_display": {
          "address": "15oF4uVJwmo4TdGW7VfQxNLavjCXviqxT9S1MgbjMNHr6Sp5",
          "display": "",
          "judgements": null,
          "parent_display": "",
          "parent": "",
          "account_index": "",
          "identity": false
        },
        "cap": "50000000000000",
        "end_block": 1450,
        "raised": "0",
        "status": 2,
        "start_block": 1406,
        "last_change_block": 57226,
        "last_change_timestamp": 1617025344
      }
    ]
  }
}
```

## fund contributes

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/contributes' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/parachain/contributes`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| fund_index      | int  | no     |    0     | |
| row     | int    | yes     |
| page    | int    | yes     |
|order   |string  |no| block_num desc|


> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": {
    "contributes": [
      {
        "ID": 2,
        "fund_id": 4,
        "fund_index": 200,
        "who": "14Gjs1TD93gnwEBfDMHoCgsuf1s2TVKUP6Z1qKmAZnZ8cW5q",
        "who_display": {
          "address": "14Gjs1TD93gnwEBfDMHoCgsuf1s2TVKUP6Z1qKmAZnZ8cW5q",
          "display": "",
          "judgements": null,
          "parent_display": "",
          "parent": "",
          "account_index": "",
          "identity": false
        },
        "contributed": "10000000000000",
        "block_num": 59022,
        "block_timestamp": 1617036120,
        "extrinsic_index": "59022-2",
        "status": 2
      },
      {
        "ID": 1,
        "fund_id": 1,
        "fund_index": 199,
        "who": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
        "who_display": {
          "address": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
          "display": "",
          "judgements": null,
          "parent_display": "",
          "parent": "",
          "account_index": "",
          "identity": false
        },
        "contributed": "12000000000000",
        "block_num": 1413,
        "block_timestamp": 1616690466,
        "extrinsic_index": "1413-2",
        "status": 2
      }
    ],
    "count": 2
  }
}
```

## chain info

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/info' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/parachain/info`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| para_id      | int  | no     |    0     | |
| status      | string  | no     |    0     | Enum(Onboarding&#124;Parathread&#124;Parachain) |
| row     | int    | yes     |
| page    | int    | yes     |
|order   |string  |no| |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": 
    {
      "chains": [
        {
          "para_id": 199,
          "status": "Onboarding",
          "genesis_head": "000000000000000000000000000000000000000000000000000000000000000000e8401a2c15ad8f78a875cfcbe190c738ce6620e57ed78afd784c727d96a5754b03170a2e7597b7b7e3d84c05391d139a62b157e78786d8c082f29dcf4c11131400",
          "validation_code_url": "https://subscan.oss-cn-hangzhou.aliyuncs.com/Parachain/wasm/balala/286f0aa57a9611e0061d635a69f1360c0fb98a17d158dab30838ca8d57f9cc4b",
          "manager": "15oF4uVJwmo4TdGW7VfQxNLavjCXviqxT9S1MgbjMNHr6Sp5",
          "manager_display": {
            "address": "15oF4uVJwmo4TdGW7VfQxNLavjCXviqxT9S1MgbjMNHr6Sp5",
            "display": "",
            "judgements": null,
            "parent_display": "",
            "parent": "",
            "account_index": "",
            "identity": false
          },
          "deposit": "0",
          "bids": [
            {
              "ID": 1,
              "fund_id": 1,
              "auction_index": 1,
              "first_slot": 0,
              "last_slot": 1,
              "para_id": 199,
              "bidder_account": "13UVJyLnbVp77Z2t6rVVgxkri7hbvxVB1j8ytFEbJKBuvzFq",
              "bidder_account_display": {
                "address": "13UVJyLnbVp77Z2t6rVVgxkri7hbvxVB1j8ytFEbJKBuvzFq",
                "display": "",
                "judgements": null,
                "parent_display": "",
                "parent": "",
                "account_index": "",
                "identity": false
              },
              "amount": "12000000000000",
              "source": 2,
              "status": 2,
              "block_num": 1478,
              "block_timestamp": 1616690856,
              "extrinsic_index": ""
            }
          ],
          "first_slot": 0,
          "last_slot": 1,
          "source": 2,
          "winner": {
            "ID": 1,
            "fund_id": 1,
            "auction_index": 1,
            "first_slot": 0,
            "last_slot": 1,
            "para_id": 199,
            "bidder_account": "13UVJyLnbVp77Z2t6rVVgxkri7hbvxVB1j8ytFEbJKBuvzFq",
            "bidder_account_display": {
              "address": "13UVJyLnbVp77Z2t6rVVgxkri7hbvxVB1j8ytFEbJKBuvzFq",
              "display": "",
              "judgements": null,
              "parent_display": "",
              "parent": "",
              "account_index": "",
              "identity": false
            },
            "amount": "12000000000000",
            "source": 2,
            "status": 2,
            "block_num": 1478,
            "block_timestamp": 1616690856,
            "extrinsic_index": ""
          },
          "validators": null
        }
      ],
      "count": 1
    }
  
}
```

## parachain list 

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/list' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/parachain/parachain/list`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| status    | string  | no     |    0     | Enum(Onboarding&#124;Parathread&#124;Parachain) |
| row       | int    | yes     |
| page      | int    | yes     |
| order     |string  |no       |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": {
        "chains": [
            {
                "para_id": 1983,
                "status": "Parachain",
                "first_slot": 12,
                "last_slot": 13,
                "manager_display": {
                    "address": "5F2FJzwc8Ch6L5zejKh43DqXXCU3qSxeN8WTd3e3AwTfbCDe",
                    "display": "",
                    "judgements": null,
                    "account_index": "",
                    "identity": false,
                    "parent": null
                }
            }
        ],
        "count": 9
    }
}
```
