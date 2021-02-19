# ParaChain API

## parachains


```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/chains' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
  --data-raw '{
    "status": 3
  }'
```

### Request URL

`POST /api/scan/parachain/chains`

### Payload

| Parameter | Type | Require | Default | Description                 |
| --------- | ---- | ------- | ------- | --------------------------- |
| status      | int  | no     |    0     | Enum(1:Proposal&#124;2:Upcoming&#124;3:Online) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": {
    "chains": [
      {
        "para_id": 12623,
        "name": "KILT PC1"
      }
    ],
    "count": 1
  }
}
```

## proposals

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/proposals' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/parachain/proposals`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": [
    {
      "para_id": 82406,
      "name": "HydraDX Hydrate",
      "proposer": "5D9f9sNeWckuicjnN4NK4oXc6HVR1bR99xXKztieDqEoTndt",
      "validators": [
        "5D9f9sNeWckuicjnN4NK4oXc6HVR1bR99xXKztieDqEoTndt",
        "5FUECwwDKe2GqXDseVixfjDt8P3aidQApEh5aVPpwLPuKRfx"
      ],
      "balance": "1000000000000000"
    },
    {
      "para_id": 777,
      "name": "Unit Network",
      "proposer": "5FnJizBEEraXQdQyQL9iJ6jtACxMPDPYFC9KrtnsFYAZaJNu",
      "validators": [
        "5FnJizBEEraXQdQyQL9iJ6jtACxMPDPYFC9KrtnsFYAZaJNu",
        "5GKxCfoF9sANpKSH5K7cRx6kJrvvkchfnaZbKUYFge3N8rqv"
      ],
      "balance": "1000000000000000"
    },
    {
      "para_id": 1617,
      "name": "Starks Network",
      "proposer": "5FHCaBgXVmj4iStBArBgPKubNJGRZCjja1j1SfdaKMu5KA2X",
      "validators": [
        "5G3zwZ72e6rbJgx6cfmpKac3yBPsLM1hC173U6XNeMexqMhS",
        "5GCc7JDdXQ8QKnm8itDBd7hbKCKziS8eDrTTFeXmj6HhKTHk"
      ],
      "balance": "1000000000000000"
    },
    {
      "para_id": 59,
      "name": "ChainX",
      "proposer": "5CdP9o2qTCPe26e3J5kWXm1XDrT9G9eQ6NquiYGtqZaEG7aw",
      "validators": [
        "5ExnkKkHG1xfgoCLjQ2DTHBkRxdoUrsnCsVorWKPsESrtpmd",
        "5F7aGEQ3HgUxmJb7z8DVSth2nfkAFBKyXKsgSEhPcV1crfF7"
      ],
      "balance": "1000000000000000"
    },
    ...
  ]
}
```

## meta

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/parachain/meta' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/parachain/meta`

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "ttl": 1,
  "data": {
    "proposed_count": 0,
    "approved_count": 0,
    "registered_count": 1
  }
}
```
