# Governance API

## treasury-proposals

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/treasury/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/treasury/proposals`

### payload

| Name | Type | Require |
| ---- | ---- | ------- |
| row  | int  | yes     |
| page | int  | yes     |


> Example Response

```json
{
    "code": 0,
    "data": {
        "count": 16,
        "list": [
            {
                "beneficiary": {
                    "account_index": "",
                    "address": "1629Shw6w88GnyXyyUbRtX7YFipQnjScGKcWr1BaRiMhvmAg",
                    "display": "Patract Labs",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 1,
                            "judgement": "Reasonable"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                },
                "created_block": 1987642,
                "proposal_id": 16,
                "proposer": {
                    "account_index": "16eQvjDK",
                    "address": "13DgX3GSb1tAGCWjW4dcSnNZZDEaKrFceYtAMaEBMFfQH9rz",
                    "display": "Lipeng",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 0,
                            "judgement": "FeePaid"
                        },
                        {
                            "index": 1,
                            "judgement": "Reasonable"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                },
                "reward": "86000000000000",
                "reward_extra": "0",
                "status": "awarded"
            },
            {
                "beneficiary": {
                    "account_index": "",
                    "address": "1629Shw6w88GnyXyyUbRtX7YFipQnjScGKcWr1BaRiMhvmAg",
                    "display": "Patract Labs",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 1,
                            "judgement": "Reasonable"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                },
                "created_block": 1920117,
                "proposal_id": 15,
                "proposer": {
                    "account_index": "16eQvjDK",
                    "address": "13DgX3GSb1tAGCWjW4dcSnNZZDEaKrFceYtAMaEBMFfQH9rz",
                    "display": "Lipeng",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 0,
                            "judgement": "FeePaid"
                        },
                        {
                            "index": 1,
                            "judgement": "Reasonable"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                },
                "reward": "94500000000000",
                "reward_extra": "0",
                "status": "awarded"
            }
        ]
    },
    "message": "Success",
    "ttl": 1
}
```


## treasury-proposal

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/treasury/proposal' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "proposal_id": 0
  }'
```

### Request URL

`POST /api/scan/treasury/proposal`

### payload

| Name        | Type | Require |
| ----------- | ---- | ------- |
| proposal_id | int  | yes     |

> Example Response

```json
{
    "code": 0,
    "data": {
        "info": {
            "beneficiary": {
                "account_index": "",
                "address": "1629Shw6w88GnyXyyUbRtX7YFipQnjScGKcWr1BaRiMhvmAg",
                "display": "Patract Labs",
                "identity": true,
                "judgements": [
                    {
                        "index": 1,
                        "judgement": "Reasonable"
                    }
                ],
                "parent": "",
                "parent_display": ""
            },
            "council": {
                "aye_votes": 6,
                "created_block": 1233220,
                "member_count": 8,
                "nay_votes": 0,
                "proposal_hash": "0x0ef205a930527a8eba28d4a598b915a0263aa55b5028c7021ac38c7d75f36d0e",
                "proposal_id": 7,
                "proposer": {
                    "account_index": "1Jmx",
                    "address": "15aKvwRqGVAwuBMaogtQXhuz9EQqUWsZJSAzomyb5xYwgBXA",
                    "display": "JAM \u2620\ufe0f\ud83d\udc0d",
                    "identity": true,
                    "judgements": null,
                    "parent": "",
                    "parent_display": ""
                },
                "status": "executed",
                "updated_block": 1278467
            },
            "created_block": 1142221,
            "proposal_id": 0,
            "proposer": {
                "account_index": "16eQvjDK",
                "address": "13DgX3GSb1tAGCWjW4dcSnNZZDEaKrFceYtAMaEBMFfQH9rz",
                "display": "Lipeng",
                "identity": true,
                "judgements": [
                    {
                        "index": 0,
                        "judgement": "FeePaid"
                    },
                    {
                        "index": 1,
                        "judgement": "Reasonable"
                    }
                ],
                "parent": "",
                "parent_display": ""
            },
            "reward": "100000000000000",
            "reward_extra": "0",
            "status": "awarded"
        }
    },
    "message": "Success",
    "ttl": 1
}
```

## techcomm-proposals

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/techcomm/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/techcomm/proposals`

### payload

| Name | Type | Require |
| ---- | ---- | ------- |
| row  | int  | yes     |
| page | int  | yes     |


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
curl -X POST 'https://polkadot.api.subscan.io/api/scan/techcomm/proposal' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "proposal_id": 1
  }'
```

