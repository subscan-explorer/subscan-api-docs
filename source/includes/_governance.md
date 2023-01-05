# Governance API

## treasury-proposals

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/treasury/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/treasury/proposals`

### payload

| Name | Type | Require |
|------|------|---------|
| row  | int  | yes     |
| page | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "data": {
    "count": 1,
    "list": [
      {
        "proposal_id": 133,
        "created_block": 10701429,
        "status": "proposed",
        "reward": "26350000000000",
        "reward_extra": "0",
        "beneficiary": {
          "address": "1Hzs7WqYz2T3EcXN1L4uGLHeE3h5rUuneVkLX5qmmUUvcNo",
          "display": "Hashed Systems",
          "judgements": [{
            "index": 1,
            "judgement": "Reasonable"
          }
          ],
          "account_index": "1D2Z",
          "identity": true,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
        },
        "proposer": {
          "address": "1Hzs7WqYz2T3EcXN1L4uGLHeE3h5rUuneVkLX5qmmUUvcNo",
          "display": "Hashed Systems",
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "1D2Z",
          "identity": true,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
        }
      }
    ]
  },
  "message": "Success",
  "generated_at": 1628587129
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
|-------------|------|---------|
| proposal_id | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1631867717,
  "data": {
    "info": {
      "proposal_id": 0,
      "created_block": 1142221,
      "status": "awarded",
      "reward": "100000000000000",
      "reward_extra": "0",
      "beneficiary": {
        "address": "1629Shw6w88GnyXyyUbRtX7YFipQnjScGKcWr1BaRiMhvmAg",
        "display": "Patract",
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
        "account_index": "",
        "identity": true,
        "parent": {
          "address": "",
          "display": "",
          "sub_symbol": "",
          "identity": false
        }
      },
      "proposer": {
        "address": "13DgX3GSb1tAGCWjW4dcSnNZZDEaKrFceYtAMaEBMFfQH9rz",
        "display": "Lipeng",
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
        "account_index": "16eQvjDK",
        "identity": true,
        "parent": {
          "address": "",
          "display": "",
          "sub_symbol": "",
          "identity": false
        }
      },
      "council": {
        "proposal_id": 7,
        "status": "executed",
        "proposal_hash": "0x0ef205a930527a8eba28d4a598b915a0263aa55b5028c7021ac38c7d75f36d0e",
        "member_count": 8,
        "created_block": 1233220,
        "updated_block": 1278467,
        "aye_votes": 8,
        "nay_votes": 0,
        "proposer": {
          "address": "15aKvwRqGVAwuBMaogtQXhuz9EQqUWsZJSAzomyb5xYwgBXA",
          "display": "JAM ☠️🐍",
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "1Jmx",
          "identity": true,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": false
          }
        }
      },
      "timeline": [
        {
          "block": 1233220,
          "status": "motionAt",
          "time": 1597937658,
          "prophecy": false,
          "index": 0,
          "extrinsic_index": "1233220-3",
          "params": {
            "council_index": 7
          }
        },
        {
          "block": 1142221,
          "status": "proposed",
          "time": 1597390542,
          "prophecy": false,
          "index": 0,
          "extrinsic_index": "1142221-2",
          "params": null
        }
      ]
    }
  }
}
```

