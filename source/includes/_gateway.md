# gateway spec

## gateway-validators

validators list 

```shell
curl -X POST 'https://gateway-testnet.subscan.io/api/scan/cash/validators' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{}'
```

### Request URL

`POST /api/scan/cash/validators`

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": [
        {
            "eth_address": "0x24f7fa621501bd05972cb64ba8a789cd866d406a",
            "account_id": "0xe49dac98c62cd10266ae64e0026afa7337bb4ea0c48157171faa45843829fc13",
            "earning": "1"
        }
    ]
}
```

## gateway-accounts

Account list

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/v2/scan/accounts' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "0xc376da30048a06ab8e736107c16d66b4808aefc2",
  }'
```

### Request URL

`POST /api/v2/scan/cash/account/assets`

### Payload

| Name        | Type   | Require   |
| ----------- | ------ | --------- |
| address     | string | yes       |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": [
        {
            "symbol": "BAT",
            "ticker": "BAT",
            "deciamls": 18,
            "chain_asset": "Eth",
            "asset": "0x50390975d942e83d661d4bde43bf73b0ef27b426",
            "supply_cap": "100000000000000000000000000",
            "balance": "0"
        }
    ]
}
```