### Request URL

`POST /api/scan/techcomm/proposal`

### payload

| Name        | Type | Require |
| ----------- | ---- | ------- |
| proposal_id | int  | yes     |


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
curl -X POST 'https://polkadot.api.subscan.io/api/scan/council/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/council/proposals`

### payload

| Name | Type | Require |
| ---- | ---- | ------- |
| row  | int  | yes     |
| page | int  | yes     |


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
curl -X POST 'https://polkadot.api.subscan.io/api/scan/council/proposal' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "proposal_id": 31
  }'
```

### Request URL

`POST /api/scan/council/proposal`

### payload

| Name        | Type | Require |
| ----------- | ---- | ------- |
| proposal_id | int  | yes     |


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
curl -X POST 'https://polkadot.api.subscan.io/api/scan/democracy/referendums' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/democracy/referendums`

### payload

| Name | Type | Require |
| ---- | ---- | ------- |
| row  | int  | yes     |
| page | int  | yes     |


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
curl -X POST 'https://polkadot.api.subscan.io/api/scan/democracy/referendum' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "referendum_index": 0
  }'
```

### Request URL

`POST /api/scan/democracy/referendum`

### payload

| Name             | Type | Require |
| ---------------- | ---- | ------- |
| referendum_index | int  | yes     |


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
curl -X POST 'https://polkadot.api.subscan.io/api/scan/democracy/votes' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/democracy/votes`

### payload

| Name             | Type | Require |
| ---------------- | ---- | ------- |
| row              | int  | yes     |
| page             | int  | yes     |
| referendum_index | int  | yes     |


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
curl -X POST 'https://polkadot.api.subscan.io/api/scan/democracy/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/democracy/proposals`

### payload

| Name | Type | Require |
| ---- | ---- | ------- |
| row  | int  | yes     |
| page | int  | yes     |

> Example Response

```json
{
    "code": 0,
    "data": {
        "count": 12,
        "list": [
            {
                "created_block": 1692250,
                "proposal_id": 9,
                "status": "tabled"
            },
            {
                "created_block": 1678201,
                "proposal_id": 8,
                "status": "proposed"
            }
        ]
    },
    "message": "Success",
    "ttl": 1
}
```

## democracy-proposal

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/democracy/proposal' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "democracy_id": 20
  }'
```

### Request URL

`POST /api/scan/democracy/proposal`

### payload

| Name         | Type | Require |
| ------------ | ---- | ------- |
| democracy_id | int  | yes     |


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
curl -X POST 'https://polkadot.api.subscan.io/api/scan/treasury/tips' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/treasury/tips`

### payload

| Name | Type | Require |
| ---- | ---- | ------- |
| row  | int  | yes     |
| page | int  | yes     |

> Example Response

```json
{
    "code": 0,
    "data": {
        "count": 53,
        "list": [
            {
                "amount": "0",
                "beneficiary": {
                    "account_index": "",
                    "address": "164tG1eWdbY4HfaUfLp1pPTRRj9Hfj82D24YBQib7crat1QB",
                    "display": "VAL-1",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 1,
                            "judgement": "Reasonable"
                        }
                    ],
                    "parent": "a849437f5f8b602fc9a4210d6a9834af4adc6ce7492861bd0f5b88d11919cd7b",
                    "parent_display": "CRYPTO PLAZA"
                },
                "block_num": 2131734,
                "close_block_num": 2131737,
                "extrinsic_index": "2131734-1",
                "finder": {
                    "account_index": "",
                    "address": "1hCMdtRsaRA4ZTEKpPKPvEjK9rZpGhyFnRHSDhqFMCEayRL",
                    "display": "RTTI-5220 (POLKADOT)",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 0,
                            "judgement": "KnownGood"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                },
                "hash": "0x8b750b6c5e3ad200506fb0f82caa57a7be7842ae12c32427c98ef23d18409487",
                "reason": "Statink on Polkadot with Ledger tutorial: https://youtu.be/-jxJ7jursA4",
                "status": "retract",
                "tipper_num": 0
            },
            {
                "amount": "0",
                "beneficiary": {
                    "account_index": "",
                    "address": "13fifm1SRPnbMyGV8MS1knKPjNcctmfKSyPS4B6C6yVKzyDo",
                    "display": "",
                    "identity": false,
                    "judgements": null,
                    "parent": "",
                    "parent_display": ""
                },
                "block_num": 2091893,
                "close_block_num": 0,
                "extrinsic_index": "2091893-2",
                "finder": {
                    "account_index": "",
                    "address": "13fifm1SRPnbMyGV8MS1knKPjNcctmfKSyPS4B6C6yVKzyDo",
                    "display": "",
                    "identity": false,
                    "judgements": null,
                    "parent": "",
                    "parent_display": ""
                },
                "hash": "0x2bc70afd0e7864505bafe342e8dcfd1b4ce377fd7743e2c9033e3f99b66ff55a",
                "reason": "Access the Acala Mandala App : https://youtu.be/AifEASVetJ8",
                "status": "proposed",
                "tipper_num": 2
            }
        ]
    },
    "message": "Success",
    "ttl": 1
}
```