## techcomm-proposals

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/techcomm/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 1,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/techcomm/proposals`

### payload

| Name | Type | Require |
|------|------|---------|
| row  | int  | yes     |
| page | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587153,
  "data": {
    "count": 1,
    "list": [
      {
        "proposal_id": 11,
        "created_block": 4443330,
        "status": "proposed",
        "member_count": 5,
        "aye_votes": 1,
        "nay_votes": 0,
        "call_module": "Democracy",
        "call_name": "fast_track"
      }
    ]
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
|-------------|------|---------|
| proposal_id | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1631867820,
  "data": {
    "info": {
      "proposal_id": 1,
      "created_block": 801623,
      "updated_block": 801924,
      "aye_votes": 2,
      "nay_votes": 0,
      "status": "executed",
      "proposal_hash": "0x7e418d777b59fc3f841d578bb416d5ae308f445e14b2b2d93e6418d27e125ef4",
      "proposer": {
        "address": "15yty4Usitt9SGMgWvZdrRjcCeBa7dtrGpdkVck86BTiJoDz",
        "display": "",
        "judgements": [
          {
            "index": 1,
            "judgement": ""
          }
        ],
        "account_index": "",
        "identity": false,
        "parent": {
          "address": "1C6E7TL9hQkTqfPdZFjmdLkFiijMqriwosxozZLeAkCpmPk",
          "display": "Parity",
          "sub_symbol": "🦾",
          "identity": true
        }
      },
      "member_count": 2,
      "executed_success": true,
      "value": "0",
      "call_module": "Democracy",
      "call_name": "fast_track",
      "params": "[{\"name\":\"proposal_hash\",\"type\":\"Hash\",\"value\":\"0xd2d18f5066ac84b98fa9eaff4f273c4da9cfd871136c3cbfa4896c6942c017e2\",\"valueRaw\":\"\"},{\"name\":\"voting_period\",\"type\":\"BlockNumber\",\"value\":201600,\"valueRaw\":\"\"},{\"name\":\"delay\",\"type\":\"BlockNumber\",\"value\":201600,\"valueRaw\":\"\"}]",
      "pre_image": {
        "hash": "0xd2d18f5066ac84b98fa9eaff4f273c4da9cfd871136c3cbfa4896c6942c017e2",
        "created_block": 1188789,
        "updated_block": 1205128,
        "status": "used",
        "amount": "0",
        "call_module": "System",
        "call_name": "set_code",
        "params": "https://subscan.oss-cn-hangzhou.aliyuncs.com/NotePreImage/wasm/polkadot/0xd2d18f5066ac84b98fa9eaff4f273c4da9cfd871136c3cbfa4896c6942c017e2",
        "author": {
          "address": "1KvKReVmUiTc2LW2a4qyHsaJJ9eE9LRsywZkMk5hyBeyHgw",
          "display": "",
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "12BCSi",
          "identity": false,
          "parent": {
            "address": "1C6E7TL9hQkTqfPdZFjmdLkFiijMqriwosxozZLeAkCpmPk",
            "display": "Parity",
            "sub_symbol": "🦾",
            "identity": true
          }
        }
      },
      "votes": [
        {
          "account": {
            "address": "165PL4saAAYjj5HefKBMEgCz7ToHgC8GT7cbNSvnsJiL13Zf",
            "display": "",
            "judgements": [
              {
                "index": 1,
                "judgement": ""
              }
            ],
            "account_index": "",
            "identity": false,
            "parent": {
              "address": "14JezNxa4Fqzsf7ef9prYrNy71Cd1Ff3cZizFrntwviVuC9m",
              "display": "W3F",
              "sub_symbol": "🦾",
              "identity": true
            }
          },
          "passed": true,
          "extrinsic_hash": "0x9806cd135fabbc986cfee9cc17fc5f1c5b4014e7ad40884cec039a3a15a8bfa4",
          "extrinsic_index": "801924-3",
          "voting_time": 1595334330
        }
      ],
      "timeline": [
        {
          "block": 801928,
          "status": "approved",
          "time": 1595334354,
          "prophecy": false,
          "index": 4,
          "extrinsic_index": "801928-3",
          "params": null
        },
        {
          "block": 801928,
          "status": "executed",
          "time": 1595334354,
          "prophecy": false,
          "index": 6,
          "extrinsic_index": "801928-3",
          "params": {
            "council_index": 7
          }
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
    "row": 1,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/council/proposals`

### payload

