# Contracts API

## Contracts-meta

```shell
curl -X POST 'https://shibuya.api.subscan.io/api/scan/contracts/meta' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/contracts/meta`

### Payload

| Name        | Type   | Require | Description          |
|-------------|--------|---------|----------------------|
| address     | string | yes     | h160 or ss58 address |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1679557092,
  "data": {
    "contract_count": 2,
    "contract_verified_count": 0,
    "transaction_count": 5
  }
}
```

## Contracts-transactions

```shell
curl -X POST 'https://shibuya.api.subscan.io/api/scan/contracts/transactions' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/contracts/transactions`

### Payload

| Name        | Type   | Require | Description            |
|-------------|--------|---------|------------------------|
| address     | string | no      | ss58 address           |
| contract    | string | no      | ss58 address           |
| result      | bool   | no      | exec success or failed |
| block_range | string | no      |                        | 
| row         | int    | yes     |                        |
| page        | int    | yes     |                        |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1679557241,
  "data": {
    "count": 1,
    "list": [
      {
        "extrinsic_index": "3344332-2",
        "contract_address": {
          "address": "YQ7TnG5P753J5jA9idHHEThdGHLeMXquPPkQfyfHzwxTWMM"
        },
        "account_display": {
          "address": "ajYMsCKsEAhEvHpeA4XqsfiA9v1CdzZPrCfS6pEfeGHW9j8"
        },
        "block_timestamp": 1678170540,
        "success": true
      }
    ]
  }
}
```

## Contracts-list

```shell
curl -X POST 'https://shibuya.api.subscan.io/api/scan/contracts/list' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/contracts/list`

### Payload

| Name        | Type   | Require | Description                   |
|-------------|--------|---------|-------------------------------|
| row         | int    | yes     |                               |
| page        | int    | yes     |                               |
| order       | string | no      | desc or asc                   |
| order_field | string | no      | verify_time,transaction_count |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1679558148,
  "data": {
    "count": 1,
    "list": [
      {
        "contract_display": {
          "address": "WbmwzcQQ7Ksjjv2CRFq45kwsnvnA2x1XDcu53B8wE5TYzSv"
        },
        "owner_display": {
          "address": "XLoLJBQoMPHMLXYhdFobSpH5GujRoUH8d1sUtaEtoBG7zaS"
        },
        "transaction_count": 0,
        "verify_time": 0,
        "balance": "187000000000"
      }
    ]
  }
}
```

## Contracts-info

```shell
curl -X POST 'https://shibuya.api.subscan.io/api/scan/contracts/info' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "contract": "YQ7TnG5P753J5jA9idHHEThdGHLeMXquPPkQfyfHzwxTWMM"
  }'
```

### Request URL

`POST /api/scan/contracts/info`

### Payload

| Name     | Type   | Require | Description  |
|----------|--------|---------|--------------|
| contract | string | yes     | ss58 address |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1679561287,
  "data": {
    "contract_display": {
      "address": "YQ7TnG5P753J5jA9idHHEThdGHLeMXquPPkQfyfHzwxTWMM"
    },
    "owner_display": {
      "address": "ajYMsCKsEAhEvHpeA4XqsfiA9v1CdzZPrCfS6pEfeGHW9j8"
    },
    "deposit": "0",
    "transaction_count": 3,
    "verify_time": 0,
    "balance": "0.000000173",
    "code_hash": "0xf43f22075f6c49ffa9f861c680f895f71cd04767ee539708c8371b7a063e8c46",
    "code": "....",
    "salt": "0x6405b22f",
    "input_data": "0x9bae9d5e00e1f505000000000000000000000000"
  }
}
```

## Contracts-events

```shell
curl -X POST 'https://shibuya.api.subscan.io/api/scan/contracts/events' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "contract": "YQ7TnG5P753J5jA9idHHEThdGHLeMXquPPkQfyfHzwxTWMM",
    "row:1,
    "page":0
  }'
```

### Request URL

`POST /api/scan/contracts/events`

### Payload

| Name            | Type   | Require | Description  |
|-----------------|--------|---------|--------------|
| row             | int    | yes     |              |
| page            | int    | yes     |              |
| contract        | int    | yes     | ss58 address |
| extrinsic_index | string | no      |              |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1679561395,
  "data": {
    "count": 2,
    "list": [
      {
        "contract_address": "6ceba22ac458402cf9c1f055d51f0b901be2d32ded222c5607b0d316a758aaaf",
        "extrinsic_index": "3344332-2",
        "data": "0x0001d43593c715fdd31c61141abd04a99fd6822c8558854ccde39a5684e7a56da27d018eaf04151687736326c9fea17e25fc5287613693c912909cb226aa4794f26a4864000000000000000000000000000000",
        "block_timestamp": 0
      },
      {
        "contract_address": "6ceba22ac458402cf9c1f055d51f0b901be2d32ded222c5607b0d316a758aaaf",
        "extrinsic_index": "3338484-5",
        "data": "0x000001d43593c715fdd31c61141abd04a99fd6822c8558854ccde39a5684e7a56da27d00e1f505000000000000000000000000",
        "block_timestamp": 0
      }
    ]
  }
}
```

## Contracts-timeline

```shell
curl -X POST 'https://shibuya.api.subscan.io/api/scan/contracts/timeline' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "contract": "YQ7TnG5P753J5jA9idHHEThdGHLeMXquPPkQfyfHzwxTWMM"
  }'
```

### Request URL

`POST /api/scan/contracts/timeline`

### Payload

| Name            | Type   | Require | Description  |
|-----------------|--------|---------|--------------|
| contract        | int    | yes     | ss58 address |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1679561521,
  "data": {
    "list": [
      {
        "action": "Instantiated",
        "event_index": "3437295-14",
        "extrinsic_index": "3437295-2",
        "block_timestamp": 1679561521
      }
    ]
  }
}
```