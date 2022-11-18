# ParaChain API (beta)

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
    "auction_count": 0,
    "auction_active": false,
    "online_count": 31,
    "upcoming_count": 12,
    "lease_period": 0,
    "lease_offset": 0,
    "ending_period": 0,
    "retirement_period": 0,
    "lease_periods_per_slot": 0,
    "total_slot_num": 100
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

| Parameter | Type | Require | Default | Description                                    |
|-----------|------|---------|---------|------------------------------------------------|
| status    | int  | no      | 0       | Enum(1:Proposal&#124;2:Upcoming&#124;3:Online) |

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
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "page": 0,
    "row": 2
  }'
```

### Request URL

`POST /api/scan/parachain/auctions`

### Payload

| Parameter     | Type | Require | Default | Description                   |
|---------------|------|---------|---------|-------------------------------|
| auction_index | int  | no      | 0       |                               |
| status        | int  | no      | 0       | Enum(1:Started&#124;2:Closed) |
| row           | int  | yes     |         |                               |
| page          | int  | yes     |         |                               |

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
              "judgements": [
                {
                  "index": 1,
                  "judgement": ""
                }
              ],
              "account_index": "",
              "identity": false,
              "parent": {
                "address": "",
                "display": "",
                "sub_symbol": "",
                "identity": false
              }
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
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "page": 0,
    "row": 1
  }'
```

### Request URL

`POST /api/scan/parachain/bids`

### Payload

| Parameter     | Type   | Require | Default        | Description                                   |
|---------------|--------|---------|----------------|-----------------------------------------------|
| auction_index | int    | no      | 0              |                                               |
| bid_id        | string | no      |                |                                               |
| fund_id       | string | no      |                |                                               |
| para_id       | int    | no      | 0              |                                               |
| from_block    | int    | no      | 0              | start blockNum of range query                 |
| to_block      | int    | no      | 0              | end blockNum of range query                   |
| status        | int    | no      | 0              | Enum(1:Accepted&#124;2:Leased&#124;3:Renewal) |
| source        | int    | no      | 0              | Enum(1:Slot&#124;2:Crowdloan)                 |
| from_history  | bool   | no      | false          |                                               |
| bidder        | string | no      |                |                                               |
| row           | int    | yes     |                |                                               |
| page          | int    | yes     |                |                                               |
| order         | string | no      | block_num desc |                                               |
| bidder        | string | no      |                |                                               |
| first_period  | int    | no      | first period   |                                               |
| last_period   | int    | no      | last period    |                                               |

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
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
        },
        "bid_count": 2,
        "amount": "20000000000000",
        "source": 1,
        "status": 3,
        "block_num": 4224,
        "block_timestamp": 1618484520,
        "extrinsic_index": "4224-2",
        "event_index": "4224-4"
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
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "page": 0,
    "row": 2
  }'
```

### Request URL

`POST /api/scan/parachain/funds`

### Payload

| Parameter     | Type      | Require | Default                         | Description                                                 |
|---------------|-----------|---------|---------------------------------|-------------------------------------------------------------|
| fund_id       | string    | no      |                                 |                                                             |
| bid_id        | string    | no      |                                 |                                                             |
| auction_index | int       | no      | 0                               |                                                             |
| para_id       | int       | no      | 0                               |                                                             |
| para_ids      | array int | no      | []                              |                                                             |
| from_block    | int       | no      | 0                               | start blockNum of range query                               |
| to_block      | int       | no      | 0                               | end blockNum of range query                                 |
| status        | int       | no      | 0                               | Enum(1:Created&#124;2:Leased&#124;3:Ended&#124;4:Dissolved) |
| statuses      | array int | no      | []                              | Enum(1:Created&#124;2:Leased&#124;3:Ended&#124;4:Dissolved) |
| from_history  | bool      | no      | false                           |                                                             |
| from_history  | bool      | no      | false                           |                                                             |
| owner         | string    | no      |                                 |                                                             |
| page          | int       | yes     |                                 |                                                             |
| order         | string    | no      | last_change_block desc          |                                                             |
| progress      | bool      | no      | Filtering in progress crowdloan |                                                             |
| first_period  | int       | no      | first period                    |                                                             |
| last_period   | int       | no      | last period                     |                                                             |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "count": 1,
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
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
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
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "page": 0,
    "row": 2
  }'
```

### Request URL