| Name | Type | Require |
|------|------|---------|
| row  | int  | yes     |
| page | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587151,
  "data": {
    "count": 1,
    "list": [
      {
        "proposal_id": 21,
        "created_block": 928088,
        "status": "executed",
        "member_count": 2,
        "aye_votes": 1,
        "nay_votes": 0,
        "call_module": "Treasury",
        "call_name": "Reject_proposal"
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
|-------------|------|---------|
| proposal_id | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1631867893,
  "data": {
    "info": {
      "proposal_id": 31,
      "created_block": 2002546,
      "updated_block": 2022852,
      "aye_votes": 8,
      "nay_votes": 0,
      "status": "executed",
      "proposal_hash": "0x6ebf1d28c27b73e693361813691a29b6f803e428dad2d140d762a28e87d1de2b",
      "proposer": {
        "address": "1hCMdtRsaRA4ZTEKpPKPvEjK9rZpGhyFnRHSDhqFMCEayRL",
        "display": "RTTI-5220 (POLKADOT)",
        "judgements": [
          {
            "index": 0,
            "judgement": "KnownGood"
          }
        ],
        "account_index": "",
        "identity": true,
        "parent": {
          "address": "14JezNxa4Fqzsf7ef9prYrNy71Cd1Ff3cZizFrntwviVuC9m",
          "display": "W3F",
          "sub_symbol": "🦾",
          "identity": true
        }
      },
      "member_count": 8,
      "executed_success": true,
      "value": "0",
      "call_module": "Treasury",
      "call_name": "approve_proposal",
      "params": "[{\"name\":\"proposal_id\",\"type\":\"Compact\\u003cProposalIndex\\u003e\",\"value\":16,\"valueRaw\":\"\"}]",
      "pre_image": {
        "hash": "",
        "created_block": 1188789,
        "updated_block": 1205128,
        "status": "used",
        "amount": "0",
        "call_module": "System",
        "call_name": "set_code",
        "params": "",
        "author": {
          "address": "",
          "display": "",
          "judgements": [
            {
              "index": 1,
              "judgement": ""
            }
          ],
          "account_index": "12BCSi",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        }
      },
      "votes": [
        {
          "account": {
            "address": "13RDY9nrJpyTDBSUdBw12dGwhk19sGwsrVZ2bxkzYHBSagP2",
            "display": "",
            "judgements": [
              {
                "index": 1,
                "judgement": ""
              }
            ],
            "account_index": "",
            "identity": false,
            "parent": {
              "address": "16SDAKg9N6kKAbhgDyxBXdHEwpwHUHs2CNEiLNGeZV55qHna",
              "display": "🍺 Gav 🥃",
              "sub_symbol": "🏛 Council 🏛",
              "identity": true
            }
          },
          "passed": true,
          "extrinsic_hash": "0x04c051e22e6cc964666c075073c161fcc256405d08e4f7854e169e9e8cf7869b",
          "extrinsic_index": "2022852-2",
          "voting_time": 1602697470
        }
      ],
      "timeline": [
        {
          "block": 2022853,
          "status": "approved",
          "time": 1602697476,
          "prophecy": false,
          "index": 3,
          "extrinsic_index": "2022853-2",
          "params": null
        },
        {
          "block": 2022853,
          "status": "closed",
          "time": 1602697476,
          "prophecy": false,
          "index": 2,
          "extrinsic_index": "2022853-2",
          "params": {
            "council_index": 1
          }
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
    "row": 1,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/democracy/referendums`

### payload

| Name | Type | Require |
|------|------|---------|
| row  | int  | yes     |
| page | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587149,
  "data": {
    "count": 1,
    "list": [
      {
        "referendum_index": 29,
        "created_block": 1209600,
        "vote_threshold": "SuperMajorityApprove",
        "status": "started",
        "call_module": "Staking",
        "call_name": "increase_validator_count"
      }
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
|------------------|------|---------|
| referendum_index | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1631867947,
  "data": {
    "info": {
      "referendum_index": 1,
      "created_block": 790302,
      "updated_block": 799302,
      "vote_threshold": "SimpleMajority",
      "pre_image": {
        "hash": "0xf86bf558643352cdfd4b6ebc74e5ef41afad5b73e41b157a59945253f48765be",
        "created_block": 798096,
        "updated_block": 799302,
        "status": "used",
        "amount": "0",
        "call_module": "System",
        "call_name": "set_code",
        "params": "https://subscan.oss-cn-hangzhou.aliyuncs.com/NotePreImage/wasm/polkadot/0xf86bf558643352cdfd4b6ebc74e5ef41afad5b73e41b157a59945253f48765be",
        "author": {
          "address": "1KvKReVmUiTc2LW2a4qyHsaJJ9eE9LRsywZkMk5hyBeyHgw",
          "display": "",
          "judgements": [
            {
              "index": 0,
              "judgement": "KnownGood"
            }
          ],
          "account_index": "12BCSi",
          "identity": true,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        }
      },
      "value": "0",
      "status": "executed",
      "delay": 1800,
      "end": 797502,
      "aye_amount": "242393133400000000",
      "nay_amount": "0",
      "turnout": "193619571000000000",
      "executed_success": true,
      "aye_without_conviction": "193169571000000000",
      "nay_without_conviction": "0",
      "timeline": [
        {
          "block": 799302,
          "status": "executed",
          "time": 1595318538,
          "prophecy": false,
          "index": 2,
          "extrinsic_index": "799302-0",
          "params": null
        },
        {
          "block": 799302,
          "status": "executingAt",
          "time": -1,
          "prophecy": true,
          "index": 0,
          "extrinsic_index": "797502-0",
          "params": {
            "council_index": 1
          }
        }
      ]
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
    "row": 1,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/democracy/votes`

### payload

| Name             | Type | Require |
|------------------|------|---------|
| row              | int  | yes     |
| page             | int  | yes     |
| referendum_index | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "count": 1,
    "list": [
      {
        "account": {
          "display": "",
          "account_index": "4wkDy",
          "address": "HRosoqFwj5XJUiTrFFFqpEzzuqTXWAczPyjm23JVmg9FTYu",
          "judgements": [
            {
              "index": 0,
              "judgement": "KnownGood"
            }
          ],
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        },
        "amount": "323446184712801",
        "passed": true,
        "extrinsic_hash": "0xa02acc5a6dba2bb45c04cf8e73f52e1b0c1499587a9b8632d5c677632b8059ec",
        "extrinsic_index": "795597-3",
        "conviction": "1",
        "voting_time": 1595296242
      }
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
    "row": 1,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/democracy/proposals`

### payload

| Name        | Type   | Require |
|-------------|--------|---------|
| row         | int    | yes     |
| page        | int    | yes     |
| status      | string | no      |
| order_field | string | no      |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587144,
  "data": {
    "count": 1,
    "list": [
      {
        "created_block": 1692250,
        "proposal_id": 9,
        "status": "tabled",
        "call_module": "Staking",
        "call_name": "increase_validator_count",
        "seconded_count": 0
      }
    ]
  }
}
```

## democracy-proposal

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/democracy/proposal' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "democracy_id": 1
  }'
```

### Request URL

`POST /api/scan/democracy/proposal`

### payload

| Name         | Type | Require |
|--------------|------|---------|
| democracy_id | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1631868025,
  "data": {
    "info": {
      "proposal_id": 1,
      "status": "tabled",
      "created_block": 1179226,
      "updated_block": 1612800,
      "proposal_hash": "0x086650c6a3966e8179e5213fdb8bcc01b109d82d58c492c6f2c198f4237ec3cb",
      "value": "1000000000000",
      "call_module": "",
      "call_name": "",
      "params": "null",
      "seconded_count": 0,
      "timeline": [
        {
          "block": 1612800,
          "status": "motionAt",
          "time": 1600220184,
          "prophecy": false,
          "index": 0,
          "extrinsic_index": "1612800-0",
          "params": {
            "referendum_index": 4
          }
        },
        {
          "block": 1179226,
          "status": "proposed",
          "time": 1597613130,
          "prophecy": false,
          "index": 0,
          "extrinsic_index": "1179226-3",
          "params": null
        }
      ],
      "pre_image": {
        "hash": "0xf86bf558643352cdfd4b6ebc74e5ef41afad5b73e41b157a59945253f48765be",
        "created_block": 798096,
        "updated_block": 799302,
        "status": "used",
        "amount": "0",
        "call_module": "System",
        "call_name": "set_code",
        "params": "https://subscan.oss-cn-hangzhou.aliyuncs.com/NotePreImage/wasm/polkadot/0xf86bf558643352cdfd4b6ebc74e5ef41afad5b73e41b157a59945253f48765be",
        "author": {
          "address": "1KvKReVmUiTc2LW2a4qyHsaJJ9eE9LRsywZkMk5hyBeyHgw",
          "display": "",
          "judgements": [
            {
              "index": 0,
              "judgement": "KnownGood"
            }
          ],
          "account_index": "12BCSi",
          "identity": true,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
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
    "row": 1,
    "page": 1
  }'
```

### Request URL

`POST /api/scan/treasury/tips`

### payload

| Name | Type | Require |
|------|------|---------|
| row  | int  | yes     |
| page | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "data": {
    "count": 1,
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
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
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
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        },
        "hash": "0x8b750b6c5e3ad200506fb0f82caa57a7be7842ae12c32427c98ef23d18409487",
        "reason": "Statink on Polkadot with Ledger tutorial: https://youtu.be/-jxJ7jursA4",
        "status": "retract",
        "tipper_num": 0
      }
    ]
  },
  "message": "Success",
  "generated_at": 1628587129
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
|------|--------|---------|
| hash | string | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1631868080,
  "data": {
    "info": {
      "block_num": 1525546,
      "reason": "Supporting Polkadot Ambassador(Hyungsuk) as a community manager in Polkadot Eco-partners' Telegram and Discord Communities",
      "hash": "0x6bf9d1bd28c5e88693a7b86548d9f05ead2813195f4d4771cd44e2b5ed31d181",
      "extrinsic_index": "1525546-3",
      "status": "closed",
      "amount": "75000000000",
      "close_block_num": 1973069,
      "tipper_num": 4,
      "finder": {
        "address": "16YBdgR2NXVfcgVx8vmGimJMo8CFzULktruh1bTDUnY2Ss6Q",
        "display": "",
        "judgements": [
          {
            "index": 0,
            "judgement": "FeePaid"
          }
        ],
        "account_index": "",
        "identity": false,
        "parent": {
          "address": "",
          "display": "",
          "sub_symbol": "",
          "identity": true
        }
      },
      "beneficiary": {
        "address": "16YBdgR2NXVfcgVx8vmGimJMo8CFzULktruh1bTDUnY2Ss6Q",
        "display": "Phala Network",
        "judgements": [
          {
            "index": 0,
            "judgement": "FeePaid"
          }
        ],
        "account_index": "",
        "identity": false,
        "parent": {
          "address": "",
          "display": "",
          "sub_symbol": "",
          "identity": true
        }
      },
      "timeline": [
        {
          "block": 1525546,
          "status": "proposed",
          "time": 1599695220,
          "prophecy": false,
          "index": 4,
          "extrinsic_index": "1525546-3",
          "params": null
        },
        {
          "block": 1973069,
          "status": "closed",
          "time": 1602396462,
          "prophecy": false,
          "index": 4,
          "extrinsic_index": "1973069-2",
          "params": {
            "council_index": 1
          }
        }
      ]
    }
  }
}
```

## seconded

```shell
curl -X POST 'https://kusama.api.subscan.io/api/scan/democracy/seconded' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "proposal_id": 58,
    "page": 0,
    "row": 1
    }'
```

### Request URL

`POST /api/scan/democracy/seconded`

### payload

| Name        | Type | Require |
|-------------|------|---------|
| proposal_id | int  | yes     |
| page        | int  | yes     |
| row         | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1647396883,
  "data": {
    "count": 1,
    "list": [
      {
        "proposal_id": 58,
        "block_num": 11574051,
        "account": "0294d53df32ffcce69720bff43ef091c4bb98746625ccd872c83020b6e60b92b",
        "extrinsic_index": "11574051-3",
        "event_index": "11574051-30",
        "account_display": {
          "address": "CdhpsY3pPg6rCxuHj55jUw7PoCHNLUTWHwWzhW6m58VQmXx",
          "display": "Phala Network",
          "judgements": [
            {
              "index": 0,
              "judgement": "FeePaid"
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        }
      }
    ]
  }
}
```

## bounties

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/bounties/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "page": 0,
    "row": 1
    }'
```

### Request URL

`POST /api/scan/bounties/proposals`

### payload

| Name   | Type   | Require               |
|--------|--------|-----------------------|
| page   | int    | yes                   |
| row    | int    | yes                   |
| status | string | no(historical active) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1648790183,
  "data": {
    "count": 1,
    "list": [
      {
        "proposal_id": 11,
        "status": "proposed",
        "value": "75000000000000",
        "description": "Anti-Scam Bounty",
        "proposer": {
          "address": "5FnKtu7Tdy2Zcs4VD2TD8TX8JPEwabafWkPv93F8Cu8ewrub",
          "display": "",
          "judgements": [
            {
              "index": 0,
              "judgement": "FeePaid"
            }
          ],
          "account_index": "",
          "identity": false,
          "parent": {
            "address": "",
            "display": "",
            "sub_symbol": "",
            "identity": true
          }
        }
      }
    ]
  }
}
```

## bounty info

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/bounties/proposal' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "proposal_id": 0
    }'
