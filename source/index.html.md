---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell: cURL
  - javascript

includes:
  - errors

search: false

code_clipboard: true
---

# Introduction

Welcome to the Subscan API! You can use our API to access Subscan API endpoints.

We have language bindings in Shell and Javascript! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

This API documentation page was created with [Slate](https://github.com/slatedocs/slate). 

# API

## Get Block

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/block' \
--header 'Content-Type: application/json' \
--data-raw '{
	"block_num": 1665107
}'
```

```javascript
var axios = require('axios');
var data = JSON.stringify({"block_num":1665107});

var config = {
  method: 'post',
  url: 'https://polkadot.subscan.io/api/open/block',
  headers: { 
    'Content-Type': 'application/json'
  },
  data : data
};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
```

> EXAMPLE RESPONSE:

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": {
        "block_num": 1665107,
        "block_timestamp": 1585530840,
        "hash": "0xd83ffde9bae4725beb5da14e6aafc84d085a69a68d80194aa72c8bf7b57ffb9a",
        "parent_hash": "0xa46c83809179453f488664c122e69e0ca3347b8a4143c37407c142939bd364a1",
        "state_root": "0x7ce5e5bb605f41d5a805fa042355e63da5fa7c53759608117359c573e13a521a",
        "extrinsics_root": "0x5ccfbdbeebe416f1f2227342374e3255fd567daa05801c6874475f36e437ede5",
        "spec_version": 1055,
        "validator": "GC8hwHbQ4TdbYJJPDS96G7Uj9bivnW5z56UEkqujjwhQPp5",
        "finalized": false
    }
}
```

### HTTP Request

`POST https://polkadot.subscan.io/api/open/block`

### Query Parameters

Parameter | Type | Require | Default | Description
--------- | ------- | ----------- | ----- | -----
block_num | int | no | |
block_hash | string| no| |

## Get Account

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/account' \
--header 'Content-Type: application/json' \
--data-raw '{
	"address": "E457XaKbj2yTB2URy8N4UuzmyuFRkcdxYs67UvSgVr7HyFb"
}'
```

```javascript
var axios = require('axios');
var data = JSON.stringify({"address":"E457XaKbj2yTB2URy8N4UuzmyuFRkcdxYs67UvSgVr7HyFb"});

var config = {
  method: 'post',
  url: 'https://polkadot.subscan.io/api/open/account',
  headers: { 
    'Content-Type': 'application/json'
  },
  data : data
};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
```

> EXAMPLE RESPONSE:

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": {
        "address": "E457XaKbj2yTB2URy8N4UuzmyuFRkcdxYs67UvSgVr7HyFb",
        "balance": "295.667207686234",
        "lock": "0.887510133275"
    }
}
```

### HTTP Request

`POST https://polkadot.subscan.io/api/open/account`

### Query Parameters

Parameter | Type | Require | Default | Description
--------- | ------- | ----------- | ----- | -----
address | string | yes | |

## Get Account Extrinsics

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/account/extrinsics' \
--header 'Content-Type: application/json' \
--data-raw '{
	"address": "E457XaKbj2yTB2URy8N4UuzmyuFRkcdxYs67UvSgVr7HyFb",
	"row": 20
}'
```

```javascript
var axios = require('axios');
var data = JSON.stringify({"address":"E457XaKbj2yTB2URy8N4UuzmyuFRkcdxYs67UvSgVr7HyFb","row":20});

var config = {
  method: 'post',
  url: 'https://polkadot.subscan.io/api/open/account/extrinsics',
  headers: { 
    'Content-Type': 'application/json'
  },
  data : data
};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
```

> EXAMPLE RESPONSE:

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": {
        "count": 12,
        "extrinsics": [
            {
                "block_num": 1631077,
                "block_timestamp": 1585322166,
                "call_module": "identity",
                "call_module_function": "clear_identity",
                "extrinsic_index": "1631077-2",
                "finalized": false,
                "from": "E457XaKbj2yTB2URy8N4UuzmyuFRkcdxYs67UvSgVr7HyFb",
                "extrinsic_hash": "0xe3187c6b8700adc706973cae0dd30c1b1005b7490ec209ba0a9d7261929a018a",
                "params": [],
                "success": true
            }
        ]
    }
}
```

### HTTP Request

`POST https://polkadot.subscan.io/api/open/account/extrinsics`

### Query Parameters

Parameter | Type | Require | Default | Description
--------- | ------- | ----------- | ----- | -----
address | string | yes | |
row | int | yes | |
page | int | no | |

## Get Extrinsic

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/extrinsic' \
--header 'Content-Type: application/json' \
--data-raw '{
	"hash": "0xef9d91a8b78f8401e81b1d7d03e995626123fc72a9437e5f8f33d82c6ffcb011"
}'
```

```javascript
var axios = require('axios');
var data = JSON.stringify({"hash":"0xef9d91a8b78f8401e81b1d7d03e995626123fc72a9437e5f8f33d82c6ffcb011"});

var config = {
  method: 'post',
  url: 'https://polkadot.subscan.io/api/open/extrinsic',
  headers: { 
    'Content-Type': 'application/json'
  },
  data : data
};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
```

> EXAMPLE RESPONSE:

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": {
        "extrinsic": {
            "block_num": 708556,
            "block_timestamp": 1579536702,
            "call_module": "balances",
            "call_module_function": "transfer",
            "extrinsic_index": "708556-3",
            "event": [
                {
                    "event_index": "708556-3",
                    "block_num": 708556,
                    "extrinsic_idx": 3,
                    "module_id": "treasury",
                    "event_id": "Deposit",
                    "params": [
                        {
                            "type": "Balance",
                            "value": "8000000000",
                            "valueRaw": "0050d6dc010000000000000000000000"
                        }
                    ],
                    "extrinsic_hash": "0xef9d91a8b78f8401e81b1d7d03e995626123fc72a9437e5f8f33d82c6ffcb011",
                    "event_idx": 3,
                    "finalized": false
                },
                {
                    "event_index": "708556-3",
                    "block_num": 708556,
                    "extrinsic_idx": 3,
                    "module_id": "balances",
                    "event_id": "Deposit",
                    "params": [
                        {
                            "type": "AccountId",
                            "value": "0xae6a2559c5da6ebd98821a09c34694dce971dc0740da084915aaa9db23329664",
                            "valueRaw": "ae6a2559c5da6ebd98821a09c34694dce971dc0740da084915aaa9db23329664"
                        },
                        {
                            "type": "Balance",
                            "value": "2000000000",
                            "valueRaw": "00943577000000000000000000000000"
                        }
                    ],
                    "extrinsic_hash": "0xef9d91a8b78f8401e81b1d7d03e995626123fc72a9437e5f8f33d82c6ffcb011",
                    "event_idx": 4,
                    "finalized": false
                },
                {
                    "event_index": "708556-3",
                    "block_num": 708556,
                    "extrinsic_idx": 3,
                    "module_id": "indices",
                    "event_id": "NewAccountIndex",
                    "params": [
                        {
                            "type": "AccountId",
                            "value": "0x7af914682a2d2910eb8c3d63c3f2a19c28d593917fc756decd8b0681d915bb40",
                            "valueRaw": "7af914682a2d2910eb8c3d63c3f2a19c28d593917fc756decd8b0681d915bb40"
                        },
                        {
                            "type": "AccountIndex",
                            "value": 6096,
                            "valueRaw": "d0170000"
                        }
                    ],
                    "extrinsic_hash": "0xef9d91a8b78f8401e81b1d7d03e995626123fc72a9437e5f8f33d82c6ffcb011",
                    "event_idx": 5,
                    "finalized": false
                },
                {
                    "event_index": "708556-3",
                    "block_num": 708556,
                    "extrinsic_idx": 3,
                    "module_id": "balances",
                    "event_id": "NewAccount",
                    "params": [
                        {
                            "type": "AccountId",
                            "value": "0x7af914682a2d2910eb8c3d63c3f2a19c28d593917fc756decd8b0681d915bb40",
                            "valueRaw": "7af914682a2d2910eb8c3d63c3f2a19c28d593917fc756decd8b0681d915bb40"
                        },
                        {
                            "type": "Balance",
                            "value": "1000000000000",
                            "valueRaw": "0010a5d4e80000000000000000000000"
                        }
                    ],
                    "extrinsic_hash": "0xef9d91a8b78f8401e81b1d7d03e995626123fc72a9437e5f8f33d82c6ffcb011",
                    "event_idx": 6,
                    "finalized": false
                },
                {
                    "event_index": "708556-3",
                    "block_num": 708556,
                    "extrinsic_idx": 3,
                    "module_id": "balances",
                    "event_id": "Transfer",
                    "params": [
                        {
                            "type": "AccountId",
                            "value": "0x41669d79846feec20168230ca4ce89b885162cf7d6fcaae53693dcf3f1b7def4",
                            "valueRaw": "41669d79846feec20168230ca4ce89b885162cf7d6fcaae53693dcf3f1b7def4"
                        },
                        {
                            "type": "AccountId",
                            "value": "0x7af914682a2d2910eb8c3d63c3f2a19c28d593917fc756decd8b0681d915bb40",
                            "valueRaw": "7af914682a2d2910eb8c3d63c3f2a19c28d593917fc756decd8b0681d915bb40"
                        },
                        {
                            "type": "Balance",
                            "value": "1000000000000",
                            "valueRaw": "0010a5d4e80000000000000000000000"
                        },
                        {
                            "type": "Balance",
                            "value": "10000000000",
                            "valueRaw": "00e40b54020000000000000000000000"
                        }
                    ],
                    "extrinsic_hash": "0xef9d91a8b78f8401e81b1d7d03e995626123fc72a9437e5f8f33d82c6ffcb011",
                    "event_idx": 7,
                    "finalized": false
                }
            ],
            "finalized": true,
            "from": "E457XaKbj2yTB2URy8N4UuzmyuFRkcdxYs67UvSgVr7HyFb",
            "extrinsic_hash": "0xef9d91a8b78f8401e81b1d7d03e995626123fc72a9437e5f8f33d82c6ffcb011",
            "nonce": 7,
            "params": [
                {
                    "name": "dest",
                    "type": "Address",
                    "value": "7af914682a2d2910eb8c3d63c3f2a19c28d593917fc756decd8b0681d915bb40",
                    "valueRaw": "ff7af914682a2d2910eb8c3d63c3f2a19c28d593917fc756decd8b0681d915bb40"
                },
                {
                    "name": "value",
                    "type": "Compact<Balance>",
                    "value": "1000000000000",
                    "valueRaw": "070010a5d4e8"
                }
            ],
            "signature": "e169f58aa2bd44df0cc49b76f8e5978ef5b29e4ef552f4fb3209954a868e12d560c38277985e832d4cad2a53cb152cfb0d5240c1e4f124696a221ce492c47b02",
            "success": true
        }
    }
}
```

### HTTP Request

`POST https://polkadot.subscan.io/api/open/extrinsic`

### Query Parameters

Parameter | Type | Require | Default | Description
--------- | ------- | ----------- | ----- | -----
hash | string | yes | |

## Get Currencies

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/currencies' \
--header 'Content-Type: application/json' \
--data-raw ''
```

```javascript
var axios = require('axios');
var data = '';

var config = {
  method: 'post',
  url: 'https://polkadot.subscan.io/api/open/currencies',
  headers: { 
    'Content-Type': 'application/json'
  },
  data : data
};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
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

## Get Price

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/open/price' \
--header 'Content-Type: application/json' \
--data-raw '{
	"time": 1665107
}'
```

```javascript
var axios = require('axios');
var data = JSON.stringify({"time":1665107});

var config = {
  method: 'post',
  url: 'https://polkadot.subscan.io/api/open/price',
  headers: { 
    'Content-Type': 'application/json'
  },
  data : data
};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
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


## Get Price Converter

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

```javascript
var axios = require('axios');
var data = JSON.stringify({"time":594309,"value":1000,"from":"USD","quote":"DOT"});

var config = {
  method: 'post',
  url: 'https://polkadot.subscan.io/api/open/price_converter',
  headers: { 
    'Content-Type': 'application/json'
  },
  data : data
};

axios(config)
.then(function (response) {
  console.log(JSON.stringify(response.data));
})
.catch(function (error) {
  console.log(error);
});
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