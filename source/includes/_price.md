# Price API

## price

Historical price query

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/open/price' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "time": 1665107
  }'
```

### Request URL

`POST /api/open/price`

### Payload

| Parameter | Type   | Require | Default | Description                                  |
|-----------|--------|---------|---------|----------------------------------------------|
| base      | string | no      |         |                                              |
| quote     | string | no      |         | Quote Currency, USD or current network token |
| time      | int    | yes     |         | unix timestamp or block num                  |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1593479990,
    "data": {
        "price": "5.9032161816",
        "time": 1593391878,
        "height": 479676,
        "records": [
            {
                "price": "5.9032161816",
                "height": 479676,
                "time": 1593391878
            }
        ]
    }
}
```


## price-converter

The conversion calculator returns the amount of the target currency base on the amount of source currency and historical price

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/open/price_converter' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "time":594309,
    "value":1000,
    "from":"USD",
    "quote":"DOT"
  }'
```

### Request URL

`POST /api/open/price_converter`

### Payload

| Parameter | Type    | Require | Default | Description                                  |
|-----------|---------|---------|---------|----------------------------------------------|
| value     | decimal | yes     |         | currency amount to convert                   |
| from      | string  | yes     |         | Base Currency, USD or current network token  |
| quote     | string  | yes     |         | Quote Currency, USD or current network token |
| time      | int     | no      |         | unix timestamp or block num                  |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1593479990,
    "data": {
        "output": "37.606618692359901",
        "price": {
            "price": "5.9032161816",
            "time": 1593391878,
            "height": 479676,
            "records": [
                {
                    "price": "5.9032161816",
                    "height": 479676,
                    "time": 1593391878
                }
            ]
        }
    }
}
```


## price-history

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/price/history' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "start": "2019-07-04",
    "end": "2020-07-05"
  }'
```

### Request URL

`POST /api/scan/price/history`

### Payload

| Name     | Type             | Require |
|----------|------------------|---------|
| start    | Date(2019-07-04) | yes     |
| end      | Date(2019-07-04) | yes     |
| currency | string           | no      |

> Example Response

```json

{
    "code": 0,
    "message": "Success",
    "generated_at": 1628587129,
    "data": {
        "average": "153.1241241",
        "ema7_average": "0",
        "list": [
            {
                "feed_at": 1594857864,
                "price": "152.42365362"
            }       
        ]
    }
}
```

## currencies

List of currencies that support price query and conversion

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/open/currencies' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' 
```

### Request URL

`POST /api/open/currencies`

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1593479990,
    "data": {
        "currencies": [
            "DOT/USD"
        ]
    }
}
```