```

### Request URL

`POST /api/scan/bounties/proposal`

### payload

| Name        | Type | Require |
|-------------|------|---------|
| proposal_id | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1648790328,
  "data": {
    "proposal_id": 0,
    "status": "claimed",
    "created_block": 3093521,
    "value": "24457900000000",
    "description": "Polkadot Brand Update Immersion Phase",
    "beneficiary": {
      "address": "5Fk25SLJFnMY6Qn9JnHep6naH8KheFN4zXk2t7AtSK8t7icT",
      "display": "",
      "judgements": [
        {
          "index": 0,
          "judgement": "FeePaid"
        }
      ],
      "account_index": "",
      "identity": false,
      "parent": {
        "address": "",
        "display": "",
        "sub_symbol": "",
        "identity": true
      }
    },
    "proposer": {
      "address": "5Fk25SLJFnMY6Qn9JnHep6naH8KheFN4zXk2t7AtSK8t7icT",
      "display": "",
      "judgements": [
        {
          "index": 0,
          "judgement": "FeePaid"
        }
      ],
      "account_index": "",
      "identity": false,
      "parent": {
        "address": "",
        "display": "",
        "sub_symbol": "",
        "identity": true
      }
    },
    "curator": {
      "address": "5Hn6TH4yX5N54qV3BGVmfdw33snFkJ3GFqLk2tvsQXQrnnfz",
      "display": "",
      "judgements": [
        {
          "index": 0,
          "judgement": "FeePaid"
        }
      ],
      "account_index": "",
      "identity": false,
      "parent": {
        "address": "",
        "display": "",
        "sub_symbol": "",
        "identity": true
      }
    },
    "curator_deposit": "5000000000",
    "curator_fee": "10000000000",
    "bond": "10000",
    "expire_block": 6534539,
    "timeline": [
      {
        "block": 3109841,
        "status": "approved",
        "time": 1609246800,
        "prophecy": false,
        "index": 0,
        "extrinsic_index": "3109841-1",
        "params": {
          "council_index": 50
        }
      },
      {
        "block": 6419339,
        "status": "awarded",
        "time": 1629188760,
        "prophecy": false,
        "index": 2,
        "extrinsic_index": "6419339-1",
        "params": null
      }
    ]
  }
}
```



