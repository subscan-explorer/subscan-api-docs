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


## now

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/now' \
--header 'Content-Type: application/json' 
```

### URL Request

`POST /api/now`


> Example Response

```json
    {
        "code": 0,
        "message": "success",
        "ttl": 1,
        "data": 1559545576
    }
```

## metadata

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/metadata' \
--header 'Content-Type: application/json' 
```

### URL Request

`POST /api/scan/metadata`

> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "blockNum": "1825213",
            "count_event": "39706",
            "count_extrinsic": "39016",
            "count_signed_extrinsic": "94"
        }
    }
```

## blocks

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/blocks' \
--header 'Content-Type: application/json' \
--data-raw '{
	"row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/blocks`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |

> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "blocks": [
                {
                    "id": 21286,
                    "block_num": 1825212,
                    "created_at": "2019-06-18T18:19:22+08:00",
                    "hash": "0x0b2f52c4b744df62ea93724e15bcdce85bbcf8687c1ca00121194895f8afce8d",
                    "parent_hash": "0xc06ccdc2ae060b686620f95649ad7fa8025ae2d9e77eda389b8937373d12ef98",
                    "state_root": "0xfa05f4fd97e256596605fabb609b399ce994371b17a6aa6d8989d4c3045047c7",
                    "extrinsics_root": "0x3a4e596ab65e724f1a38d6eaecd0404c2d18ed8ee3d273dcc1ff949f3bbf1a13",
                    "logs": "[\"0x046175726121017174810f00000000d393eca3bf848b7f459abe58ea9e8c555eafbfe3f46c65d3a02b103b157cfa2a8305dd0c274c1a492718ad28cd6f5a86d196ca3916980bbda71012047fb95904\"]",
                    "extrinsics": "[\"0x01000003a6ba085d\",\"0x010d0000\"]",
                    "decode_extrinsics": "[{\"valueRaw\": \"010000\", \"extrinsic_length\": null, \"version_info\": \"01\", \"call_code\": \"0000\", \"call_module_function\": \"set\", \"call_module\": \"timestamp\", \"params\": [{\"name\": \"now\", \"type\": \"Compact<Moment>\", \"value\": \"2019-06-18T10:19:18\", \"valueRaw\": \"03a6ba085d\"}]}, {\"valueRaw\": \"010d00\", \"extrinsic_length\": null, \"version_info\": \"01\", \"call_code\": \"0d00\", \"call_module_function\": \"set_heads\", \"call_module\": \"parachains\", \"params\": [{\"name\": \"heads\", \"type\": \"Vec<AttestedCandidate>\", \"value\": [], \"valueRaw\": \"\"}]}]",
                    "event": "0x080000000000000000010000000000",
                    "decode_event": "[{\"phase\": 0, \"extrinsic_idx\": 0, \"type\": \"0000\", \"module_id\": \"system\", \"event_id\": \"ExtrinsicSuccess\", \"params\": [], \"event_idx\": 0}, {\"phase\": 0, \"extrinsic_idx\": 1, \"type\": \"0000\", \"module_id\": \"system\", \"event_id\": \"ExtrinsicSuccess\", \"params\": [], \"event_idx\": 1}]"
                }
            ],
            "count": 21215
        }
    }
```

## block

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/block' \
--header 'Content-Type: application/json' \
--data-raw '{
    "block_hash": "0x68a27df5a52ff2251df2cc8368f7dcefb305a13bb3d89b65c8fb070f23877f2c"
}'
```

### URL Request

`POST /api/scan/block`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| block_num | int | no     |
| block_hash| string | no     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "block_num": 1763772,
            "created_at": "2019-06-14T11:40:35+08:00",
            "hash": "0x953e762c5bda331f4887958a38936cef5e51d48849238aafc975c2948f56917d",
            "parent_hash": "0x738f3334448f53cd6818ad4c2b61a8be9920438dcf008c6db91a2b65cebea86c",
            "state_root": "0xea541acde43379121972712be76e9e43f328882b54c3814ec0b4a94895a87ade",
            "extrinsics_root": "0x9aa30a3b0b2c237fa515f0f30b2d53bf6388b3b116bf0f3ecf98e9450f0d2c4e",
            "extrinsics": [
                {
                    "extrinsic_index": "",
                    "value_raw": "",
                    "extrinsic_length": "",
                    "version_info": "01",
                    "call_code": "0000",
                    "call_module_function": "set",
                    "call_module": "set",
                    "params": "[{\"name\":\"now\",\"type\":\"Compact\\u003cMoment\\u003e\",\"value\":\"2019-06-14T03:40:30\",\"valueRaw\":\"032e17035d\"}]",
                    "account_length": "",
                    "account_id": "",
                    "account_index": "",
                    "signature": "",
                    "nonce": 0,
                    "era": "",
                    "extrinsic_hash": "",
                    "success": false
                }
            ],
            "events": [
                {
                    "event_index": "",
                    "phase": 0,
                    "extrinsic_idx": 0,
                    "type": "0000",
                    "module_id": "system",
                    "event_id": "ExtrinsicSuccess",
                    "params": "[]",
                    "event_idx": 0
                }
            ]
        }
    }
