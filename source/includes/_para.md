# ParaChain API (Unstable)

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
  "generated_at": 1628587129,
  "data": {
    "total_slot_num": 100,
    "proposed_count": 0,
    "approved_count": 0,
    "registered_count": 0,
    "auction_count": 1,
    "auction_index": 0,
    "auction_active": false,
    "fund_count": 2,
    "online_count": 0,
    "upcoming_count": 3,
    "lease_period": 300,
    "ending_period": 50,
    "retirement_period": 0
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
  "generated_at": 1628587129,
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
  "generated_at": 1628587129,
  "data": {
    "auctions": [
      {
        "auction_index": 1,
        "lease_index": 13,
        "start_block": 4171,
        "early_end_block": 4221,
        "end_block": 4271,
        "extinguish_block": 4226,
        "status": 2,
        "winners": [
          {
            "bid_id": "1-14-14",
            "fund_id": "100-1",
            "auction_index": 1,
            "first_period": 14,
            "last_period": 14,
            "para_id": 100,
            "bidder_account": "13UVJyLnbVp77Z2t6r2dFKqddAo3cATaBG6YMuEsWbbmFnpb",
            "bidder_account_display": {
              "address": "13UVJyLnbVp77Z2t6r2dFKqddAo3cATaBG6YMuEsWbbmFnpb",
              "display": "",
              "judgements": null,
              "account_index": "",
              "identity": false,
              "parent": null
            },
            "bid_count": 0,
            "amount": "160000000000000",
            "source": 2,
            "status": 2,
            "block_num": 4221,
            "block_timestamp": 1618484502,
            "extrinsic_index": "4221-0",
            "event_index": "4221-2"
          },
          {
            "bid_id": "1-15-16",
            "fund_id": "",
            "auction_index": 1,
            "first_period": 15,
            "last_period": 16,
            "para_id": 200,
            "bidder_account": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
            "bidder_account_display": {
              "address": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
              "display": "",
              "judgements": null,
              "account_index": "",
              "identity": false,
              "parent": null
            },
            "bid_count": 0,
            "amount": "10000000000000",
            "source": 1,
            "status": 2,
            "block_num": 4184,
            "block_timestamp": 1618484274,
            "extrinsic_index": "4184-3",
            "event_index": "4184-9"
          }
        ]
      }
    ],
    "count": 1
  }
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
| bid_id      | string  | no     |         | |
| fund_id      | string  | no     |         | |
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
|first_period   |int  |no| first period |
|last_period    |int  |no| last period |


> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "bids": [
      {
        "bid_id": "1-13-14",
        "fund_id": "",
        "auction_index": 1,
        "first_period": 13,
        "last_period": 14,
        "para_id": 300,
        "bidder_account": "14Gjs1TD93gnwEBfDMHoCgsuf1s2TVKUP6Z1qKmAZnZ8cW5q",
        "bidder_account_display": {
          "address": "14Gjs1TD93gnwEBfDMHoCgsuf1s2TVKUP6Z1qKmAZnZ8cW5q",
          "display": "",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        },
        "bid_count": 2,
        "amount": "20000000000000",
        "source": 1,
        "status": 3,
        "block_num": 4224,
        "block_timestamp": 1618484520,
        "extrinsic_index": "4224-2",
        "event_index": "4224-4"
      },
      {
        "bid_id": "1-14-14",
        "fund_id": "100-1",
        "auction_index": 1,
        "first_period": 14,
        "last_period": 14,
        "para_id": 100,
        "bidder_account": "13UVJyLnbVp77Z2t6r2dFKqddAo3cATaBG6YMuEsWbbmFnpb",
        "bidder_account_display": {
          "address": "13UVJyLnbVp77Z2t6r2dFKqddAo3cATaBG6YMuEsWbbmFnpb",
          "display": "modlpy/cfundd",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        },
        "bid_count": 1,
        "amount": "160000000000000",
        "source": 2,
        "status": 2,
        "block_num": 4221,
        "block_timestamp": 1618484502,
        "extrinsic_index": "4221-0",
        "event_index": "4221-2"
      },
      {
        "bid_id": "1-15-16",
        "fund_id": "",
        "auction_index": 1,
        "first_period": 15,
        "last_period": 16,
        "para_id": 200,
        "bidder_account": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
        "bidder_account_display": {
          "address": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
          "display": "",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        },
        "bid_count": 1,
        "amount": "10000000000000",
        "source": 1,
        "status": 2,
        "block_num": 4184,
        "block_timestamp": 1618484274,
        "extrinsic_index": "4184-3",
        "event_index": "4184-9"
      }
    ],
    "count": 3
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
| fund_id      | string  | no     |         | |
| bid_id      | string  | no     |         | |
| auction_index      | int  | no     |    0     | |
| para_id      | int  | no     |    0     | |
| from_block      | int  | no     |    0     | start blockNum of range query|
| to_block      | int  | no     |    0     | end blockNum of range query|
| status      | int  | no     |    0     | Enum(1:Created&#124;2:Leased&#124;3:Dissolved) |
| from_history| bool  | no     |    false     |   |
| row     | int    | yes     |
| page    | int    | yes     |
|order   |string  |no| last_change_block desc|
|progress   |bool  |no| Filtering in progress crowdloan|
|first_period   |int  |no| first period |
|last_period    |int    |no| last period |


> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "count": 2,
    "funds": [
      {
        "fund_id": "100-1",
        "bid_id": "1-14-14",
        "para_id": 100,
        "first_period": 14,
        "last_period": 14,
        "auction_index": 1,
        "owner": "15oF4uVJwmo4TdGW7VfQxNLavjCXviqxT9S1MgbjMNHr6Sp5",
        "cap": "1000000000000000",
        "end_block": 4250,
        "raised": "160000000000000",
        "balance": "160000000000000",
        "status": 2,
        "start_block": 4207,
        "start_block_at": 1618484418,
        "last_change_block": 4213,
        "last_change_timestamp": 1618484454,
        "extrinsic_index": "4207-3",
        "owner_display": {
          "address": "15oF4uVJwmo4TdGW7VfQxNLavjCXviqxT9S1MgbjMNHr6Sp5",
          "display": "",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        }
      },
      {
        "fund_id": "300-0",
        "bid_id": "",
        "para_id": 300,
        "first_period": 14,
        "last_period": 14,
        "auction_index": 0,
        "owner": "14Gjs1TD93gnwEBfDMHoCgsuf1s2TVKUP6Z1qKmAZnZ8cW5q",
        "cap": "1000000000000000",
        "end_block": 4250,
        "raised": "0",
        "balance": "0",
        "status": 1,
        "start_block": 4204,
        "start_block_at": 1618484400,
        "last_change_block": 4204,
        "last_change_timestamp": 1618484400,
        "extrinsic_index": "4204-2",
        "owner_display": {
          "address": "14Gjs1TD93gnwEBfDMHoCgsuf1s2TVKUP6Z1qKmAZnZ8cW5q",
          "display": "",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        }
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
| fund_id      | string  | no     |    0     | |
| row     | int    | yes     |
| page    | int    | yes     |
| order   |string  |no| block_num desc|
| from_history   |bool  |no| false|



> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "contributes": [
      {
        "ID": 3,
        "fund_id": "100-1",
        "para_id": 100,
        "who": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
        "who_display": {
          "address": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
          "display": "",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        },
        "contributed": "50000000000000",
        "block_num": 4213,
        "block_timestamp": 1618484454,
        "extrinsic_index": "4213-2",
        "status": 1,
        "memo": ""
      },
      {
        "ID": 2,
        "fund_id": "100-1",
        "para_id": 100,
        "who": "15oF4uVJwmo4TdGW7VfQxNLavjCXviqxT9S1MgbjMNHr6Sp5",
        "who_display": {
          "address": "15oF4uVJwmo4TdGW7VfQxNLavjCXviqxT9S1MgbjMNHr6Sp5",
          "display": "",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        },
        "contributed": "10000000000000",
        "block_num": 4210,
        "block_timestamp": 1618484436,
        "extrinsic_index": "4210-2",
        "status": 1,
        "memo": ""
      },
      {
        "ID": 1,
        "fund_id": "100-1",
        "para_id": 100,
        "who": "14Gjs1TD93gnwEBfDMHoCgsuf1s2TVKUP6Z1qKmAZnZ8cW5q",
        "who_display": {
          "address": "14Gjs1TD93gnwEBfDMHoCgsuf1s2TVKUP6Z1qKmAZnZ8cW5q",
          "display": "",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        },
        "contributed": "100000000000000",
        "block_num": 4208,
        "block_timestamp": 1618484424,
        "extrinsic_index": "4208-2",
        "status": 1,
        "memo": ""
      }
    ],
    "count": 3
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
  "generated_at": 1628587129,
  "data": {
    "chains": [
      {
        "para_id": 200,
        "status": "Parathread",
        "genesis_head": "000000000000000000000000000000000000000000000000000000000000000000a31c4ddd6b9dc3505d91f71c40edd4bef3d96c71b5de17be07912d5c21f4ced603170a2e7597b7b7e3d84c05391d139a62b157e78786d8c082f29dcf4c11131400",
        "validation_code_url": "",
        "manager": "",
        "deposit": "0",
        "validators": "null",
        "source": 1,
        "first_period": 15,
        "last_period": 16,
        "auction_index": 1,
        "manager_display": null,
        "winner": {
          "bid_id": "1-15-16",
          "fund_id": "",
          "auction_index": 1,
          "first_period": 15,
          "last_period": 16,
          "para_id": 200,
          "bidder_account": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
          "bidder_account_display": {
            "address": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
            "display": "",
            "judgements": null,
            "account_index": "",
            "identity": false,
            "parent": null
          },
          "bid_count": 0,
          "amount": "10000000000000",
          "source": 1,
          "status": 2,
          "block_num": 4184,
          "block_timestamp": 1618484274,
          "extrinsic_index": "4184-3",
          "event_index": "4184-9"
        },
        "validators_display": null
      },
      {
        "para_id": 100,
        "status": "Parathread",
        "genesis_head": "524544495330303039fa0972656469732d76657205352e302e37fa0a72656469732d62697473c040fa056374696d65c2b901455efa08757365642d6d656dc2e0130f00fa0c616f662d707265616d626c65c000ff124071982090b917",
        "validation_code_url": "",
        "manager": "",
        "deposit": "0",
        "validators": "null",
        "source": 2,
        "first_period": 14,
        "last_period": 14,
        "auction_index": 1,
        "manager_display": null,
        "winner": {
          "bid_id": "1-14-14",
          "fund_id": "100-1",
          "auction_index": 1,
          "first_period": 14,
          "last_period": 14,
          "para_id": 100,
          "bidder_account": "13UVJyLnbVp77Z2t6r2dFKqddAo3cATaBG6YMuEsWbbmFnpb",
          "bidder_account_display": {
            "address": "13UVJyLnbVp77Z2t6r2dFKqddAo3cATaBG6YMuEsWbbmFnpb",
            "display": "modlpy/cfundd",
            "judgements": null,
            "account_index": "",
            "identity": false,
            "parent": null
          },
          "bid_count": 0,
          "amount": "160000000000000",
          "source": 2,
          "status": 2,
          "block_num": 4221,
          "block_timestamp": 1618484502,
          "extrinsic_index": "4221-0",
          "event_index": "4221-2"
        },
        "validators_display": null
      }
    ],
    "count": 3
  }
}
```


## auction prediction

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/predict' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/parachain/predict`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| auction_index      | int  | no     |    0     | |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": [
    {
      "bid_id": "1-14-14",
      "fund_id": "100-1",
      "auction_index": 1,
      "first_period": 14,
      "last_period": 14,
      "para_id": 100,
      "bidder_account": "13UVJyLnbVp77Z2t6r2dFKqddAo3cATaBG6YMuEsWbbmFnpb",
      "bidder_account_display": {
        "address": "13UVJyLnbVp77Z2t6r2dFKqddAo3cATaBG6YMuEsWbbmFnpb",
        "display": "modlpy/cfundd",
        "judgements": null,
        "account_index": "",
        "identity": false,
        "parent": null
      },
      "bid_count": 1,
      "amount": "160000000000000",
      "source": 2,
      "status": 2,
      "block_num": 4221,
      "block_timestamp": 1618484502,
      "extrinsic_index": "4221-0",
      "event_index": "4221-2"
    },
    {
      "bid_id": "1-15-16",
      "fund_id": "",
      "auction_index": 1,
      "first_period": 15,
      "last_period": 16,
      "para_id": 200,
      "bidder_account": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
      "bidder_account_display": {
        "address": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
        "display": "",
        "judgements": null,
        "account_index": "",
        "identity": false,
        "parent": null
      },
      "bid_count": 1,
      "amount": "10000000000000",
      "source": 1,
      "status": 2,
      "block_num": 4184,
      "block_timestamp": 1618484274,
      "extrinsic_index": "4184-3",
      "event_index": "4184-9"
    }
  ]
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

`POST /api/scan/parachain/list`

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
    "generated_at": 1628587129,
    "data": {
        "chains": [
            {
                "para_id": 1983,
                "status": "Parachain",
                "first_period": 12,
                "last_period": 13,
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

## auction competitors

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/auctionCompetitors' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/parachain/auctionCompetitors`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| auction_index      | int  | no     |    0     | |
| includingFund      | bool  | no     |    false     | |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "1-1": [
      {
        "bid_id": "1-1-1",
        "fund_id": "200-0",
        "auction_index": 1,
        "first_period": 1,
        "last_period": 1,
        "para_id": 200,
        "bidder_account": "5EYCAe5ijiYdg22N9DSmHqUHxzP9hD2ufuM1Gtw5D43829Z8",
        "bidder_account_display": {
          "address": "5EYCAe5ijiYdg22N9DSmHqUHxzP9hD2ufuM1Gtw5D43829Z8",
          "display": "",
          "judgements": null,
          "account_index": "",
          "identity": false,
          "parent": null
        },
        "bid_count": 0,
        "amount": "25000000000000",
        "source": 2,
        "status": 2,
        "block_num": 150,
        "block_timestamp": 1619058966,
        "extrinsic_index": "150-0",
        "event_index": "150-4"
      }
    ]
  }
}
```


## para fund Stat

```shell
curl -X POST 'https://kusama.api.subscan.io/api/scan/parachain/fundStat' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{"start":"2021-06-10","end":"2021-06-30","format":"hour","fund_id":"2004-6"}'
```

### Request URL

`POST /api/scan/parachain/fundStat`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| start   | bool   | Yes     |        | start time(eq:2021-06-10) |
| end     | string | Yes     |        | end   time(eq:2021-06-30) |
| format  | bool   | No      |   day  | hour,day,6hour            |
| fund_id | bool   | Yes     |        | fund id(eq:2004-6 )       |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1628587129,
    "data": {
        "list": [
            {
                "time_utc": "2021-06-10T00:00:00Z",
                "time_hour_utc": "2021-06-10T00:00:00Z",
                "time_six_hour_utc": "2021-06-10T00:00:00Z",
                "total": "0"
            }
        ]
    }
}
```


## best bid

```shell
curl -X POST 'https://kusama.api.subscan.io/api/scan/parachain/bestBid' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{"bid_id":"1-13-20"}'
```

### Request URL

`POST /api/scan/parachain/bestBid`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| bid_id   | string   | Yes     |   no   | bid id |


> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1628587129,
    "data": {
        "bid_id": "1-13-20",
        "fund_id": "2000-1",
        "auction_index": 1,
        "first_period": 13,
        "last_period": 20,
        "para_id": 2000,
        "bidder_account": "6d6f646c70792f6366756e64d007000000000000000000000000000000000000",
        "amount": "491752906100722948",
        "source": 2,
        "status": 3,
        "block_num": 8004479,
        "block_timestamp": 1624237734,
        "extrinsic_index": "8004479-0",
        "event_index": "8004479-2"
    }
}
```