## referendumV2 list

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/referenda/referendums' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
      "row":10,
      "status":"completed"
    }'
```

### Request URL

`POST /api/scan/referenda/referendums`

### payload

| Name    | Type   | Require              |
|---------|--------|----------------------|
| page    | int    | no                   |
| row     | int    | yes                  |
| status  | string | no(completed active) |
| Origins | string | no                   |

> Example Response

### status enum
Submitted Decision Confirm Approved ConfirmAborted Rejected Cancelled Timeout Killed Executed ExecutedFailed

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672219941,
  "data": {
    "count": 2,
    "list": [
      {
        "referendum_index": 1,
        "created_block": 15438787,
        "origins": "treasurer",
        "account": {
          "address": "GLVeryFRbg5hEKvQZcAnLvXZEXhiYaBjzSDwrXBXrfPF7wj"
        },
        "call_module": "",
        "call_name": "",
        "status": "Rejected",
        "latest_block_num": 15684998,
        "latest_block_timestamp": 1670615070
      },
      {
        "referendum_index": 0,
        "created_block": 15426832,
        "origins": "general_admin",
        "account": {
          "address": "GLVeryFRbg5hEKvQZcAnLvXZEXhiYaBjzSDwrXBXrfPF7wj"
        },
        "call_module": "System",
        "call_name": "remark",
        "status": "Rejected",
        "latest_block_num": 15682703,
        "latest_block_timestamp": 1670598540
      }
    ]
  }
}
```

## referendumV2 info

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/referenda/referendum' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
        "referendum_index":0
    }'