```

## extrinsics

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/extrinsics' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/extrinsics`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| signed| string | no     |
| address| string | no     |
| module| string | no     |
| call| string | no     |

> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 613,
            "extrinsics": [
                {
                    "block_timestamp": 0,
                    "block_num": 71009,
                    "extrinsic_index": "71009-2",
                    "value_raw": "",
                    "extrinsic_length": "",
                    "version_info": "81",
                    "call_code": "0a00",
                    "call_module_function": "bond",
                    "call_module": "staking",
                    "params": "[{\"name\":\"controller\",\"type\":\"Address\",\"value\":\"ceeb8cf9ce7c6c23fc2a70d861eac4e6e94214f6db1063cb1279f5262b99b41f\",\"valueRaw\":\"ffceeb8cf9ce7c6c23fc2a70d861eac4e6e94214f6db1063cb1279f5262b99b41f\"},{\"name\":\"value\",\"type\":\"Compact\\u003cBalanceOf\\u003e\",\"value\":10,\"valueRaw\":\"28\"},{\"name\":\"payee\",\"type\":\"RewardDestination\",\"value\":\"Staked\",\"valueRaw\":\"00\"}]",
                    "account_length": "ff",
                    "account_id": "6caf778f29c84796e5dcba9122fcd4ca838d9caffd496e140f831f9faa80695c",
                    "account_index": "",
                    "signature": "9689cf2a20f670d1b3b100d3a8cc7f8f01fa7177835d4985179272908508f46c489341a1cb71c9e03402a2f6866cb22aed40fef87832500c1e1cb2b885fccc08",
                    "nonce": 8,
                    "era": "00",
                    "extrinsic_hash": "0xb20a86ebeb3f59c27bec60d4bcce4cc2a0ca029e5ccff64f25779ad8562a8ea3",
                    "success": true
                }
            ]
        }
    }
```

## extrinsic

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/extrinsic' \
--header 'Content-Type: application/json' \
--data-raw '{
    "extrinsic_index": "820-2"
}'
```

### URL Request

`POST /api/scan/extrinsic`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| extrinsic_index | string | no     |
| hash| string | no     |

> Example Response

```json
    
    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "block_timestamp": 0,
            "block_num": 820,
            "extrinsic_index": "820-2",
            "call_module_function": "transfer",
            "call_module": "balances",
            "account_id": "5GrwvaEF5zXb26Fz9rcQpDWS57CtERHpNehXCPcNoHGKutQY",
            "signature": "522d0e61a3a3bfa1f0584d999af4cb16d0ad9b5390324a5ecbb80cceb11093694d8629276dc8c41de032ada9212cb499f1f8f4ba4a5784cad8c3f58db65ada06",
            "nonce": 0,
            "extrinsic_hash": "0x8d2ad11ee3cbd0f58286a2d67739db4b7d10210d394bb8ca7a1168006fcb41ca",
            "success": false,
            "params": [
                {
                    "name": "dest",
                    "type": "Address",
                    "value": "1486518478c79befe09ffe69dc1eb8cb862e29ee013097b021fafcb74642127b",
                    "valueRaw": "ff1486518478c79befe09ffe69dc1eb8cb862e29ee013097b021fafcb74642127b"
                },
                {
                    "name": "value",
                    "type": "Compact<Balance>",
                    "value": 100000,
                    "valueRaw": "821a0600"
                }
            ],
            "transfer": {
                "from": "5GrwvaEF5zXb26Fz9rcQpDWS57CtERHpNehXCPcNoHGKutQY",
                "to": "5CXciU5Pamk9z67KFiqG1r8HZKqGLYKJLCdXLQjVfcPU42KM",
                "module": "balances",
                "amount": "0.0001",
                "hash": "0x8d2ad11ee3cbd0f58286a2d67739db4b7d10210d394bb8ca7a1168006fcb41ca"
            },
            "event": {
                "event_index": "820-2",
                "block_num": 820,
                "phase": 0,
                "extrinsic_idx": 0,
                "type": "0802",
                "module_id": "staking",
                "event_id": "OfflineSlash",
                "params": "[{\"type\":\"AccountId\",\"value\":\"0xfe65717dad0447d715f660a0a58411de509b42e6efb8375f562f58a554d5860e\",\"valueRaw\":\"fe65717dad0447d715f660a0a58411de509b42e6efb8375f562f58a554d5860e\"},{\"type\":\"Balance\",\"value\":0,\"valueRaw\":\"00000000000000000000000000000000\"}]",
                "event_idx": 0
            }
        }
    }
```

