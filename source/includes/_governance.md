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
| ----------- | ---- | ------- |
| proposal_id | int  | yes     |

> Example Response

```json
{
   "code":0,
   "message":"Success",
   "generated_at":1631867717,
   "data":{
      "info":{
         "proposal_id":0,
         "created_block":1142221,
         "status":"awarded",
         "reward":"100000000000000",
         "reward_extra":"0",
         "beneficiary":{
            "address":"1629Shw6w88GnyXyyUbRtX7YFipQnjScGKcWr1BaRiMhvmAg",
            "display":"Patract",
            "judgements":[
               {
                  "index":0,
                  "judgement":"FeePaid"
               },
               {
                  "index":1,
                  "judgement":"Reasonable"
               }
            ],
            "account_index":"",
            "identity":true,
            "parent":null
         },
         "proposer":{
            "address":"13DgX3GSb1tAGCWjW4dcSnNZZDEaKrFceYtAMaEBMFfQH9rz",
            "display":"Lipeng",
            "judgements":[
               {
                  "index":0,
                  "judgement":"FeePaid"
               },
               {
                  "index":1,
                  "judgement":"Reasonable"
               }
            ],
            "account_index":"16eQvjDK",
            "identity":true,
            "parent":null
         },
         "council":{
            "proposal_id":7,
            "status":"executed",
            "proposal_hash":"0x0ef205a930527a8eba28d4a598b915a0263aa55b5028c7021ac38c7d75f36d0e",
            "member_count":8,
            "created_block":1233220,
            "updated_block":1278467,
            "aye_votes":8,
            "nay_votes":0,
            "proposer":{
               "address":"15aKvwRqGVAwuBMaogtQXhuz9EQqUWsZJSAzomyb5xYwgBXA",
               "display":"JAM ☠️🐍",
               "judgements":null,
               "account_index":"1Jmx",
               "identity":true,
               "parent":null
            }
         },
         "timeline":[
            {
               "block":1382400,
               "status":"awarded",
               "time":1598834562,
               "prophecy":false,
               "index":4,
               "extrinsic_index":"1382400-0",
               "params":null
            },
            {
               "block":1233220,
               "status":"motionAt",
               "time":1597937658,
               "prophecy":false,
               "index":0,
               "extrinsic_index":"1233220-3",
               "params":{
                  "council_index":7
               }
            },
            {
               "block":1142221,
               "status":"proposed",
               "time":1597390542,
               "prophecy":false,
               "index":0,
               "extrinsic_index":"1142221-2",
               "params":null
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
| ----------- | ---- | ------- |
| proposal_id | int  | yes     |


> Example Response

```json
{
   "code":0,
   "message":"Success",
   "generated_at":1631867820,
   "data":{
      "info":{
         "proposal_id":1,
         "created_block":801623,
         "updated_block":801924,
         "aye_votes":2,
         "nay_votes":0,
         "status":"executed",
         "proposal_hash":"0x7e418d777b59fc3f841d578bb416d5ae308f445e14b2b2d93e6418d27e125ef4",
         "proposer":{
            "address":"15yty4Usitt9SGMgWvZdrRjcCeBa7dtrGpdkVck86BTiJoDz",
            "display":"",
            "judgements":null,
            "account_index":"",
            "identity":false,
            "parent":{
               "address":"1C6E7TL9hQkTqfPdZFjmdLkFiijMqriwosxozZLeAkCpmPk",
               "display":"Parity",
               "sub_symbol":"🦾",
               "identity":true
            }
         },
         "member_count":2,
         "executed_success":true,
         "value":"0",
         "call_module":"Democracy",
         "call_name":"fast_track",
         "params":"[{\"name\":\"proposal_hash\",\"type\":\"Hash\",\"value\":\"0xd2d18f5066ac84b98fa9eaff4f273c4da9cfd871136c3cbfa4896c6942c017e2\",\"valueRaw\":\"\"},{\"name\":\"voting_period\",\"type\":\"BlockNumber\",\"value\":201600,\"valueRaw\":\"\"},{\"name\":\"delay\",\"type\":\"BlockNumber\",\"value\":201600,\"valueRaw\":\"\"}]",
         "pre_image":{
            "hash":"0xd2d18f5066ac84b98fa9eaff4f273c4da9cfd871136c3cbfa4896c6942c017e2",
            "created_block":1188789,
            "updated_block":1205128,
            "status":"used",
            "amount":"0",
            "call_module":"System",
            "call_name":"set_code",
            "params":"https://subscan.oss-cn-hangzhou.aliyuncs.com/NotePreImage/wasm/polkadot/0xd2d18f5066ac84b98fa9eaff4f273c4da9cfd871136c3cbfa4896c6942c017e2",
            "author":{
               "address":"1KvKReVmUiTc2LW2a4qyHsaJJ9eE9LRsywZkMk5hyBeyHgw",
               "display":"",
               "judgements":null,
               "account_index":"12BCSi",
               "identity":false,
               "parent":null
            }
         },
         "votes":[
            {
               "account":{
                  "address":"165PL4saAAYjj5HefKBMEgCz7ToHgC8GT7cbNSvnsJiL13Zf",
                  "display":"",
                  "judgements":null,
                  "account_index":"",
                  "identity":false,
                  "parent":{
                     "address":"14JezNxa4Fqzsf7ef9prYrNy71Cd1Ff3cZizFrntwviVuC9m",
                     "display":"W3F",
                     "sub_symbol":"🦾",
                     "identity":true
                  }
               },
               "passed":true,
               "extrinsic_hash":"0x9806cd135fabbc986cfee9cc17fc5f1c5b4014e7ad40884cec039a3a15a8bfa4",
               "extrinsic_index":"801924-3"
            }
         ],
         "timeline":[
            {
               "block":801928,
               "status":"approved",
               "time":1595334354,
               "prophecy":false,
               "index":4,
               "extrinsic_index":"801928-3",
               "params":null
            },
            {
               "block":801928,
               "status":"executed",
               "time":1595334354,
               "prophecy":false,
               "index":6,
               "extrinsic_index":"801928-3",
               "params":null
            },
            {
               "block":801623,
               "status":"proposed",
               "time":1595332518,
               "prophecy":false,
               "index":0,
               "extrinsic_index":"801623-3",
               "params":null
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
    "generated_at": 1628587151,
    "data": {
        "count": 21,
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
| ----------- | ---- | ------- |
| proposal_id | int  | yes     |


> Example Response

```json
{
   "code":0,
   "message":"Success",
   "generated_at":1631867893,
   "data":{
      "info":{
         "proposal_id":31,
         "created_block":2002546,
         "updated_block":2022852,
         "aye_votes":8,
         "nay_votes":0,
         "status":"executed",
         "proposal_hash":"0x6ebf1d28c27b73e693361813691a29b6f803e428dad2d140d762a28e87d1de2b",
         "proposer":{
            "address":"1hCMdtRsaRA4ZTEKpPKPvEjK9rZpGhyFnRHSDhqFMCEayRL",
            "display":"RTTI-5220 (POLKADOT)",
            "judgements":[
               {
                  "index":0,
                  "judgement":"KnownGood"
               }
            ],
            "account_index":"",
            "identity":true,
            "parent":null
         },
         "member_count":8,
         "executed_success":true,
         "value":"0",
         "call_module":"Treasury",
         "call_name":"approve_proposal",
         "params":"[{\"name\":\"proposal_id\",\"type\":\"Compact\\u003cProposalIndex\\u003e\",\"value\":16,\"valueRaw\":\"\"}]",
         "pre_image":null,
         "votes":[
            {
               "account":{
                  "address":"13RDY9nrJpyTDBSUdBw12dGwhk19sGwsrVZ2bxkzYHBSagP2",
                  "display":"",
                  "judgements":null,
                  "account_index":"",
                  "identity":false,
                  "parent":{
                     "address":"16SDAKg9N6kKAbhgDyxBXdHEwpwHUHs2CNEiLNGeZV55qHna",
                     "display":"🍺 Gav 🥃",
                     "sub_symbol":"🏛 Council 🏛",
                     "identity":true
                  }
               },
               "passed":true,
               "extrinsic_hash":"0x04c051e22e6cc964666c075073c161fcc256405d08e4f7854e169e9e8cf7869b",
               "extrinsic_index":"2022852-2"
            },
            {
               "account":{
                  "address":"16UJBPHVqQ3xYXnmhEpaQtvSRnrP9k1XeE7WxoyCxsrL9AvV",
                  "display":"Jack",
                  "judgements":[
                     {
                        "index":0,
                        "judgement":"KnownGood"
                     }
                  ],
                  "account_index":"",
                  "identity":true,
                  "parent":null
               },
               "passed":true,
               "extrinsic_hash":"0xe1f56c5dd4a755ba43fe940ff9f907a4ae4aa2fc021164f17ea011e9a01c39b5",
               "extrinsic_index":"2020976-1"
            },
            {
               "account":{
                  "address":"12NLgzqfhuJkc9mZ5XUTTG85N8yhhzfptwqF1xVhtK3ZX7f6",
                  "display":"Joe",
                  "judgements":[
                     {
                        "index":1,
                        "judgement":"Reasonable"
                     }
                  ],
                  "account_index":"1dF",
                  "identity":true,
                  "parent":null
               },
               "passed":true,
               "extrinsic_hash":"0x32260880f92401dccffcc2c9386a9c84f3d237012f43be3ecd9546c73658182f",
               "extrinsic_index":"2004597-2"
            },
            {
               "account":{
                  "address":"12hAtDZJGt4of3m2GqZcUCVAjZPALfvPwvtUTFZPQUbdX1Ud",
                  "display":"Shawn Tabrizi",
                  "judgements":[
                     {
                        "index":1,
                        "judgement":"Reasonable"
                     }
                  ],
                  "account_index":"12ArQy",
                  "identity":true,
                  "parent":null
               },
               "passed":true,
               "extrinsic_hash":"0xc2a3d8711db3652bc5253ceafacf4fcfcd388a6ab72acfcca59217befce17820",
               "extrinsic_index":"2004315-1"
            },
            {
               "account":{
                  "address":"14ShUZUYUR35RBZW6uVVt1zXDxmSQddkeDdXf1JkMA6P721N",
                  "display":"Wei",
                  "judgements":[
                     {
                        "index":0,
                        "judgement":"FeePaid"
                     },
                     {
                        "index":1,
                        "judgement":"Reasonable"
                     }
                  ],
                  "account_index":"12BG",
                  "identity":true,
                  "parent":null
               },
               "passed":true,
               "extrinsic_hash":"0x573fcfa1a03b16896a6781ee29c14947f0c8a7da7d9798a106e5b3aa20ad14a3",
               "extrinsic_index":"2003877-1"
            },
            {
               "account":{
                  "address":"12mP4sjCfKbDyMRAEyLpkeHeoYtS5USY4x34n9NMwQrcEyoh",
                  "display":"polkaworld",
                  "judgements":[
                     {
                        "index":0,
                        "judgement":"Reasonable"
                     }
                  ],
                  "account_index":"",
                  "identity":true,
                  "parent":null
               },
               "passed":true,
               "extrinsic_hash":"0xf9ef9fece7674b8f811ccc5c19f087876d0cdf78f668ea1765f2cbccb06cbcfb",
               "extrinsic_index":"2003431-2"
            },
            {
               "account":{
                  "address":"14mR4xpU4BwYTTFNwMJ7KJ81yqNiNxGUFL4e3GxVsN27YNTE",
                  "display":"Fabi",
                  "judgements":[
                     {
                        "index":0,
                        "judgement":"KnownGood"
                     }
                  ],
                  "account_index":"",
                  "identity":true,
                  "parent":null
               },
               "passed":true,
               "extrinsic_hash":"0x9288fe170f9ad3feb4639fe6d84c85f7e87597de64e1a8f10c01ba43387c3a42",
               "extrinsic_index":"2002969-1"
            }
         ],
         "timeline":[
            {
               "block":2022853,
               "status":"approved",
               "time":1602697476,
               "prophecy":false,
               "index":3,
               "extrinsic_index":"2022853-2",
               "params":null
            },
            {
               "block":2022853,
               "status":"closed",
               "time":1602697476,
               "prophecy":false,
               "index":2,
               "extrinsic_index":"2022853-2",
               "params":null
            },
            {
               "block":2022853,
               "status":"executed",
               "time":1602697476,
               "prophecy":false,
               "index":4,
               "extrinsic_index":"2022853-2",
               "params":null
            },
            {
               "block":2002546,
               "status":"proposed",
               "time":1602574830,
               "prophecy":false,
               "index":0,
               "extrinsic_index":"2002546-2",
               "params":null
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
    "generated_at": 1628587149,
    "data": {
        "count": 28,
        "list": [
            {
                "referendum_index": 29,
                "created_block": 1209600,
                "vote_threshold": "SuperMajorityApprove",
                "status": "started",
                "call_module": "Staking",
                "call_name": "increase_validator_count"
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
   "code":0,
   "message":"Success",
   "generated_at":1631867947,
   "data":{
      "info":{
         "referendum_index":0,
         "created_block":790302,
         "updated_block":799302,
         "vote_threshold":"SimpleMajority",
         "pre_image":{
            "hash":"0xf86bf558643352cdfd4b6ebc74e5ef41afad5b73e41b157a59945253f48765be",
            "created_block":798096,
            "updated_block":799302,
            "status":"used",
            "amount":"0",
            "call_module":"System",
            "call_name":"set_code",
            "params":"https://subscan.oss-cn-hangzhou.aliyuncs.com/NotePreImage/wasm/polkadot/0xf86bf558643352cdfd4b6ebc74e5ef41afad5b73e41b157a59945253f48765be",
            "author":{
               "address":"1KvKReVmUiTc2LW2a4qyHsaJJ9eE9LRsywZkMk5hyBeyHgw",
               "display":"",
               "judgements":null,
               "account_index":"12BCSi",
               "identity":false,
               "parent":null
            }
         },
         "value":"0",
         "status":"executed",
         "delay":1800,
         "end":797502,
         "aye_amount":"242393133400000000",
         "nay_amount":"0",
         "turnout":"193619571000000000",
         "executed_success":true,
         "aye_without_conviction":"193169571000000000",
         "nay_without_conviction":"0",
         "timeline":[
            {
               "block":799302,
               "status":"executed",
               "time":1595318538,
               "prophecy":false,
               "index":2,
               "extrinsic_index":"799302-0",
               "params":null
            },
            {
               "block":799302,
               "status":"executingAt",
               "time":-1,
               "prophecy":true,
               "index":0,
               "extrinsic_index":"797502-0",
               "params":null
            },
            {
               "block":797502,
               "status":"passed",
               "time":1595307708,
               "prophecy":false,
               "index":0,
               "extrinsic_index":"797502-0",
               "params":null
            },
            {
               "block":790302,
               "status":"started",
               "time":1595264388,
               "prophecy":false,
               "index":5,
               "extrinsic_index":"790302-3",
               "params":null
            },
            {
               "block":797502,
               "status":"votingEndsAt",
               "time":-1,
               "prophecy":true,
               "index":5,
               "extrinsic_index":"790302-3",
               "params":null
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
    "generated_at": 1628587129,
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
    "message": "Success",
    "generated_at": 1628587144,
    "data": {
        "count": 12,
        "list": [
            {
                "created_block": 1692250,
                "proposal_id": 9,
                "status": "tabled",
                "call_module": "Staking",
                "call_name": "increase_validator_count"
            },
            {
                "created_block": 1678201,
                "proposal_id": 8,
                "status": "proposed",
                "call_module": "Staking",
                "call_name": "increase_validator_count"
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
| ------------ | ---- | ------- |
| democracy_id | int  | yes     |


> Example Response

```json
{
   "code":0,
   "message":"Success",
   "generated_at":1631868025,
   "data":{
      "info":{
         "proposal_id":1,
         "status":"tabled",
         "created_block":1179226,
         "updated_block":1612800,
         "proposal_hash":"0x086650c6a3966e8179e5213fdb8bcc01b109d82d58c492c6f2c198f4237ec3cb",
         "value":"1000000000000",
         "call_module":"",
         "call_name":"",
         "params":"null",
         "timeline":[
            {
               "block":1612800,
               "status":"motionAt",
               "time":1600220184,
               "prophecy":false,
               "index":0,
               "extrinsic_index":"1612800-0",
               "params":{
                  "referendum_index":4
               }
            },
            {
               "block":1179226,
               "status":"proposed",
               "time":1597613130,
               "prophecy":false,
               "index":0,
               "extrinsic_index":"1179226-3",
               "params":null
            },
            {
               "block":1612800,
               "status":"tabled",
               "time":1600220184,
               "prophecy":false,
               "index":12,
               "extrinsic_index":"1612800-0",
               "params":null
            }
         ],
         "pre_image":null
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
| ---- | ------ | ------- |
| hash | string | yes     |

> Example Response

```json
{
   "code":0,
   "message":"Success",
   "generated_at":1631868080,
   "data":{
      "info":{
         "block_num":1525546,
         "reason":"Supporting Polkadot Ambassador(Hyungsuk) as a community manager in Polkadot Eco-partners' Telegram and Discord Communities",
         "hash":"0x6bf9d1bd28c5e88693a7b86548d9f05ead2813195f4d4771cd44e2b5ed31d181",
         "extrinsic_index":"1525546-3",
         "status":"closed",
         "amount":"75000000000",
         "close_block_num":1973069,
         "tipper_num":4,
         "finder":{
            "address":"16YBdgR2NXVfcgVx8vmGimJMo8CFzULktruh1bTDUnY2Ss6Q",
            "display":"",
            "judgements":null,
            "account_index":"",
            "identity":false,
            "parent":null
         },
         "beneficiary":{
            "address":"16YBdgR2NXVfcgVx8vmGimJMo8CFzULktruh1bTDUnY2Ss6Q",
            "display":"",
            "judgements":null,
            "account_index":"",
            "identity":false,
            "parent":null
         },
         "timeline":[
            {
               "block":1525546,
               "status":"proposed",
               "time":1599695220,
               "prophecy":false,
               "index":4,
               "extrinsic_index":"1525546-3",
               "params":null
            },
            {
               "block":1973069,
               "status":"closed",
               "time":1602396462,
               "prophecy":false,
               "index":4,
               "extrinsic_index":"1973069-2",
               "params":null
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
    "row": 10
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
        "event_index": "11574051-30"
      }
    ]
  }
}
```