```

### Request URL

`POST /api/scan/referenda/referendum`

### payload

| Name             | Type | Require |
|------------------|------|---------|
| referendum_index | int  | yes     |

> Example Response

### timeline.status enum
Submitted Decision ConfirmStarted Confirm Approved ConfirmAborted Rejected Cancelled Timeout Killed Executed ExecutedFailed

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672305439,
  "data": {
    "referendum_index": 0,
    "created_block": 15426832,
    "origins": "general_admin",
    "account": {
      "address": "GLVeryFRbg5hEKvQZcAnLvXZEXhiYaBjzSDwrXBXrfPF7wj"
    },
    "deposit_balance": "100000000000000",
    "decision_deposit_account": {
      "address": "GLVeryFRbg5hEKvQZcAnLvXZEXhiYaBjzSDwrXBXrfPF7wj"
    },
    "decision_deposit_balance": "16666666500000",
    "status": "Rejected",
    "latest_block_num": 15682703,
    "latest_block_timestamp": 1670598540,
    "pre_image": {
      "hash": "0xb54d0e07521b04f5d3ef54bf3c4cc4c0866b65873b38eafe58d3d754cb08bf89",
      "created_block": 15426506,
      "updated_block": 0,
      "status": "Noted",
      "amount": "0",
      "call_module": "System",
      "call_name": "remark",
      "params":"[{\"name\":\"remark\",\"type\":\"Vec\<U8\>\",\"value\":\"Expect chaos.\"}]",
      "author": {
        "address": "JFArxqV6rqPSwBok3zQDnj5jL6vwsZQDwYXXqb1cFygnYVt"
      }
    },
    "beneficiary": {
      "address": "HHK8Yy2gtAUydPGGzotH5mzPe6u1iG8m5nnAxdqb9r99iCU"
    },
    "beneficiary_amount": "7300000000000",
    "ayes_amount": "267410000000",
    "ayes_count": 2,
    "nays_amount": "0",
    "nays_count": 0,
    "abstains_count": 0,
    "support_amount": "2674100000000",
    "timeline": [
      {
        "block": 15426832,
        "status": "Submitted",
        "time": 1669046412,
        "prophecy": false,
        "index": 66,
        "extrinsic_index": "",
        "params": null
      },
      {
        "block": 15426840,
        "status": "Decision",
        "time": 1669046460,
        "prophecy": false,
        "index": 53,
        "extrinsic_index": "",
        "params": null
      },
      {
        "block": 15682703,
        "status": "Rejected",
        "time": 1670598540,
        "prophecy": false,
        "index": 1,
        "extrinsic_index": "",
        "params": null
      }
    ]
  }
}
```

## referendumV2 votes

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/referenda/votes' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
        "row":10,
        "referendum_index":0
    }'
```

### Request URL

`POST /api/scan/referenda/votes`

### payload

| Name             | Type | Require |
|------------------|------|---------|
| referendum_index | int  | yes     |
| page             | int  | no      |
| row              | int  | yes     |

> Example Response

### status enum
Ayes Nays Abstains

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672281811,
  "data": {
    "count": 1,
    "list": [
      {
        "account": {
          "address": "D8DtYYJUUBoACJwJrLNyn8aYArumdViVWAcZRUKcxnSoV9D"
        },
        "amount": "2000000000000",
        "status": "Aye",
        "extrinsic_index": "15426860-6",
        "conviction": "0.1",
        "voting_time": 1669046580
      }
    ]
  }
}
```

