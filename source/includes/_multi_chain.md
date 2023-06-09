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


## Multi-chain-price

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/multiChain/price' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/multiChain/price`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672994835,
  "data": {
    "ACA": "0.115916",
    "AIR": "0.01415001",
    "ASTR": "0.03943251",
    "AZERO": "0.833624",
    "BNC": "0.100352",
    "BSX": "0.00009044",
    "CFG": "0.15077",
    "CLV": "0.379878",
    "CRU": "0.617653",
    "CSM": "0.00372808",
    "DBC": "0.00117643",
    "DCK": "0.01502999",
    "DHX": "2.32",
    "DOCK": "0.01502999",
    "DOT": "4.58",
    "EDG": "0.00041186",
    "EFI": "0.072626",
    "EQ": "0.066056",
    "GENS": "0.00074965",
    "GLMR": "0.31665",
    "HDX": "0.02690358",
    "INTR": "0.01800495",
    "KAR": "0.163597",
    "KILT": "0.503679",
    "KINT": "0.665631",
    "KLP": "0.00190924",
    "KMA": "0.00180232",
    "KSM": "24.31",
    "LIT": "0.711405",
    "MOVR": "6.21",
    "NEER": "0.23506",
    "NODL": "0.00317881",
    "OTP": "0.164447",
    "PARA": "0.00997137",
    "PDEX": "1.49",
    "PHA": "0.108991",
    "QTZ": "0.00050973",
    "RING": "0.00365483",
    "SDN": "0.329158",
    "SKU": "0.01138003",
    "TEER": "0.226004",
    "UNQ": "0.00298386",
    "XOR": "2.88",
    "XRT": "2.34",
    "ZTG": "0.05672"
  }
}
```


## Account-Balance-Value-History

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/multiChain/balance_value_history' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{"address":"16ZL8yLyXv3V3L3z9ofR1ovFLziyXaN1DPq4yffMAZ9czzBD","start":"2023-03-02","end":"2023-03-06"}'
```

### Request URL

`POST /api/scan/multiChain/balance_value_history`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1678064218,
  "data": [
    {
      "value": "360869420.87649341776722409771",
      "date": "2023-03-03"
    },
    {
      "value": "351910124.13481868517570873308",
      "date": "2023-03-04"
    },
    {
      "value": "359678332.94665222578832769618",
      "date": "2023-03-05"
    },
    {
      "value": "357288443.69898240792533718947",
      "date": "2023-03-06"
    }
  ]
}
```


## Account-Balance-Value-Stat

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/multiChain/balance_value_stat' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{"address":"16ZL8yLyXv3V3L3z9ofR1ovFLziyXaN1DPq4yffMAZ9czzBD"}'
```

### Request URL

`POST /api/scan/multiChain/balance_value_stat`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1678064884,
  "data": {
    "max": "360869420.87649341776722409771",
    "min": "351910124.13481868517570873308",
    "prev24H": "359678332.94665222578832769618"
  }
}
```