## events

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/events' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/events`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| module| string | no |
| call| string | no   |

> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 40084,
            "events": [
                {
                    "event_index": "1825126-2",
                    "phase": 1,
                    "extrinsic_idx": 0,
                    "type": "0300",
                    "module_id": "session",
                    "event_id": "NewSession",
                    "params": "[{\"type\":\"BlockNumber\",\"value\":45356,\"valueRaw\":\"2cb1000000000000\"}]",
                    "event_idx": 2
                }
            ]
        }
    }
```


## event

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/event' \
--header 'Content-Type: application/json' \
--data-raw '{
    "event_index": "2013673-2"
}'
```

### URL Request

`POST /api/scan/event`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| event_index | string | no     |

> Example Response

```json
    
    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 40084,
            "events": [
                {
                    "event_index": "1825126-2",
                    "phase": 1,
                    "extrinsic_idx": 0,
                    "type": "0300",
                    "module_id": "session",
                    "event_id": "NewSession",
                    "params": "[{\"type\":\"BlockNumber\",\"value\":45356,\"valueRaw\":\"2cb1000000000000\"}]",
                    "event_idx": 2
                }
            ]
        }
    }
```

## search

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/search' \
--header 'Content-Type: application/json' \
--data-raw '{
    "key": "15",
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/search`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| key | string | yes     |
| row | int | yes     |
| page | int | yes     |


-----

## daily

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/daily' \
--header 'Content-Type: application/json' \
--data-raw '{
    "start": "2019-07-04",
    "end": "2020-07-04",
    "format": "day",
    "category": "transfer"
}'
```

### URL Request

`POST /api/scan/daily`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| start | Date(2019-07-04) | yes     |
| end | Date(2019-07-04) | yes     |
| format | string | yes(day hour 6hour)     |
| category | string | yes(transfer extrinsic NewAccount ActiveAccount Treasury TreasurySpend Unbond UnbondKton Fee Bonded BondedKton)     |


> Example Response

```json
    
    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "list": [
                {
                "time_utc": "2020-07-17T00:00:00Z",
                "time_hour_utc": "0001-01-01T00:00:00Z",
                "time_six_hour_utc": "0001-01-01T00:00:00Z",
                "total": 0,
                "transfer_amount_total": "0",
                "fee_total": "0",
                "balance_amount_total": "0"
                }
            ]
        }
    }
```


## transfers

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/transfers' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/transfers`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| address| string | no     |

> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 0,
            "extrinsics": [
                {
                    "from": "5GrwvaEF5zXb26Fz9rcQpDWS57CtERHpNehXCPcNoHGKutQY",
                    "to": "5CXciU5Pamk9z67KFiqG1r8HZKqGLYKJLCdXLQjVfcPU42KM",
                    "module": "balances",
                    "amount": "0.0001",
                    "hash": "0x8d2ad11ee3cbd0f58286a2d67739db4b7d10210d394bb8ca7a1168006fcb41ca"
                },
            ]
        }
    }

```

## check-hash

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/check_hash' \
--header 'Content-Type: application/json' \
--data-raw '{
    "hash": "0x859baa1b6d5e4763db6a166f35a8f759fefc38867c6779ef5c65d2d02ae7219a"
}'
```

### URL Request

`POST /api/scan/check_hash`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| hash | string | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "hash_type": "block/extrinsic"
        }
    }
```

## staking-history

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/staking_history' \
--header 'Content-Type: application/json' \
--data-raw '{
     "row": 20,
     "page": 0,
     "address": "165LPQijvZdnmxcuCfxGWvcoSVtoJnCFm1UjjijzsSGGAk22"
}'
```

### URL Request