## referendumV2 track

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/referenda/tracks' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/referenda/tracks`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672220221,
  "data": {
    "0": {
      "name": "root",
      "max_deciding": 1,
      "decision_deposit": "3333333333300000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 1800,
      "min_enactment_period": 1800,
      "min_approval": {
        "Reciprocal": {
          "factor": "222222224",
          "x_offset": "333333335",
          "y_offset": "333333332"
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "1": {
      "name": "whitelisted_caller",
      "max_deciding": 30,
      "decision_deposit": "3333333333300000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 100,
      "min_enactment_period": 300,
      "min_approval": {
        "Reciprocal": {
          "factor": "270899180",
          "x_offset": "389830523",
          "y_offset": "305084738"
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "8650766",
          "x_offset": "18867926",
          "y_offset": "41509433"
        }
      }
    },
    "10": {
      "name": "staking_admin",
      "max_deciding": 10,
      "decision_deposit": "166666666665000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 1800,
      "min_enactment_period": 28800,
      "min_approval": {
        "LinearDecreasing": {
          "length": 607142857,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "7892829",
          "x_offset": "15544040",
          "y_offset": "-7772020"
        }
      }
    },
    "11": {
      "name": "treasurer",
      "max_deciding": 10,
      "decision_deposit": "166666666665000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 1800,
      "min_enactment_period": 28800,
      "min_approval": {
        "Reciprocal": {
          "factor": "222222224",
          "x_offset": "333333335",
          "y_offset": "333333332"
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "12": {
      "name": "lease_admin",
      "max_deciding": 10,
      "decision_deposit": "166666666665000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 1800,
      "min_enactment_period": 28800,
      "min_approval": {
        "LinearDecreasing": {
          "length": 607142857,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "7892829",
          "x_offset": "15544040",
          "y_offset": "-7772020"
        }
      }
    },
    "13": {
      "name": "fellowship_admin",
      "max_deciding": 10,
      "decision_deposit": "166666666665000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 1800,
      "min_enactment_period": 28800,
      "min_approval": {
        "LinearDecreasing": {
          "length": 607142857,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "7892829",
          "x_offset": "15544040",
          "y_offset": "-7772020"
        }
      }
    },
    "14": {
      "name": "general_admin",
      "max_deciding": 10,
      "decision_deposit": "166666666665000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 1800,
      "min_enactment_period": 28800,
      "min_approval": {
        "Reciprocal": {
          "factor": "222222224",
          "x_offset": "333333335",
          "y_offset": "333333332"
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "49586777",
          "x_offset": "90909091",
          "y_offset": "-45454546"
        }
      }
    },
    "15": {
      "name": "auction_admin",
      "max_deciding": 10,
      "decision_deposit": "166666666665000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 1800,
      "min_enactment_period": 28800,
      "min_approval": {
        "Reciprocal": {
          "factor": "222222224",
          "x_offset": "333333335",
          "y_offset": "333333332"
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "49586777",
          "x_offset": "90909091",
          "y_offset": "-45454546"
        }
      }
    },
    "20": {
      "name": "referendum_canceller",
      "max_deciding": 1000,
      "decision_deposit": "1666666666650000",
      "prepare_period": 2400,
      "decision_period": 100800,
      "confirm_period": 1800,
      "min_enactment_period": 100,
      "min_approval": {
        "LinearDecreasing": {
          "length": 607142857,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "7892829",
          "x_offset": "15544040",
          "y_offset": "-7772020"
        }
      }
    },
    "21": {
      "name": "referendum_killer",
      "max_deciding": 1000,
      "decision_deposit": "1666666666650000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 1800,
      "min_enactment_period": 100,
      "min_approval": {
        "LinearDecreasing": {
          "length": 607142857,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "7892829",
          "x_offset": "15544040",
          "y_offset": "-7772020"
        }
      }
    },
    "30": {
      "name": "small_tipper",
      "max_deciding": 200,
      "decision_deposit": "166666666665",
      "prepare_period": 2400,
      "decision_period": 100800,
      "confirm_period": 1800,
      "min_enactment_period": 14400,
      "min_approval": {
        "LinearDecreasing": {
          "length": 357142857,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "1620729",
          "x_offset": "3231018",
          "y_offset": "-1615509"
        }
      }
    },
    "31": {
      "name": "big_tipper",
      "max_deciding": 100,
      "decision_deposit": "1666666666650",
      "prepare_period": 2400,
      "decision_period": 100800,
      "confirm_period": 3600,
      "min_enactment_period": 14400,
      "min_approval": {
        "LinearDecreasing": {
          "length": 357142857,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "4149097",
          "x_offset": "8230453",
          "y_offset": "-4115227"
        }
      }
    },
    "32": {
      "name": "small_spender",
      "max_deciding": 50,
      "decision_deposit": "16666666666500",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 7200,
      "min_enactment_period": 14400,
      "min_approval": {
        "LinearDecreasing": {
          "length": 607142857,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "7892829",
          "x_offset": "15544040",
          "y_offset": "-7772020"
        }
      }
    },
    "33": {
      "name": "medium_spender",
      "max_deciding": 20,
      "decision_deposit": "49999999999500",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 14400,
      "min_enactment_period": 14400,
      "min_approval": {
        "LinearDecreasing": {
          "length": 821428571,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "14377233",
          "x_offset": "27972031",
          "y_offset": "-13986016"
        }
      }
    },
    "34": {
      "name": "big_spender",
      "max_deciding": 10,
      "decision_deposit": "166666666665000",
      "prepare_period": 2400,
      "decision_period": 201600,
      "confirm_period": 28800,
      "min_enactment_period": 14400,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "Reciprocal": {
          "factor": "28326977",
          "x_offset": "53763445",
          "y_offset": "-26881723"
        }
      }
    }
  }
}
```

## referendumV2 statistics

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/referenda/statistics' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/referenda/statistics`

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1672303761,
    "data": {
      "referendum_locked": "7908180276500000",
      "referendum_participate": "7910854376500000",
      "voting_total": 1,
      "confirm_total": 0,
      "origins": [
        {
          "ID": 0,
          "Origins": "root",
          "Count": 1
        },
        {
          "ID": 11,
          "Origins": "treasurer",
          "Count": 1
        },
        {
          "ID": 14,
          "Origins": "general_admin",
          "Count": 1
        },
        {
          "ID": 34,
          "Origins": "big_spender",
          "Count": 1
        }
      ],
      "OriginsCount": 4
    }
}
```



## fellowship referendum list

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/fellowship/referendums' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
      "row":10,
      "status":"completed"
    }'
```

### Request URL

`POST /api/scan/fellowship/referendums`

### payload

| Name    | Type   | Require              |
|---------|--------|----------------------|
| page    | int    | no                   |
| row     | int    | yes                  |
| status  | string | no(completed active) |
| Origins | string | no                   |

> Example Response

### status enum
Submitted Decision Confirm Approved ConfirmAborted Rejected Cancelled Timeout Killed Executed ExecutedFailed

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672815270,
  "data": {
    "count": 1,
    "list": [
      {
        "referendum_index": 0,
        "created_block": 15598169,
        "origins": "fellows",
        "account": {
          "address": "GcDZZCVPwkPqoWxx8vfLb4Yfpz9yQ1f4XEyqngSH8ygsL9p"
        },
        "call_module": "",
        "call_name": "",
        "status": "Approved",
        "latest_block_num": 15602369,
        "latest_block_timestamp": 1670104026
      }
    ]
  }
}
```

## fellowship referendum info

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/fellowship/referendum' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
        "referendum_index":0
    }'
```
### Request URL

`POST /api/scan/fellowship/referendum`

### payload

| Name             | Type | Require |
|------------------|------|---------|
| referendum_index | int  | yes     |

> Example Response

### timeline.status enum
Submitted Decision ConfirmStarted Confirm Approved ConfirmAborted Rejected Cancelled Timeout Killed Executed ExecutedFailed

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672814873,
  "data": {
    "referendum_index": 0,
    "created_block": 15598169,
    "origins": "fellows",
    "account": {
      "address": "GcDZZCVPwkPqoWxx8vfLb4Yfpz9yQ1f4XEyqngSH8ygsL9p"
    },
    "deposit_balance": "0",
    "decision_deposit_account": {
      "address": "GLVeryFRbg5hEKvQZcAnLvXZEXhiYaBjzSDwrXBXrfPF7wj"
    },
    "decision_deposit_balance": "33333333000",
    "status": "Approved",
    "latest_block_num": 15602369,
    "latest_block_timestamp": 1670104026,
    "pre_image": {
      "hash": "0xb54d0e07521b04f5d3ef54bf3c4cc4c0866b65873b38eafe58d3d754cb08bf89",
      "created_block": 15426506,
      "updated_block": 0,
      "status": "Noted",
      "amount": "0",
      "call_module": "System",
      "call_name": "remark",
      "params":"[{\"name\":\"remark\",\"type\":\"Vec\<U8\>\",\"value\":\"Expect chaos.\"}]",
      "author": {
        "address": "JFArxqV6rqPSwBok3zQDnj5jL6vwsZQDwYXXqb1cFygnYVt"
      }
    },
    "beneficiary": null,
    "beneficiary_amount": "",
    "ayes_amount": "13",
    "ayes_count": 2,
    "nays_amount": "0",
    "nays_count": 0,
    "abstains_count": 0,
    "support_amount": "0",
    "bare_ayes": "2",
    "timeline": [
      {
        "block": 15598169,
        "status": "Submitted",
        "time": 1670078742,
        "prophecy": false,
        "index": 50,
        "extrinsic_index": "",
        "params": null
      },
      {
        "block": 15598469,
        "status": "Decision",
        "time": 1670080548,
        "prophecy": false,
        "index": 0,
        "extrinsic_index": "",
        "params": null
      },
      {
        "block": 15602069,
        "status": "ConfirmStarted",
        "time": 1670102214,
        "prophecy": false,
        "index": 0,
        "extrinsic_index": "",
        "params": null
      },
      {
        "block": 15602369,
        "status": "Confirm",
        "time": 1670104026,
        "prophecy": false,
        "index": 2,
        "extrinsic_index": "",
        "params": null
      }
    ]
  }
}
```


## fellowship referendum votes

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/fellowship/votes' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
        "row":10,
        "referendum_index":0
    }'
```

### Request URL

`POST /api/scan/fellowship/votes`

### payload

| Name             | Type | Require |
|------------------|------|---------|
| referendum_index | int  | yes     |
| page             | int  | no      |
| row              | int  | yes     |

> Example Response

### status enum
Ayes Nays

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672815678,
  "data": {
    "count": 2,
    "list": [
      {
        "account": {
          "address": "HL8bEp8YicBdrUmJocCAWVLKUaR2dd1y6jnD934pbre3un1"
        },
        "amount": "3",
        "status": "Ayes",
        "extrinsic_index": "15598438-2",
        "conviction": "0",
        "voting_time": 1670080362
      },
      {
        "account": {
          "address": "FcxNWVy5RESDsErjwyZmPCW6Z8Y3fbfLzmou34YZTrbcraL"
        },
        "amount": "10",
        "status": "Ayes",
        "extrinsic_index": "15598379-4",
        "conviction": "0",
        "voting_time": 1670080008
      }
    ]
  }
}
```

## fellowship referendum track

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/fellowship/tracks' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```


