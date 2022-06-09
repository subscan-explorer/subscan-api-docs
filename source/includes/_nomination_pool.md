# nomination_pool

**Tip:** This API is only available in Polkadot,Kusama,Westend.

## pools

```shell
curl -X POST 'https://westend.api.subscan.io/api/scan/nomination_pool/pools' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
  }'
```

### Request URL

`POST /api/scan/nomination_pool/pools`

### Payload

| Name  | Type   | Require                               |
|-------|--------|---------------------------------------|
| state | string | no(Destroying Open Blocked Destroyed) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1654763949,
  "data": {
    "count": 66,
    "list": [
      {
        "pool_id": 1,
        "metadata": "FIRST POOL",
        "state": "Open",
        "pool_account": {
          "address": "5EYCAe5ijiYfAXEth5DCfmQ9jnv4BFmdonKpbxwrc2nAw5uj",
          "display": "Pool#1(Stash)"
        },
        "nominator_account": {
          "address": "5DiHoyQWyP4aW6PcHoY6djTPT9B7Cy5ZqDfMxnBKUhFv9FKy"
        },
        "pool_reward_account": {
          "address": "5EYCAe5ijiYfAXEth5DCfmQ9jnv4BFmdonKpbxwrc2nAw5uj",
          "display": "Pool#1(Stash)"
        },
        "nominate_count": 0,
        "memberCount": 11,
        "total_bonded": "0",
        "reward_amount": "0"
      }
    ]
  }
}
```

## pool detail

```shell
curl -X POST 'https://westend.api.subscan.io/api/scan/nomination_pool/pool' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
   "pool_id": 1
  }'
```

### Request URL

`POST /api/scan/nomination_pool/pool`

### Payload

| Name    | Type | Require |
|---------|------|---------|
| pool_id | int  | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1654764078,
  "data": {
    "pool_id": 1,
    "metadata": "FIRST POOL",
    "state": "Open",
    "pool_account": {
      "address": "5EYCAe5ijiYfAXEth5DCfmQ9jnv4BFmdonKpbxwrc2nAw5uj",
      "display": "Pool#1(Stash)"
    },
    "nominator_account": {
      "address": "5DiHoyQWyP4aW6PcHoY6djTPT9B7Cy5ZqDfMxnBKUhFv9FKy"
    },
    "pool_reward_account": {
      "address": "5EYCAe5ijiYfAXEth5DCfmQ9jnv4BFmdonKpbxwrc2nAw5uj",
      "display": "Pool#1(Stash)"
    },
    "nominate_count": 0,
    "memberCount": 11,
    "total_bonded": "0",
    "reward_amount": "0",
    "depositor_account": {
      "address": "5DiHoyQWyP4aW6PcHoY6djTPT9B7Cy5ZqDfMxnBKUhFv9FKy"
    },
    "root_account": {
      "address": "5DiHoyQWyP4aW6PcHoY6djTPT9B7Cy5ZqDfMxnBKUhFv9FKy"
    },
    "state_toggler_account": {
      "address": "5DiHoyQWyP4aW6PcHoY6djTPT9B7Cy5ZqDfMxnBKUhFv9FKy"
    }
  }
}
```



## pool-activities

Get nomination pool activities list

```shell
curl -X POST 'https://westend.api.subscan.io/api/scan/nomination_pool/activities' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
   "pool_id": 1
  }'
```

### Request URL

`POST /api/scan/nomination_pool/activities`

### Payload

| Name    | Type | Require |
|---------|------|---------|
| pool_id | int  | yes     |
| row     | int  | yes     |
| page    | int  | no      |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1654764171,
  "data": {
    "count": 1,
    "list": [
      {
        "pool_id": 1,
        "event_index": "10693887-12",
        "extrinsic_index": "10693887-2",
        "block_num": 10693887,
        "block_timestamp": 1651660806,
        "module_id": "nominationpools",
        "event_id": "Created"
      }
    ]
  }
}
```

## pool-rewards

```shell
curl -X POST 'https://westend.api.subscan.io/api/scan/nomination_pool/rewards' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
   "address": "5ES1f2Q6PjK9DtZSKvRBCd2GeWfU1ExFjcmeA31jTqw1u8iK"
  }'
```

### Request URL

`POST /api/scan/nomination_pool/rewards`

### Payload

| Name    | Type   | Require |
|---------|--------|---------|
| address | string | yes     |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1654764281,
  "data": {
    "count": 1,
    "list": [
      {
        "pool_id": 6,
        "module_id": "nominationpools",
        "event_id": "PaidOut",
        "extrinsic_index": "11180970-3",
        "event_index": "11180970-9",
        "block_timestamp": 1654587198,
        "amount": "1390109349"
      }
    ]
  }
}
```