# Uniques

## Uniques

Uniques list

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/uniques/uniques' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/uniques/uniques`

### Payload

| Name          | Type   | Require               |
|---------------|--------|-----------------------|
| row           | int    | yes                   |
| page          | int    | yes                   |
| search        | string | no(fuzzy search name) |
| collection_id | int    | no                    |

> Example Response

```json

{
  "code": 0,
  "message": "Success",
  "generated_at": 1692158274,
  "data": {
    "count": 1,
    "list": [
      {
        "collection_id": "99",
        "owner": {
          "address": "D3iNikJw3cPq6SasyQCy3k4Y77ZeecgdweTWoSegomHznG3"
        },
        "items": 1,
        "holders": 1,
        "collection_name": "test for ref 99"
      }
    ]
  }
}
```

## unique

unique info

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/uniques/unique' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "collection_id": 1
  }'
```

### Request URL

`POST /api/scan/uniques/unique`

### Payload

| Name          | Type | Require |
|---------------|------|---------|
| collection_id | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1692165007,
  "data": {
    "collection_id": "99",
    "data": "ipfs://ipfs/bafkreibbymq2qf3fiv3hczas4omk6u2guvmn2d52ud35mmjp6viqxvv554",
    "owner": {
      "address": "D3iNikJw3cPq6SasyQCy3k4Y77ZeecgdweTWoSegomHznG3"
    },
    "issuer": {
      "address": "D3iNikJw3cPq6SasyQCy3k4Y77ZeecgdweTWoSegomHznG3"
    },
    "admin": {
      "address": "D3iNikJw3cPq6SasyQCy3k4Y77ZeecgdweTWoSegomHznG3"
    },
    "freezer": {
      "address": "D3iNikJw3cPq6SasyQCy3k4Y77ZeecgdweTWoSegomHznG3"
    },
    "total_supply": 0,
    "items": 1,
    "is_frozen": false,
    "is_destroyed": false,
    "holders": 1,
    "unique_id": "standard_uniques/99",
    "attributes": null,
    "metadata": {
      "description": "Test Description",
      "name": "test for ref 99"
    }
  }
}
```

## unique-holders

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/uniques/unique/holders' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "collection_id": 1,
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/uniques/unique/holders`

### Payload

| Name          | Type | Require |
|---------------|------|---------|
| collection_id | int  | yes     |
| row           | int  | yes     |
| page          | int  | no      |

> Example Response

```json

{
  "code": 0,
  "message": "Success",
  "generated_at": 1692165111,
  "data": {
    "count": 0,
    "list": [
      {
        "holder": {
          "address": "FF4KRpru9a1r2nfWeLmZRk6N8z165btsWYaWvqaVgR6qVic"
        },
        "balance": 1
      }
    ]
  }
}
```

## account-uniques-balance

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/uniques/account/balances' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "HyBryanRsB1GGKa9ZfqvRc3XpTDipYyRvxNNyZYfWFcenhd"
  }'
```

### Request URL

`POST /api/scan/uniques/account/balances`

### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1692165182,
  "data": [
    {
      "collection_id": "1234123",
      "balance": "1",
      "symbol": ""
    }
  ]
}
```

## uniques-activities

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/uniques/activities' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "collection_id": 20,
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/uniques/activities`

### Payload

| Name          | Type | Require |
|---------------|------|---------|
| collection_id | int  | yes     |
| item_id       | int  | no      |
| row           | int  | yes     |
| page          | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1692165513,
  "data": {
    "count": 24,
    "list": [
      {
        "event_index": "4013551-73",
        "extrinsic_index": "4013551-2",
        "block_num": 4013551,
        "collection_id": "99",
        "block_timestamp": 1678084410,
        "module_id": "uniques",
        "event_id": "AttributeSet",
        "item_id": 143
      }
    ]
  }
}
```


## uniques-list-all

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/uniques/all' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/uniques/all`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1692158493,
  "data": {
    "list": [
      {
        "collection_id": "1",
        "metadata": {}
      }
    ]
  }
}
```

## uniques-items

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/uniques/unique/items' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "collection_id": 20,
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/uniques/unique/items`

### Payload

| Name          | Type   | Require |
|---------------|--------|---------|
| collection_id | int    | no      |
| row           | int    | yes     |
| page          | int    | no      |
| owner         | string | no      |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1692165960,
  "data": {
    "count": 1,
    "list": [
      {
        "item_id": 143,
        "metadata": {},
        "owner": {
          "address": "FF4KRpru9a1r2nfWeLmZRk6N8z165btsWYaWvqaVgR6qVic"
        }
      }
    ]
  }
}
```

## uniques-item-detail

```shell
curl -X POST 'https://statemine.api.subscan.io/api/scan/uniques/unique/item' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "collection_id": 20,
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/uniques/unique/item`

### Payload

| Name          | Type | Require |
|---------------|------|---------|
| collection_id | int  | yes     |
| item_id       | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1692166063,
  "data": {
    "collection_id": "99",
    "holder": "0x7603df59789b7e57153ab9fab5615620d3ef95cf7843c106b726ea5792ac075e",
    "item_id": 143,
    "is_frozen": false,
    "data": "ipfs://ipfs/bafkreibgf57g6lkwbniu7z5wshucieq5sf3umniluuynwf6v2zn2xvdoau",
    "metadata": {},
    "attributes": [
      {
        "key": "name",
        "col1": "Common",
        "col2": "6669999990"
      }
    ]
  }
}
```