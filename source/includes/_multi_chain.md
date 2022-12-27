# Multi chain API

## Multi-chain-account

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/multiChain/account' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "0xc6e37086d09ec2048f151d11cdb9f9bbbdb7d685"
  }'
```

### Request URL

`POST /api/scan/multiChain/account`

### Payload

| Name        | Type   | Require | Description          |
|-------------|--------|---------|----------------------|
| address     | string | yes     | h160 or ss58 address |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672110490,
  "data": [
    {
      "network": "moonbeam",
      "symbol": "xcDOT",
      "decimal": 10,
      "price": "0",
      "category": "erc20",
      "balance": "13624665936200192",
      "locked": "0",
      "reserved": "0",
      "bonded": "0"
    },
    {
      "network": "moonbeam",
      "symbol": "xcDOT",
      "decimal": 10,
      "price": "0",
      "category": "asset",
      "balance": "13624665936200192",
      "locked": "0",
      "reserved": "0",
      "bonded": "0"
    },
    {
      "network": "moonbeam",
      "symbol": "GLMR",
      "decimal": 18,
      "price": "0",
      "category": "native",
      "balance": "1000000000",
      "locked": "0",
      "reserved": "0",
      "bonded": "0"
    },
    {
      "network": "darwinia-canary",
      "symbol": "CKTON",
      "decimal": 9,
      "price": "0",
      "category": "builtin",
      "balance": "32346810789236",
      "locked": "0",
      "reserved": "0",
      "bonded": "0"
    }
  ]
}
```



## Multi-chain-identities

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/multiChain/identities' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "0x84f94da49c63596cb9a465b02e65f43ca2315041"
  }'
```

### Request URL

`POST /api/scan/multiChain/identities`

### Payload

| Name        | Type   | Require | Description          |
|-------------|--------|---------|----------------------|
| address     | string | yes     | h160 or ss58 address |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672111201,
  "data": [
    {
      "network": "moonbeam",
      "display": "bitcoinsuisse.com 1",
      "legal": "",
      "web": "https://www.bitcoinsuisse.com",
      "riot": "",
      "email": "helpdesk@bitcoinsuisse.com",
      "twitter": "@BitcoinSuisseAG",
      "judgements": [
        {
          "index": 0,
          "judgement": "Reasonable"
        },
        {
          "index": 2,
          "judgement": "FeePaid"
        }
      ]
    }
  ]
}
```