`POST /api/scan/staking_history`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| address| string | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 1,
            "history": [
                {
                    "Id": 11,
                    "account": "76be05272d7fea694b92d50599b36b315e7c88640f828409433e36b88ca8aa15",
                    "era": 1,
                    "session_id": 60595,
                    "block_timestamp": 12119,
                    "reward_type": "validator",
                    "reward": "85.616438356"
                }
            ]
        }
    }
```


## bond-list

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/wallet/bond_list' \
--header 'Content-Type: application/json' \
--data-raw '{
     "row": 20,
     "page": 1,
     "status":"bonded",
     "address": "165LPQijvZdnmxcuCfxGWvcoSVtoJnCFm1UjjijzsSGGAk22"
}'
```

### URL Request

`POST /api/wallet/bond_list`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| status| string | yes (unbonding,bonded)    |
| address| string | yes     |
| locked| int | no (1,0)    |

-----


## mapping-history

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/wallet/mapping_history' \
--header 'Content-Type: application/json' \
--data-raw '{
     "row": 20,
     "page": 1,
     "address": "165LPQijvZdnmxcuCfxGWvcoSVtoJnCFm1UjjijzsSGGAk22"
}'
```

### URL Request

`POST /api/wallet/mapping_history`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| address| string | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 1,
            "list": [
                {
                    "Id": 1,
                    "account": "62f5d14418553c943dbaf24e3ed90bf811f353c89c5b8e712abe25b037a8f85a",
                    "block_num": 214965,
                    "extrinsic_index": "214965-2",
                    "amount": "8888880000",
                    "mapping_type": "RedeemRing",
                    "from_tx": "0x2807754982b305aaa17a999f454716c49eedea610e1922676fcaac68e0e2da6f"
                }
            ]
        }
    }
```

## accounts

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/accounts' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/accounts`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| order| string | no (desc,asc)    |
| order_field| string | no(balance,kton_balance,kton_balance,kton_lock)     |
| filter| string | no(validator nominator councilMember techcomm registrar)     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 1,
            "list": [
                {
                    "address": "5GNqxG7ULwJfyXuRhb6xjbfpNXffbENdva9cp9wcTVRyw28E",
                    "balance": "0",
                    "kton_balance": "0",
                    "count_extrinsic": 0,
                    "nonce": 0,
                    "account_index": 0,
                    "ring_lock": "1000",
                    "kton_lock": "1000",
                    "power": "0.93700355192"
                }
            ]
        }
    }
```

## token

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/token' \
--header 'Content-Type: application/json' 
```

### URL Request

`POST /api/scan/token`

> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "detail": {
                "KSM": {
                    "symbol": "KSM",
                    "accuracy": 9,
                    "total_issuance": "8201895962466147877",
                    "price": "1.2687",
                    "price_change": "-0.25383755",
                    "available_balance": "803607143930728849",
                    "validator_bonded": "278880238732746895",
                    "nominator_bonded": "2796329138508053383",
                    "locked_balance": "0"
                }
            },
            "token": [
                "KSM"
            ]
        }
    }

```

## validators

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/staking/validators' \
--header 'Content-Type: application/json' \
--data-raw '{
    "key": 20
}'
```

### URL Request

`POST /api/scan/staking/validators`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| key | string | no     |
| order| string | no (desc,asc)    |
| order_field| string | no(rank_validator,bonded_nominators,bonded_owner,count_nominators,validator_prefs_value)     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 21,
            "list": [
                {
                    "rank_nominator": 0,
                    "nominator_stash": "a960aaa0a8c07792120d95ac8831739cbe4290be9b20659a5dfa02e8c26b6329",
                    "bonded": "21027084300",
                    "hash": ""
                },
            ]
        }
    }
    
```

## waiting-validator

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/staking/waiting' \
--header 'Content-Type: application/json' \
--data-raw '{
    "key": 20
}'
```

### URL Request

`POST /api/scan/staking/waiting`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| key | string | no     |
| order| string | no (desc,asc)    |
| order_field| string | no(bonded_nominators,bonded_owner,count_nominators,validator_prefs_value)     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "list": [
                {
                    "rank_validator": 0,
                    "nickname": "",
                    "validator_stash": "d0bd030f88d88e9746e7e684a210d0e1b8b7db04d6a3dad1da047e7200c21e10",
                    "validator_controller": "00126b7ee6fbdefcbe0d727cd78a1eadaa3b1964ea886595a07482c7dc60d61a",
                    "bonded_nominators": "63446148148558871",
                    "bonded_owner": "500000000000",
                    "count_nominators": 24,
                    "validator_prefs_value": 1000000000
                },
            ],
            "count":124
        }
    }
    
