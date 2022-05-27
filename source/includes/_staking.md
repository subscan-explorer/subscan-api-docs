# Staking API

**Tip:** Staking API only available if the network supports pallet **staking** or **parachain staking** (like moonbeam, bifrost)

## validators

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/validators' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/staking/validators`

### Payload

| Name        | Type   | Require                                                                                               |
|-------------|--------|-------------------------------------------------------------------------------------------------------|
| order       | string | no (desc,asc)                                                                                         |
| order_field | string | no(rank_validator,bonded_nominators,bonded_owner,count_nominators,validator_prefs_value,bonded_total) |
| row         | int    | yes                                                                                                   |
| page        | int    | yes                                                                                                   |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653622762,
  "data": {
    "list": [
      {
        "rank_validator": 0,
        "bonded_nominators": "20399801549815659",
        "bonded_owner": "0",
        "count_nominators": 106,
        "validator_prefs_value": 1000000000,
        "latest_mining": 10480520,
        "reward_point": 7620,
        "session_key": null,
        "stash_account_display": {
          "address": "111B8CxcmnWbuDLyGvgUmRezDCK1brRZmvUuQ6SrFdMyc3S"
        },
        "controller_account_display": {
          "address": "111B8CxcmnWbuDLyGvgUmRezDCK1brRZmvUuQ6SrFdMyc3S"
        },
        "grandpa_vote": 17,
        "bonded_total": "20399801549815659"
      }
    ]
  }
}
```

## waiting-validator

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/waiting' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 1
  }'
```

### Request URL

`POST /api/scan/staking/waiting`

### Payload

| Name        | Type   | Require                                                                   |
|-------------|--------|---------------------------------------------------------------------------|
| order       | string | no (desc,asc)                                                             |
| order_field | string | no(bonded_nominators,bonded_owner,count_nominators,validator_prefs_value) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653622966,
  "data": {
    "count": 723,
    "list": [
      {
        "bonded_owner": "255744025137111",
        "bonded_nominators": "0",
        "count_nominators": 672,
        "validator_prefs_value": 30000000,
        "stash_account_display": {
          "address": "15BQUqtqhmqJPyvvEH5GYyWffXWKuAgoSUHuG1UeNdb8oDNT",
          "display": "HashQuark",
          "judgements": [
            {
              "index": 1,
              "judgement": "Reasonable"
            }
          ],
          "account_index": "12FDrF"
        }
      }
    ]
  }
}
```

## voted

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/voted' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "15fTw39Ju2jJiHeGe1fJ5DtgugUauy9tr2HZuiRNFwqnGQ1Q"
  }'
```

### Request URL

`POST /api/scan/staking/voted`

### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653623075,
  "data": {
    "list": [
      {
        "rank_validator": 136,
        "bonded_nominators": "20565424533356769",
        "bonded_owner": "0",
        "count_nominators": 146,
        "validator_prefs_value": 30000000,
        "latest_mining": 0,
        "reward_point": 0,
        "session_key": null,
        "stash_account_display": {
          "address": "13RENAu9cpMpxp3EYzWFGpZXgvMZGDrnconYugNdynQz1sDQ",
          "parent": {
            "address": "14MceVAhD8moRWR3U3vLWBU5R9tqjSVWHA4sMfMuwSUPn3vb",
            "display": "Blockdaemon",
            "sub_symbol": "7",
            "identity": true
          }
        },
        "controller_account_display": null,
        "grandpa_vote": 0,
        "bonded_total": "0",
        "bonded": "1220196079709868"
      }
    ]
  }
}
```

## nominators

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/nominators' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 0,
    "address": "165LPQijvZdnmxcuCfxGWvcoSVtoJnCFm1UjjijzsSGGAk22"
  }'
```

### Request URL

`POST /api/scan/staking/nominators`

### Payload

| Name        | Type   | Require                   |
|-------------|--------|---------------------------|
| address     | string | yes                       |
| row         | int    | yes                       |
| page        | int    | yes                       |
| order       | string | no (desc,asc)             |
| order_field | string | no(rank_nominator,bonded) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653623386,
  "data": {
    "count": 24,
    "list": [
      {
        "rank_nominator": 0,
        "nominator_stash": "16crvXKCK3T3ibTKBijCeBakkXLao4enFZ8b5wEVM96VtW1s",
        "bonded": "0",
        "account_display": {
          "address": "16crvXKCK3T3ibTKBijCeBakkXLao4enFZ8b5wEVM96VtW1s"
        }
      }
    ]
  }
}
```

## era-stat

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/era_stat' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 0,
    "address": "165LPQijvZdnmxcuCfxGWvcoSVtoJnCFm1UjjijzsSGGAk22"
  }'
```

### Request URL

`POST /api/scan/staking/era_stat`

### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |
| row     | int    | yes     |
| page    | int    | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653628919,
  "data": {
    "count": 235,
    "list": [
      {
        "era": 285,
        "start_block_num": 4171582,
        "end_block_num": 4185803,
        "block_produced": "4171867,4172690",
        "reward_point": 0
      }
    ]
  }
}
```

## validator

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/validator' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "stash": "111B8CxcmnWbuDLyGvgUmRezDCK1brRZmvUuQ6SrFdMyc3S"
  }'
```