### Request URL

`POST /api/scan/fellowship/tracks`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672814526,
  "data": {
    "0": {
      "name": "candidates",
      "max_deciding": 10,
      "decision_deposit": "3333333333300",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "1": {
      "name": "members",
      "max_deciding": 10,
      "decision_deposit": "333333333330",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "2": {
      "name": "proficients",
      "max_deciding": 10,
      "decision_deposit": "333333333330",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "3": {
      "name": "fellows",
      "max_deciding": 10,
      "decision_deposit": "333333333330",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "4": {
      "name": "senior fellows",
      "max_deciding": 10,
      "decision_deposit": "333333333330",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "5": {
      "name": "experts",
      "max_deciding": 10,
      "decision_deposit": "33333333333",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "6": {
      "name": "senior experts",
      "max_deciding": 10,
      "decision_deposit": "33333333333",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "7": {
      "name": "masters",
      "max_deciding": 10,
      "decision_deposit": "33333333333",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "8": {
      "name": "senior masters",
      "max_deciding": 10,
      "decision_deposit": "33333333333",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    },
    "9": {
      "name": "grand masters",
      "max_deciding": 10,
      "decision_deposit": "33333333333",
      "prepare_period": 300,
      "decision_period": 100800,
      "confirm_period": 300,
      "min_enactment_period": 10,
      "min_approval": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 500000000,
          "ceil": 1000000000
        }
      },
      "min_support": {
        "LinearDecreasing": {
          "length": 1000000000,
          "floor": 0,
          "ceil": 500000000
        }
      }
    }
  }
}
```


## fellowship referendum statistics

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/fellowship/statistics' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/fellowship/statistics`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1672815437,
  "data": {
    "fellowship_members": 45,
    "active_fellowship_members": 45,
    "voting_total": 0,
    "confirm_total": 0,
    "origins": [
      {
        "ID": 0,
        "Origins": "candidates",
        "Count": 1
      },
      {
        "ID": 3,
        "Origins": "fellows",
        "Count": 1
      }
    ],
    "OriginsCount": 2
  }
}
```
