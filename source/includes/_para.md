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
    "auction_count": 1,
    "fund_count": 2,
    "lease_period": 50,
    "ending_period": 20,
    "retirement_period": 20
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
| row     | int    | yes     |
| page    | int    | yes     |
|order   |string  |no| block_num desc|

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": [
    {
      "auction_index": 2,
      "first_slot": 10,
      "last_slot": 12,
      "para_id": 199,
      "bidder_account": "90b5ab205c6974c9ea841be688864633dc9ca8a357843eeacf2314649965fe22",
      "amount": "30000000000000",
      "source": 1,
      "status": 1,
      "block_num": 193,
      "block_timestamp:": 1616599944,
      "extrinsic_index": "193-2"
    },
    {
      "auction_index": 1,
      "first_slot": 1,
      "last_slot": 3,
      "para_id": 199,
      "bidder_account": "6d6f646c70792f6366756e64c700000000000000000000000000000000000000",
      "amount": "5000000000000",
      "source": 2,
      "status": 2,
      "block_num": 81,
      "block_timestamp:": 1616599896,
      "extrinsic_index": "96-0"
    }
  ]
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
| source| int  | no     |    0     |  Enum(1:Slot&#124;2:Crowdloan) |
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
  "data": [
    {
      "fund_index": 199,
      "para_id": 199,
      "auction_index": 1,
      "owner": "d43593c715fdd31c61141abd04a99fd6822c8558854ccde39a5684e7a56da27d",
      "first_slot": 1,
      "last_slot": 3,
      "cap": "50000000000000",
      "end_block": 120,
      "raised": "5000000000000",
      "status": 2,
      "start_block": 76,
      "last_change_block": 80,
      "last_change_timestamp": 1616599892
    },
    {
      "fund_index": 200,
      "para_id": 200,
      "auction_index": 0,
      "owner": "8eaf04151687736326c9fea17e25fc5287613693c912909cb226aa4794f26a48",
      "first_slot": 0,
      "last_slot": 1,
      "cap": "10000000000000",
      "end_block": 50,
      "raised": "500000000000",
      "status": 1,
      "start_block": 15,
      "last_change_block": 25,
      "last_change_timestamp": 1616337852
    }
  ]
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
  "data": [
    {
      "fund_index": 199,
      "who": "8eaf04151687736326c9fea17e25fc5287613693c912909cb226aa4794f26a48",
      "contributed": "50000000000000",
      "block_num": 80,
      "block_timestamp": 1616599892,
      "extrinsic_index": "80-1"
    },
    {
      "fund_index": 200,
      "who": "90b5ab205c6974c9ea841be688864633dc9ca8a357843eeacf2314649965fe22",
      "contributed": "5000000000000",
      "block_num": 120,
      "block_timestamp": 1617792892,
      "extrinsic_index": "120-1"
    }
  ]
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
  "data": [
    {
      "para_id": 199,
      "status": "Parathread",
      "genesis_head": "000000000000000000000000000000000000000000000000000000000000000000e8401a2c15ad8f78a875cfcbe190c738ce6620e57ed78afd784c727d96a5754b03170a2e7597b7b7e3d84c05391d139a62b157e78786d8c082f29dcf4c11131400",
      "manager": "d43593c715fdd31c61141abd04a99fd6822c8558854ccde39a5684e7a56da27d",
      "deposit": "47756200000000"
    }
  ]
}
```

## chain info detail

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/infoDetail' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/parachain/infoDetail`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| para_id      | int  | yes     |         | |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": {
        "para_id": 199,
        "status": "Parathread",
        "genesis_head": "000000000000000000000000000000000000000000000000000000000000000000e8401a2c15ad8f78a875cfcbe190c738ce6620e57ed78afd784c727d96a5754b03170a2e7597b7b7e3d84c05391d139a62b157e78786d8c082f29dcf4c11131400",
        "manager": "d43593c715fdd31c61141abd04a99fd6822c8558854ccde39a5684e7a56da27d",
        "deposit": "47756200000000",
        "validation_code": "0061736d0100000001b2022e60037f7f7f017f60027f7f017f60017f00600...",
        "bids": [
            {
                "auction_index": 1,
                "first_slot": 1,
                "last_slot": 3,
                "para_id": 199,
                "bidder_account": "6d6f646c70792f6366756e64c700000000000000000000000000000000000000",
                "amount": "5000000000000",
                "source": 2,
                "status": 2,
                "block_num": 81,
                "block_timestamp": 1616599896,
                "extrinsic_index": "96-0"
            },
            {
                "auction_index": 1,
                "first_slot": 1,
                "last_slot": 4,
                "para_id": 199,
                "bidder_account": "90b5ab205c6974c9ea841be688864633dc9ca8a357843eeacf2314649965fe22",
                "amount": "30000000000000",
                "source": 1,
                "status": 1,
                "block_num": 93,
                "block_timestamp": 1616599944,
                "extrinsic_index": "93-2"
            }
        ]
    }
}
```