```

## voted

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/staking/voted' \
--header 'Content-Type: application/json' \
--data-raw '{
    "address": "15fTw39Ju2jJiHeGe1fJ5DtgugUauy9tr2HZuiRNFwqnGQ1Q"
}'
```

### URL Request

`POST /api/scan/staking/voted`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| order| string | no (desc,asc)    |
| order_field| string | no(bonded_nominators,bonded_owner,count_nominators,validator_prefs_value)     |
| address | string | yes     |

> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "list": [
                {
                    "rank_validator": 0,
                    "nickname": "",
                    "validator_stash": "d0bd030f88d88e9746e7e684a210d0e1b8b7db04d6a3dad1da047e7200c21e10",
                    "validator_controller": "",
                    "bonded_nominators": "62412203064989607",
                    "bonded_owner": "500000000000",
                    "count_nominators": 21,
                    "validator_prefs_value": 1889624577,
                    "bonded": "21027084300"
                },
            ]
        }
    }
    
```

## nominators

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/staking/nominators' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 0,
    "address": "165LPQijvZdnmxcuCfxGWvcoSVtoJnCFm1UjjijzsSGGAk22"
}'
```

### URL Request

`POST /api/scan/staking/nominators`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| address | string | yes     |
| row | int | yes     |
| page| int | yes     |
| order| string | no (desc,asc)    |
| order_field| string | no(rank_nominator,bonded)     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "list": [
                {
                    "rank_validator": 0,
                    "nickname": "",
                    "validator_stash": "d0bd030f88d88e9746e7e684a210d0e1b8b7db04d6a3dad1da047e7200c21e10",
                    "validator_controller": "00126b7ee6fbdefcbe0d727cd78a1eadaa3b1964ea886595a07482c7dc60d61a",
                    "bonded_nominators": "63446148148558871",
                    "bonded_owner": "500000000000",
                    "count_nominators": 24,
                    "validator_prefs_value": 1000000000
                },
            ]
            "count":"1111"
        }
    }
    
    
```

## era-stat

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/staking/era_stat' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 0,
    "address": "165LPQijvZdnmxcuCfxGWvcoSVtoJnCFm1UjjijzsSGGAk22"
}'
```

### URL Request

`POST /api/scan/staking/era_stat`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| address | string | yes     |
| row | int | yes     |
| page| int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 1,
            "list": [
                {
                    "Id": 90,
                    "account": "0cb65fa997169ce0476e1e7c12717d4b2e74f1577ddae002dfb6763f57f2d803",
                    "era": 1,
                    "start_block_num": 1,
                    "end_block_num": 1000000,
                    "reward": "20",
                    "slash": "0",
                    "block_produced": "658988,659064"
                }
            ]
        }
    }
    
```


## validator

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/staking/validator' \
--header 'Content-Type: application/json' \
--data-raw '{
    "stash": "165LPQijvZdnmxcuCfxGWvcoSVtoJnCFm1UjjijzsSGGAk22"
}'
```

### URL Request

`POST /api/scan/staking/validator`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| stash| string | yes(stash address)     |



> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "list": [
                {
                    "rank_validator": 0,
                    "nickname": "",
                    "validator_stash": "d0bd030f88d88e9746e7e684a210d0e1b8b7db04d6a3dad1da047e7200c21e10",
                    "validator_controller": "00126b7ee6fbdefcbe0d727cd78a1eadaa3b1964ea886595a07482c7dc60d61a",
                    "bonded_nominators": "63446148148558871",
                    "bonded_owner": "500000000000",
                    "count_nominators": 24,
                    "validator_prefs_value": 1000000000
                },
            ]
        }
    }
```

## runtime-list

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/runtime/list' \
--header 'Content-Type: application/json' \
--data-raw '{
}'
```

### URL Request

`POST /api/scan/runtime/list`


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "list": [
                {
                    "id": 83,
                    "name": "",
                    "spec_version": 83,
                    "count_call_functions": 56,
                    "count_events": 37,
                    "count_storage_functions": 107,
                    "count_constants": 30,
                    "count_error_type": 5,
                    "modules": "RandomnessCollectiveFlip|System|Babe|Balances|Indices|Kton|Timestamp|Balances|Authorship|GrandpaFinality|ImOnline||Offences|Session|Staking|Contract|Sudo||EthRelay|EthBacking"
                }
            ]
        }
    }
