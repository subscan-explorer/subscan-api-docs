# Moonbeam Network Specs

## reward-slash

```shell
curl -X POST 'https://moonbase.api.subscan.io/api/scan/orbiters/rewards' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 20,
    "page": 0,
    "address": "0xF6e12239Df61084368909db33D2989Fe0E67928A"
  }'
```

### Request URL

`POST /api/scan/orbiters/rewards`

### Payload

| Name        | Type   | Require | Description  |
|-------------|--------|---------|--------------|
| row         | int    | yes     |              |
| page        | int    | yes     |              |
| address     | string | yes     | h160 address |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1670895560,
  "data": {
    "count": 861,
    "list": [
      {
        "module_id": "moonbeamorbiters",
        "event_id": "OrbiterRewarded",
        "extrinsic_index": "3345032-0",
        "event_index": "3345032-1",
        "block_timestamp": 1670892840,
        "amount": "4468869501871997216"
      }
    ]
  }
}
```