`POST /api/scan/parachain/contributes`

### Payload

| Parameter    | Type   | Require | Default        | Description           |
|--------------|--------|---------|----------------|-----------------------|
| fund_id      | string | no      |                |                       |
| para_id      | int    | no      | 0              |                       |
| row          | int    | yes     |                |                       |
| page         | int    | yes     |                |                       |
| order        | string | no      | block_num desc |                       |
| who          | string | no      |                | filter by contributor |
| from_history | bool   | no      | false          |                       |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "contributes": [
      {
        "fund_id": "100-1",
        "para_id": 100,
        "who": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
        "who_display": {
          "address": "14E5nqKAp3oAJcmzgZhUD2RcptBeUBScxKHgJKU4HPNcKVf3",
          "display": "",
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
        },
        "contributed": "50000000000000",
        "contributing": "1",
        "block_num": 4213,
        "block_timestamp": 1618484454,
        "extrinsic_index": "4213-2",
        "event_index": "",
        "status": 1,
        "memo": ""
      }
    ],
    "count": 1
  }
}
```

## fund timeline

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/parachain/fund_timeline' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "fund_id": "2032-15",
    "order": "desc"
  }'
```

### Request URL

`POST /api/scan/parachain/fund_timeline`

### Payload

| Parameter | Type   | Require       | Default | Description |
|-----------|--------|---------------|---------|-------------|
| fund_id   | string | no            |         |             |
| order     | string | no(desc, asc) | desc    |             |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1657182543,
    "data": {
        "count": 1,
        "list": [
            {
                "fund_id": "2032-15",
                "block_num": 8123870,
                "block_timestamp": 1639446774,
                "event_index": "8123870-19",
                "extrinsic_index": "8123870-4",
                "module_name": "crowdloan",
                "event_name": "Created"
            }
        ]
    }
}
```

## chain info

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/info' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "page": 0,
    "row": 2
  }'
```

### Request URL

`POST /api/scan/parachain/info`

### Payload

| Parameter        | Type   | Require | Default | Description                                     |
|------------------|--------|---------|---------|-------------------------------------------------|
| para_id          | int    | no      | 0       |                                                 |
| status           | string | no      | 0       | Enum(Onboarding&#124;Parathread&#124;Parachain) |
| filter_anonymous | bool   | no      | false   |                                                 |
| row              | int    | yes     |         |                                                 |
| page             | int    | yes     |         |                                                 |
| order            | string | no      |         |                                                 |

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
        "validators": ["",""],
        "source": 1,
        "bid_id": "1-14-14",
        "begin_period": 14,
        "first_period": 15,
        "last_period": 16,
        "auction_index": 1,
        "reserved_extrinsic_index": "",
        "manager_display":  {
          "address": "",
          "display": "",
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
        },
        "validators_display": [
          {
            "address": "",
            "display": "",
            "judgements": [
              {
                "index": 1,
                "judgement": ""
              }
            ],
            "account_index": "",
            "identity": false,
            "parent": {
              "address": "",
              "display": "",
              "sub_symbol": "",
              "identity": false
            }
          }
        ],
        "fund_id": "",
        "fund_account": "",
        "fund_account_display":  {
          "address": "",
          "display": "",
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
        }
      }
    ],
    "count": 1
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

| Parameter     | Type | Require | Default | Description |
|---------------|------|---------|---------|-------------|
| auction_index | int  | no      | 0       |             |

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
        "judgements": [
          {
            "index": 1,
            "judgement": ""
          }
        ],
        "account_index": "",
        "identity": false,
        "parent": {
          "address": "",
          "display": "",
          "sub_symbol": "",
          "identity": false
        }
      },
      "bid_count": 1,
      "amount": "160000000000000",
      "source": 2,
      "status": 2,
      "block_num": 4221,
      "block_timestamp": 1618484502,
      "extrinsic_index": "4221-0",
      "event_index": "4221-2"
    }
  ]
}
```

## parachain list

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/list' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "page": 0,
    "row": 2
  }'
```

### Request URL

`POST /api/scan/parachain/list`

### Payload