```

## runtime-info

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/runtime/metadata' \
--header 'Content-Type: application/json' \
--data-raw '{
    "spec": 25,
    "module": "Balances"
}'
```

### URL Request

`POST /api/scan/runtime/metadata`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| spec| int | yes   |
| module| string | yes   |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "info": {
                "name": "RandomnessCollectiveFlip",
                "prefix": "RandomnessCollectiveFlip",
                "storage": [
                    {
                        "name": "RandomMaterial",
                        "modifier": "Default",
                        "type": {
                            "origin": "PlainType",
                            "plain_type": "Vec<Hash>"
                        },
                        "fallback": "0x00",
                        "docs": [
                            " Series of block headers from the last 81 blocks that acts as random seed material. This",
                            " is arranged as a ring buffer with `block_number % 81` being the index into the `Vec` of",
                            " the oldest hash."
                        ]
                    }
                ],
                "calls": null,
                "events": null,
                "errors": null
            }
        }
    }
```

## treasury-proposals

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/treasury/proposals' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 0
}'
```

### URL Request

`POST /api/scan/treasury/proposals`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 14,
            "list": [
                {
                    "proposal_id": 13,
                    "created_block": 1032773,
                    "status": "rejected",
                    "reward": "888000000000000",
                    "beneficiary": {
                        "display": "md",
                        "account_index": "49QEo",
                        "address": "J1D51EQN7wq9eBm7VCM9f1sw9Uai2dLKrNDgN9feyomLArg"
                    },
                    "proposer": {
                        "display": "md",
                        "account_index": "49QEo",
                        "address": "J1D51EQN7wq9eBm7VCM9f1sw9Uai2dLKrNDgN9feyomLArg"
                    }
                },
            ]
        }
    }
```


## treasury-proposal

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/treasury/proposal' \
--header 'Content-Type: application/json' \
--data-raw '{
    "proposal_id": 0
}'
```

### URL Request

`POST /api/scan/treasury/proposal`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| proposal_id | int | yes     |


-----

## techcomm-proposals

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/techcomm/proposals' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 0
}'
```

### URL Request

`POST /api/scan/techcomm/proposals`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "info": {
                "proposal_id": 0,
                "created_block": 126165,
                "status": "awarded",
                "reward": "50000000000000",
                "beneficiary": {
                    "display": "",
                    "address": "EaG2CRhJWPb7qmdcJvy3LiWdh26Jreu9Dx6R1rXxPmYXoDk"
                },
                "proposer": {
                    "display": "",
                    "address": "H9eSvWe34vQDJAWckeTHWSqSChRat8bgKHG39GC1fjvEm7y"
                },
                "council": {
                    "proposal_id": 15,
                    "status": "executed",
                    "proposal_hash": "0x59fe7bd64951667f91f36db33077b1ada93b093b363a32cf869d2a833d72ce08",
                    "member_count": 8
                }
            }
        }
    }
```

## techcomm-proposal

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/techcomm/proposal' \
--header 'Content-Type: application/json' \
--data-raw '{
    "proposal_id": 1
}'
```

### URL Request

`POST /api/scan/techcomm/proposal`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| proposal_id | int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "info": {
                "proposal_id": 0,
                "created_block": 55546,
                "updated_block": 55581,
                "aye_votes": 1,
                "nay_votes": 0,
                "status": "executed",
                "proposal_hash": "0x57acaeaa0dc13972555e0bb11cc77a43f619efd92596cc30230a870b23c11a5a",
                "proposer": {
                    "display": "",
                    "account_index": "fyF",
                    "address": "GZcFQ8mMqRwDm6cZQv3QPbNvTeziVBj7myw8sr2RZ1y5teg"
                },
                "member_count": 2,
                "value": "0",
                "call_module": "Democracy",
                "call_name": "fast_track",
                "params": "[{\"name\":\"proposal_hash\",\"type\":\"Hash\",\"value\":\"0x80829e83ab0d47757557e0b40de6c38bf7dbd41f27b91df33887f9a90ae9f32c\",\"valueRaw\":\"80829e83ab0d47757557e0b40de6c38bf7dbd41f27b91df33887f9a90ae9f32c\"},{\"name\":\"voting_period\",\"type\":\"BlockNumber\",\"value\":600,\"valueRaw\":\"58020000\"},{\"name\":\"delay\",\"type\":\"BlockNumber\",\"value\":0,\"valueRaw\":\"00000000\"}]",
                "pre_image": null,
                "votes": [
                    {
                        "account": {
                            "display": "",
                            "account_index": "",
                            "address": "EZGyrhVXXG1juHjjeSUeC6FMXvgkQEXoYCUkmZ4F7RXnDR4"
                        },
                        "passed": true,
                        "extrinsic_hash": "0x782554389418de86b0729e939558395b8b68cd91a88bbd4f19166fa415929b2f"
                    }
                ]
            }
        }
    }
```

