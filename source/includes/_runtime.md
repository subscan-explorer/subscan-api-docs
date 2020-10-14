# Runtime

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
