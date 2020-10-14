# Price

## price

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/price' \
--header 'Content-Type: application/json' \
--data-raw '{
	"time": 1665107
}'
```

> EXAMPLE RESPONSE:

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

### Description

Historical price query

### HTTP Request

`POST https://polkadot.subscan.io/api/open/price`

### Query Parameters

Parameter | Type | Require | Default | Description
--------- | ------- | ----------- | ----- | -----
time | int | yes | | unix timestamp or block num


## price-converter

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/price_converter' \
--header 'Content-Type: application/json' \
--data-raw '{
	"time":594309,
	"value":1000,
	"from":"USD",
	"quote":"DOT"
}'
```

> EXAMPLE RESPONSE:

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
### Description

The conversion calculator returns the amount of the target currency base on the amount of source currency given historical price

### HTTP Request

`POST https://polkadot.subscan.io/api/open/price_converter`

### Query Parameters

Parameter | Type | Require | Default | Description
--------- | ------- | ----------- | ----- | -----
value | decimal | yes | | currency amount to convert
from | string | yes | | Base Currency, USD or current network token
quote | string | yes | | Quote Currency, USD or current network token
time | int | no | | unix timestamp or block num



## price-history

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/price/history' \
--header 'Content-Type: application/json' \
--data-raw '{
    "start": "2019-07-04",
    "end": "2020-07-05"
}'
```

### URL Request

`POST /api/scan/price/history`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| start | Date(2019-07-04) | yes     |
| end | Date(2019-07-04) | yes     |


> Example Response

```json

{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": {
        "list": [
            {
                "feed_at": 1594857864,
                "price": "152.42365362",
                "block_num": 722727
            }       
        ]
    }
}
```

## currencies

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/currencies' \
--header 'Content-Type: application/json' \
--data-raw ''
```

> EXAMPLE RESPONSE:

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

### Description

List of currencies that support price query and conversion

### HTTP Request

`POST https://polkadot.subscan.io/api/open/currencies`
