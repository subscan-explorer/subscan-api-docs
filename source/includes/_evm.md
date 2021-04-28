# Evm API

## evm block

Get evm display block by blockNum

```shell
curl -X POST 'https://crab.api.subscan.io/api/scan/evm/block' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "block_num": 5012287
  }'
```

### Request URL

`POST /api/scan/evm/block`

### Payload

| Name | Type   | Require |
| ---- | ------ | ------- |
| block_num  | int | yes     |


> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "ttl": 1,
    "data": {
        "block_num": 5012287,
        "block_hash": "0x2d1be5d00b303366b59a4b9cf930852137802297a470ec691add3aee8001427a",
        "parent_hash": "0x07ddfee38a95dac16a195eb18a5e97f788f8897470d5337c671c770665fe8211",
        "sha3_uncles": "0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347",
        "author": "0x68d9882f0c95f1443966a87d90e6d7dc069a70a6",
        "miner": "0x68d9882f0c95f1443966a87d90e6d7dc069a70a6",
        "state_root": "0xd9a1f04aba02a4ca1b0bec92b8c12c435dfcb3b4222790f6f555f382fe249af1",
        "transactions_root": "0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421",
        "receipts_root": "0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347",
        "gas_used": "0",
        "gas_limit": "4294967295",
        "extra_data": "0x",
        "logs_bloom": "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
        "timestamp": 1619580384,
        "difficulty": "0",
        "total_difficulty": "0",
        "seal_fields": "[\"0x0000000000000000000000000000000000000000000000000000000000000000\",\"0x0000000000000000\"]",
        "uncles": "[]",
        "block_size": "514"
    }
}
```
