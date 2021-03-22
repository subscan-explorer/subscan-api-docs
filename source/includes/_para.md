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

`POST /api/scan/parachain/auction`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| status      | int  | no     |    0     | Enum(1:Started&#124;2:Closed) |


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
      "start_block": 102,
      "end_block": 152,
      "extinguish_block": 0,
      "status": 1
    },
    {
      "auction_index": 1,
      "lease_index": 0,
      "start_block": 30,
      "end_block": 80,
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
| status      | int  | no     |    0     | Enum(1:Reserved&#124;2:WonDeploy&#124;3:Renewal) |
| source| int  | no     |    0     |  Enum(1:Slot&#124;2:Crowdloan) |
| auction_index| int  | no     |    0     |

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
      "bidder_account": "d43593c715fdd31c61141abd04a99fd6822c8558854ccde39a5684e7a56da27d",
      "amount": "5000000000000",
      "source": 1,
      "para_id": 199,
      "status": 1
    },
    {
      "auction_index": 1,
      "first_slot": 1,
      "last_slot": 3,
      "bidder_account": "dd31c61141abd04a000000000000000000000000000000000",
      "amount": "3000000000000",
      "source": 2,
      "para_id": 200,
      "status": 2
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
| status      | int  | no     |    0     | Enum(1:Created&#124;2:Onboard&#124;3:Dissolved) |


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
      "owner": "8eaf04151687736326c9fea17e25fc5287613693c912909cb226aa4794f26a48",
      "first_slot": 1,
      "last_slot": 3,
      "cap": "10000000000000",
      "end_block": 120,
      "raised": "1000000000000",
      "status": 1
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
      "status": 2
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
      "contributed": "6000000000000"
    },
    {
      "fund_index": 200,
      "who": "90b5ab205c6974c9ea841be688864633dc9ca8a357843eeacf2314649965fe22",
      "contributed": "5000000000000"
    }
  ]
}
```