| Parameter        | Type   | Require | Default | Description                                     |
|------------------|--------|---------|---------|-------------------------------------------------|
| status           | string | no      | 0       | Enum(Onboarding&#124;Parathread&#124;Parachain) |
| filter_anonymous | bool   | no      | false   |                                                 |
| row              | int    | yes     |         |                                                 |
| page             | int    | yes     |         |                                                 |
| order            | string | no      |         |                                                 |

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
                "begin_period": 11,
                "first_period": 12,
                "last_period": 13,
                "manager_display": {
                    "address": "5F2FJzwc8Ch6L5zejKh43DqXXCU3qSxeN8WTd3e3AwTfbCDe",
                    "display": "",
                  "judgements": [
                    {
                      "index": 1,
                      "judgement": ""
                    }
                  ],
                  "account_index": "",
                  "identity": false,
                  "parent": {
                    "address": "",
                    "display": "",
                    "sub_symbol": "",
                    "identity": false
                  }
                },
                "reserved_extrinsic_index": "",
                "fund_id": ""
                "bid_id": "10-11-13"
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

| Parameter     | Type | Require | Default | Description |
|---------------|------|---------|---------|-------------|
| auction_index | int  | no      | 0       |             |
| includingFund | bool | no      | false   |             |

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
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
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

## auction leading blocks

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/parachain/auction_leading_blocks' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{"auction_id": 21}'
```

### Request URL

`POST /api/scan/parachain/auction_leading_blocks`

### Payload

| Parameter  | Type | Require | Default | Description |
|------------|------|---------|---------|-------------|
| auction_id | int  | true    |         |             |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1657851930,
  "data": [{
      "bid_id": "21-9-16",
      "para_id": 2046,
      "fund_id": "",
      "leading_blocks": 31575
    },
    {
      "bid_id": "21-9-16",
      "para_id": 2044,
      "fund_id": "",
      "leading_blocks": 11820
    },
    {
      "bid_id": "21-9-16",
      "para_id": 2045,
      "fund_id": "",
      "leading_blocks": 10608
    },
    {
      "bid_id": "21-9-16",
      "para_id": 2048,
      "fund_id": "",
      "leading_blocks": 5649
    },
    {
      "bid_id": "21-9-16",
      "para_id": 2003,
      "fund_id": "",
      "leading_blocks": 3559
    }
  ]
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

| Parameter | Type   | Require | Default | Description               |
|-----------|--------|---------|---------|---------------------------|
| start     | bool   | Yes     |         | start time(eq:2021-06-10) |
| end       | string | Yes     |         | end   time(eq:2021-06-30) |
| format    | bool   | No      | day     | hour,day,6hour            |
| fund_id   | bool   | Yes     |         | fund id(eq:2004-6 )       |

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

| Parameter | Type   | Require | Default | Description |
|-----------|--------|---------|---------|-------------|
| bid_id    | string | Yes     | no      | bid id      |

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
        "bidder_account_display": {
          "address": "5EYCAe5ijiYdg22N9DSmHqUHxzP9hD2ufuM1Gtw5D43829Z8",
          "display": "",
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
        },
        "bid_count": 0,
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

## account contributions

```shell
curl -X POST 'https://kusama.api.subscan.io/api/scan/account/contributions' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "who": "HxphiPhPEbXaqbjbbUDGdUtLLGq3dV3b4ETTFFqAWbEsttP",
    "row": 100,
    "page": 0,
    "include_total"
}'
```

### Request URL

`POST /api/scan/account/contributions`

### Payload

| Parameter     | Type   | Require | Default | Description     |
|---------------|--------|---------|---------|-----------------|
| who           | string | yes     |         | account address |
| row           | int    | yes     |         |                 |
| page          | int    | yes     |         |                 |
| include_total | bool   | no      | no      | include `total` |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1655277267,
  "data": {
    "count": 1,
    "list": [{
      "fund_id": "2012-53",
      "para_id": 2012,
      "contributed": "200000000000000",
      "block_num": 10573992,
      "block_timestamp": 1639830408,
      "extrinsic_index": "10573992-2",
      "event_index": "10573992-19",
      "status": 1,
      "memo": "",
      "fund_status": 2,
      "fund_event_index": "10683439-25",
      "unlocking_block": 15725400,
      "fund_auction_status": 2
    }],
    "total": "4715000000000000"
  }
}
```

## collators meta

```shell
curl -X POST 'https://astar.api.subscan.io/api/scan/collator/meta'
```

### Request URL

`POST /api/scan/collator/meta`


> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1656556504,
    "data": {
        "desired_candidates": 47,
        "invulnerables": 27,
        "candidates": 37,
        "candidates_total_bond": "0",
        "candidacy_bond": "3200000000000000000000000"
    }
}
```

## collators list

```shell
curl -X POST 'https://astar.api.subscan.io/api/scan/collator/list' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 3,
    "page": 0
}'
```

### Request URL

`POST /api/scan/collator/list`

### Payload

| Parameter     | Type   | Require                                                | Default | Description     |
|---------------|--------|--------------------------------------------------------|---------|-----------------|
| row           | int    | yes                                                    |         |                 |
| page          | int    | yes                                                    |         |                 |
| account       | string | no                                                     |         | account address |
| status        | int    | no(0:ALL 1:Invulnerable 2:Candidate)                   | 0       |                 |
| include_total | bool   | no                                                     | no      | include `total` |
| order         | string | no(desc,asc)                                           |         |                 |
| order_field   | string | no(account,bond,last_change_block,last_authored_block) |         |                 |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1656553024,
  "data": {
    "count": 64,
    "list": [{
      "status": 2,
      "account_display": {
        "address": "VxHuVq48qM8STAEm8G8P2VzRQL6RuEix5jqbfxDXp6rtgrs"
      },
      "bond": "3200000000000000000000000",
      "last_change_block": 1322117,
      "last_authored_block": 1366217
    }, {
      "status": 2,
      "account_display": {
        "address": "W3K8VwY4qqmAUAa3jB5Pbq5Q9zkTgGfdrh6vwyh63BohKX2"
      },
      "bond": "3200000000000000000000000",
      "last_change_block": 1322117,
      "last_authored_block": 1366218
    }, {
      "status": 2,
      "account_display": {
        "address": "W8PzksJcA1Ag82GNvuxT6Ejp4KXqQexNXqysJyuxSvHSmH9"
      },
      "bond": "3200000000000000000000000",
      "last_change_block": 1322117,
      "last_authored_block": 1366219
    }]
  }
}
```

## collator info

```shell
curl -X POST 'https://astar.api.subscan.io/api/scan/collator/info' \
--header 'Content-Type: application/json' \
--data-raw '{
    "account": "VxHuVq48qM8STAEm8G8P2VzRQL6RuEix5jqbfxDXp6rtgrs",
}'
```

### Request URL

`POST /api/scan/collator/info`

### Payload

| Parameter | Type   | Require | Default | Description     |
|-----------|--------|---------|---------|-----------------|
| account   | string | yes     |         | account address |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1656558754,
  "data": {
      "status": 2,
      "account_display": {
          "address": "VxHuVq48qM8STAEm8G8P2VzRQL6RuEix5jqbfxDXp6rtgrs"
      },
      "bond": "3200000000000000000000000",
      "last_change_block": 1322117,
      "last_authored_block": 1366217
  }
}
```

## parachain timeline

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/parachain/timeline' \
--header 'Content-Type: application/json' \
--data-raw '{
    "para_id": 2007,
    "order": "asc"
}'
```

### Request URL

`POST /api/scan/parachain/timeline`

### Payload

| Parameter | Type   | Require      | Default | Description  |
|-----------|--------|--------------|---------|--------------|
| para_id   | int    | yes          |         | parachain id |
| order     | string | no(asc,desc) | desc    |              |

### Statuses

| Module    | Status             | Extra Params |
|-----------|--------------------|--------------|
| registrar | registered         |              |
| registrar | reserved           |              |
| registrar | deregistered       |              |
| crowdloan | created            | fund_id      |
| crowdloan | partially_refunded | fund_id      |
| crowdloan | all_refunded       | fund_id      |
| crowdloan | dissolved          | fund_id      |
| crowdloan | edited             | fund_id      |
| auction   | participated       | auction_id   |
| auction   | won                | auction_id   |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1658303867,
  "data": {
    "count": 2,
    "list": [{
        "para_id": 2007,
        "block_num": 10809400,
        "block_timestamp": 111,
        "event_index": "10809400-2",
        "extrinsic_index": "10809400-0",
        "module": "auctions",
        "status": "participated",
        "params": {
          "auction_id": 20
        }
      },
      {
        "para_id": 2007,
        "block_num": 10882495,
        "block_timestamp": 111,
        "event_index": "10882495-8",
        "extrinsic_index": "10882495-0",
        "module": "auctions",
        "status": "won",
        "params": {
          "auction_id": 20
        }
      }
    ]
  }
}
```