### Request URL

`POST /api/scan/staking/validator`

### Payload

| Name  | Type   | Require |
|-------|--------|---------|
| stash | string | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653629114,
  "data": {
    "info": {
      "rank_validator": 0,
      "bonded_nominators": "20399801549815659",
      "bonded_owner": "0",
      "count_nominators": 106,
      "validator_prefs_value": 1000000000,
      "latest_mining": 0,
      "reward_point": 0,
      "session_key": {
        "babe": "0xaaf2ec61d23ac5c99332d22967b60c9f7b3e97651a418be4fe9a26e940c3bd7b",
        "grandpa": "0x97e17c240e964ac8dd66be3a2101fe5f2e87018600adf561dccaa6e3384f52e5",
        "im_online": "0x72b1e51d22dc72ec18d154a7ffabdf92ba98855dfeb1bc3063073d5da36ce77d",
        "authority_discovery": "0x7c14e138770e2befbfe15592c2e0b485014bca2bb7731e5c634693501c1fe220"
      },
      "stash_account_display": {
        "address": "111B8CxcmnWbuDLyGvgUmRezDCK1brRZmvUuQ6SrFdMyc3S"
      },
      "controller_account_display": {
        "address": "111B8CxcmnWbuDLyGvgUmRezDCK1brRZmvUuQ6SrFdMyc3S"
      },
      "grandpa_vote": 0,
      "bonded_total": "0"
    }
  }
}
```

## bond-stat

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/validator/bond_stat' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "stash": "111B8CxcmnWbuDLyGvgUmRezDCK1brRZmvUuQ6SrFdMyc3S"
  }'
```

### Request URL

`POST /api/scan/staking/validator/bond_stat`

### Payload

| Name  | Type   | Require |
|-------|--------|---------|
| row   | int    | yes     |
| page  | int    | yes     |
| stash | string | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653629483,
  "data": {
    "list": [
      {
        "era": 724,
        "owner": "0",
        "total_bond": "20399801549815659",
        "avg": "45723625609189.3771043771043771",
        "total_avg": "21279162506345801.8888888888888889"
      }
    ]
  }
}

```

## reward-slash

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/account/reward_slash' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 1,
    "address": "15fTw39Ju2jJiHeGe1fJ5DtgugUauy9tr2HZuiRNFwqnGQ1Q"
  }'
```

### Request URL

`POST /api/scan/account/reward_slash`

### Payload

| Name        | Type   | Require                              |
|-------------|--------|--------------------------------------|
| row         | int    | yes                                  |
| page        | int    | yes                                  |
| address     | string | yes                                  |
| is_stash    | bool   | no                                   |
| block_range | string | no (blockNum range like (1000-1200)) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653629735,
  "data": {
    "count": 537,
    "list": [
      {
        "account": "15fTw39Ju2jJiHeGe1fJ5DtgugUauy9tr2HZuiRNFwqnGQ1Q",
        "amount": "470522486256",
        "block_num": 10473980,
        "block_timestamp": 1653580638,
        "event_id": "Reward",
        "event_idx": 434,
        "event_index": "10473980-434",
        "extrinsic_hash": "0x7e869c950a6ab553f2ea12e3e4ed3f49f0fc41c006c6bda52ae600cac96ea073",
        "extrinsic_idx": 4,
        "extrinsic_index": "10473980-4",
        "module_id": "staking",
        "params": "[{\"type\":\"[U8; 32]\",\"type_name\":\"AccountId\",\"value\":\"0xce46eb5500a059797f47cf38f119ecb0eeb360b856f67fcb7a74e98f52b84157\"},{\"type\":\"U128\",\"type_name\":\"BalanceOf\",\"value\":\"470522486256\"}]",
        "stash": "15fTw39Ju2jJiHeGe1fJ5DtgugUauy9tr2HZuiRNFwqnGQ1Q"
      }
    ]
  }
}
```

## unbonding

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/unbonding' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 0,
    "address": "YOUR_STASH_ADDRESS"
  }'
```

### Request URL

`POST /api/scan/staking/unbonding`

### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "native": [
      {
        "amount": "20000000000",
        "until": 5849004
      }
    ]
  }
}

```

## nominator

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/staking/nominator' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "16crvXKCK3T3ibTKBijCeBakkXLao4enFZ8b5wEVM96VtW1s"
  }'
```

### Request URL

`POST /api/scan/staking/nominator`

### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1653630318,
  "data": {
    "nominator_stash": "16crvXKCK3T3ibTKBijCeBakkXLao4enFZ8b5wEVM96VtW1s",
    "stash_account_display": {
      "address": "16crvXKCK3T3ibTKBijCeBakkXLao4enFZ8b5wEVM96VtW1s"
    },
    "staking_info": {
      "controller": "16FUBfV1anDuq6bQqTKf7yYVHGwu3gWJcYzJBB9WJcu49jZN",
      "reward_account": "stash",
      "controller_display": {
        "address": "16FUBfV1anDuq6bQqTKf7yYVHGwu3gWJcYzJBB9WJcu49jZN"
      }
    },
    "bonded": "124017311547775"
  }
}
```