## council-proposals

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/council/proposals' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/council/proposals`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 21,
            "list": [
                {
                    "proposal_id": 21,
                    "created_block": 928088,
                    "status": "executed",
                    "member_count": 2,
                    "aye_votes": 1,
                    "nay_votes": 0
                },
            ]
        }
    }
```

## council-proposal

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/council/proposal' \
--header 'Content-Type: application/json' \
--data-raw '{
    "proposal_id": 31
}'
```

### URL Request

`POST /api/scan/council/proposal`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| proposal_id | int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "info": {
                "proposal_id": 0,
                "created_block": 55546,
                "updated_block": 55581,
                "aye_votes": 1,
                "nay_votes": 0,
                "status": "executed",
                "proposal_hash": "0x57acaeaa0dc13972555e0bb11cc77a43f619efd92596cc30230a870b23c11a5a",
                "proposer": {
                    "display": "",
                    "account_index": "fyF",
                    "address": "GZcFQ8mMqRwDm6cZQv3QPbNvTeziVBj7myw8sr2RZ1y5teg"
                },
                "member_count": 2,
                "value": "0",
                "call_module": "Democracy",
                "call_name": "fast_track",
                "params": "[{\"name\":\"proposal_hash\",\"type\":\"Hash\",\"value\":\"0x80829e83ab0d47757557e0b40de6c38bf7dbd41f27b91df33887f9a90ae9f32c\",\"valueRaw\":\"80829e83ab0d47757557e0b40de6c38bf7dbd41f27b91df33887f9a90ae9f32c\"},{\"name\":\"voting_period\",\"type\":\"BlockNumber\",\"value\":600,\"valueRaw\":\"58020000\"},{\"name\":\"delay\",\"type\":\"BlockNumber\",\"value\":0,\"valueRaw\":\"00000000\"}]",
                "pre_image": null,
                "votes": [
                    {
                        "account": {
                            "display": "",
                            "account_index": "",
                            "address": "EZGyrhVXXG1juHjjeSUeC6FMXvgkQEXoYCUkmZ4F7RXnDR4"
                        },
                        "passed": true,
                        "extrinsic_hash": "0x782554389418de86b0729e939558395b8b68cd91a88bbd4f19166fa415929b2f"
                    }
                ]
            }
        }
    }
```

## democracy-referendums

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/democracy/referendums' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/democracy/referendums`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 28,
            "list": [
                {
                    "referendum_index": 29,
                    "created_block": 1209600,
                    "vote_threshold": "SuperMajorityApprove",
                    "status": "started"
                },
            ]
        }
    }
```

## democracy-referendum

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/democracy/referendum' \
--header 'Content-Type: application/json' \
--data-raw '{
    "referendum_index": 0
}'
```

### URL Request

`POST /api/scan/democracy/referendum`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| referendum_index | int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "info": {
                "referendum_index": 1,
                "created_block": 57047,
                "updated_block": 929892,
                "vote_threshold": "SimpleMajority",
                "pre_image": null,
                "value": "0",
                "status": "executed",
                "delay": 7200,
                "end": 59447
            }
        }
    }
```


## democracy-votes

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/democracy/votes' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/democracy/votes`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| referendum_index | int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 713,
            "list": [
                {
                    "account": {
                        "display": "",
                        "account_index": "4wkDy",
                        "address": "HRosoqFwj5XJUiTrFFFqpEzzuqTXWAczPyjm23JVmg9FTYu"
                    },
                    "amount": "323446184712801",
                    "passed": true,
                    "extrinsic_hash": "0xa02acc5a6dba2bb45c04cf8e73f52e1b0c1499587a9b8632d5c677632b8059ec"
                },
            ]
        }
    }
```

## bond-stat

### URL Request

`POST /api/scan/staking/validator/bond_stat`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| stash  | string | yes     |

-----

## reward-slash

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/account/reward_slash' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1,
    "address": "15fTw39Ju2jJiHeGe1fJ5DtgugUauy9tr2HZuiRNFwqnGQ1Q"
}'
```

