# Governance

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
                }
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
                }
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