## tip

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/treasury/tip' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "hash": "0x6bf9d1bd28c5e88693a7b86548d9f05ead2813195f4d4771cd44e2b5ed31d181"
  }'
```

### Request URL

`POST /api/scan/treasury/tip`

### payload

| Name | Type   | Require |
| ---- | ------ | ------- |
| hash | string | yes     |

> Example Response

```json
{
    "code": 0,
    "data": {
        "info": {
            "amount": "75000000000",
            "beneficiary": {
                "account_index": "",
                "address": "16YBdgR2NXVfcgVx8vmGimJMo8CFzULktruh1bTDUnY2Ss6Q",
                "display": "RHEE",
                "identity": true,
                "judgements": null,
                "parent": "",
                "parent_display": ""
            },
            "block_num": 1525546,
            "close_block_num": 1973069,
            "extrinsic_index": "1525546-3",
            "finder": {
                "account_index": "",
                "address": "16YBdgR2NXVfcgVx8vmGimJMo8CFzULktruh1bTDUnY2Ss6Q",
                "display": "RHEE",
                "identity": true,
                "judgements": null,
                "parent": "",
                "parent_display": ""
            },
            "hash": "0x6bf9d1bd28c5e88693a7b86548d9f05ead2813195f4d4771cd44e2b5ed31d181",
            "reason": "Supporting Polkadot Ambassador(Hyungsuk) as a community manager in Polkadot Eco-partners' Telegram and Discord Communities",
            "status": "closed",
            "tipper_num": 4
        }
    },
    "message": "Success",
    "ttl": 1
}
```

## tippers

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/treasury/tippers' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "hash": "0x6bf9d1bd28c5e88693a7b86548d9f05ead2813195f4d4771cd44e2b5ed31d181"
  }'
```

### Request URL

`POST /api/scan/treasury/tippers`

### payload

| Name | Type   | Require |
| ---- | ------ | ------- |
| hash | string | yes     |

> Example Response

```json
{
    "code": 0,
    "data": {
        "list": [
            {
                "amount": "75000000000",
                "extrinsic_index": "1939573-1",
                "rewarder": {
                    "account_index": "",
                    "address": "12xGDBh6zSBc3D98Jhw9jgUVsK8jiwGWHaPTK21Pgb7PJyPn",
                    "display": "Hypersphere",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 0,
                            "judgement": "KnownGood"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                }
            },
            {
                "amount": "80000000000",
                "extrinsic_index": "1853811-1",
                "rewarder": {
                    "account_index": "",
                    "address": "16UJBPHVqQ3xYXnmhEpaQtvSRnrP9k1XeE7WxoyCxsrL9AvV",
                    "display": "Jack",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 0,
                            "judgement": "KnownGood"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                }
            },
            {
                "amount": "50000000000",
                "extrinsic_index": "1549962-3",
                "rewarder": {
                    "account_index": "1kk",
                    "address": "1363HWTPzDrzAQ6ChFiMU6mP4b6jmQid2ae55JQcKtZnpLGv",
                    "display": "Jaco",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 1,
                            "judgement": "Reasonable"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                }
            },
            {
                "amount": "100000000000",
                "extrinsic_index": "1548505-3",
                "rewarder": {
                    "account_index": "",
                    "address": "1hCMdtRsaRA4ZTEKpPKPvEjK9rZpGhyFnRHSDhqFMCEayRL",
                    "display": "RTTI-5220 (POLKADOT)",
                    "identity": true,
                    "judgements": [
                        {
                            "index": 0,
                            "judgement": "KnownGood"
                        }
                    ],
                    "parent": "",
                    "parent_display": ""
                }
            }
        ]
    },
    "message": "Success",
    "ttl": 1
}
```