### URL Request

`POST /api/scan/account/reward_slash`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |
| address  | string | yes     |

> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "count": 2,
            "list": [
                {
                    "event_index": "1780256-3",
                    "block_num": 1780256,
                    "extrinsic_idx": 3,
                    "module_id": "staking",
                    "event_id": "Reward",
                    "params": "[{\"type\":\"AccountId\",\"value\":\"0x6cf4b9ce8d60ca73a35f036cd58afbc52ecea4d691484586967ae1ed45a1c423\",\"valueRaw\":\"6cf4b9ce8d60ca73a35f036cd58afbc52ecea4d691484586967ae1ed45a1c423\"},{\"type\":\"Balance\",\"value\":\"129823168189\",\"valueRaw\":\"bd56103a1e0000000000000000000000\"}]",
                    "extrinsic_hash": "0x7484200dc749d42f6233186081a47fc977b45deec7f95468e0e68d277acf033a",
                    "event_idx": 5
                },
                {
                    "event_index": "1780256-3",
                    "block_num": 1780256,
                    "extrinsic_idx": 3,
                    "module_id": "staking",
                    "event_id": "Reward",
                    "params": "[{\"type\":\"AccountId\",\"value\":\"0x6cf4b9ce8d60ca73a35f036cd58afbc52ecea4d691484586967ae1ed45a1c423\",\"valueRaw\":\"6cf4b9ce8d60ca73a35f036cd58afbc52ecea4d691484586967ae1ed45a1c423\"},{\"type\":\"Balance\",\"value\":\"151198365253\",\"valueRaw\":\"45f61f34230000000000000000000000\"}]",
                    "extrinsic_hash": "0x7484200dc749d42f6233186081a47fc977b45deec7f95468e0e68d277acf033a",
                    "event_idx": 6
                }
            ]
        }
    }


```

## democracy-proposals

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/democracy/proposals' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/democracy/proposals`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |


-----

## democracy-proposal

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/democracy/proposal' \
--header 'Content-Type: application/json' \
--data-raw '{
    "democracy_id": 20
}'
```

### URL Request

`POST /api/scan/democracy/proposal`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| democracy_id | int | yes     |


> Example Response

```json

    {
        "code": 0,
        "message": "Success",
        "ttl": 1,
        "data": {
            "info": {
                "proposal_id": 16,
                "status": "tabled",
                "created_block": 1703162,
                "updated_block": 1713600,
                "proposal_hash": "0xb00289041cd48c82de4decb41d918f4fc97f50bcf3f85ee13776aa08635789b8",
                "value": "1000000000000",
                "call_module": "",
                "call_name": "",
                "params": "null",
                "pre_image": {
                    "hash": "0xb00289041cd48c82de4decb41d918f4fc97f50bcf3f85ee13776aa08635789b8",
                    "created_block": 1703138,
                    "updated_block": 0,
                    "status": "Noted",
                    "amount": "400000000",
                    "call_module": "Staking",
                    "call_name": "set_validator_count",
                    "params": "[{\"name\":\"new\",\"type\":\"Compact\\u003cu32\\u003e\",\"value\":225,\"valueRaw\":\"8503\"}]",
                    "author": {
                        "display": "",
                        "account_index": "",
                        "address": "HhfEhtERhgf6xw35YwJjd7rWH6ayduomRnUMEtqGCtMDYBe"
                    }
                }
            }
        }
    }
```


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

## tips

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/treasury/tips' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 20,
    "page": 1
}'
```

### URL Request

`POST /api/scan/treasury/tips`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| row | int | yes     |
| page| int | yes     |


-----

## tip

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/treasury/tip' \
--header 'Content-Type: application/json' \
--data-raw '{
    "hash": "0x6bf9d1bd28c5e88693a7b86548d9f05ead2813195f4d4771cd44e2b5ed31d181"
}'
```

### URL Request

`POST /api/scan/treasury/tip`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| hash | string | yes     |

-----


## tippers

```shell
curl --location --request POST 'https://polkadot.subscan.io/api/scan/treasury/tippers' \
--header 'Content-Type: application/json' \
--data-raw '{
    "hash": "0x6bf9d1bd28c5e88693a7b86548d9f05ead2813195f4d4771cd44e2b5ed31d181"
}'
```

### URL Request

`POST /api/scan/treasury/tippers`

### payload

| Name          | Type   | Require |
| ------------- | ------ | ------- |
| hash | string | yes     |

-----

