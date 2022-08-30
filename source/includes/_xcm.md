# XCM API (Unstable)

## xcm list

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/xcm/list' \
--header 'Content-Type: application/json' \
--data-raw '{
    "row": 10,
    "page":0
}'
```

### Request URL

`POST /api/scan/xcm/list`

### Payload

| Parameter       | Type   | Require | Default | Description                                               |
|-----------------|--------|---------|---------|-----------------------------------------------------------|
| row             | INT    | yes     |         |                                                           |
| page            | INT    | yes     |         |                                                           |
| address         | string | yes     |         | send or dest address(ss58 or h160)                        |
| origin_para_id  | INT    | yes     |         |                                                           |
| dest_para_id    | INT    | yes     |         |                                                           |
| extrinsic_index | string | yes     |         |                                                           |
| block_range     | string | yes     |         | block range(like 1-100 or 10000-20000)                    |
| status          | string | yes     |         | status filter, it can be (pending relayed success failed) |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1661840427,
  "data": {
    "count": 1,
    "list": [
      {
        "message_hash": "0x3c7f751839a0f3723511358242e36f30e59800d4fdf0fee20ff54dca2e6b44e1",
        "origin_event_index": "1074412-10",
        "from_account_id": "1a90d0431b84c3be14bcc627d3d1999ce2146d5280e5dbf49d9525bec916cb55",
        "origin_para_id": 2032,
        "origin_block_timestamp": 1661685330,
        "relayed_block_timestamp": 1661685342,
        "block_num": 11800671,
        "status": "success",
        "relayed_event_index": "11800671-2",
        "dest_event_index": "1747720-2",
        "dest_para_id": 2004,
        "to_account_id": "0x2bf7145b9da25567569c15c57758e6a13bbc00f2",
        "confirm_block_timestamp": 1661685348,
        "extrinsic_index": "1074412-2",
        "relayed_extrinsic_index": "11800671-1",
        "dest_extrinsic_index": "1747720-0",
        "child_para_id": 0,
        "child_dest": "",
        "assets": [
          {
            "enum_key": "Concrete",
            "asset_module": "tokens",
            "amount": "300000000000",
            "decimals": 10,
            "symbol": "INTR"
          }
        ]
      }
    ]
  }
}
```

## xcm meta

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/xcm/meta' \
--header 'Content-Type: application/json' \
--data-raw '{}'
```

### Request URL

`POST /api/scan/xcm/meta`

### Payload

| Parameter | Type | Require | Default | Description               |
|-----------|------|---------|---------|---------------------------|
| para_id   | INT  | no      | 0       | filter parachain metadata |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1661841040,
  "data": {
    "online_parachain": 0,
    "support_parachain": 17,
    "open_channel": 2,
    "all_channel": 8,
    "relayed_transfer_count": 1
  }
}
```

## xcm channels

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/xcm/channels' \
--header 'Content-Type: application/json' \
--data-raw '{}'
```

### Request URL

`POST /api/scan/xcm/channels`

### Payload

| Parameter      | Type   | Require | Default | Description                        |
|----------------|--------|---------|---------|------------------------------------|
| sender         | INT    | no      | 0       | para_id                            |
| recipient      | INT    | no      | 0       | para_id                            |
| status         | String | no      |         | closed accepted canceled requested |
| filter_para_id | INT    | no      | 0       | filter para_id channel             |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1661841178,
  "data": {
    "list": [
      {
        "sender": 2012,
        "recipient": 1000,
        "status": "requested",
        "transfer_count": 2,
        "active_at": 0,
        "proposed_max_capacity": 1000,
        "proposed_max_message_size": 102400
      }
    ]
  }
}
```

## xcm channel info

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/xcm/channel' \
--header 'Content-Type: application/json' \
--data-raw '{
   "sender": 2000,"recipient":2001
}'
```

### Request URL

`POST /api/scan/xcm/channel`

### Payload

| Parameter      | Type   | Require | Default | Description                        |
|----------------|--------|---------|---------|------------------------------------|
| sender         | INT    | yes     | 0       | para_id                            |
| recipient      | INT    | yes     | 0       | para_id                            |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1661841260,
  "data": {
    "sender": 2000,
    "recipient": 2004,
    "status": "accepted",
    "transfer_count": 0,
    "active_at": 1652243898,
    "proposed_max_capacity": 1000,
    "proposed_max_message_size": 102400
  }
}
```

## xcm stat

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/xcm/stat' \
--header 'Content-Type: application/json' \
--data-raw '{
   "start": "2022-08-01","recipient":"2002-08-31"
}'
```

### Request URL

`POST /api/scan/xcm/stat`

### Payload

| Parameter      | Type   | Require | Default | Description          |
|----------------|--------|---------|---------|----------------------|
| start          | string | yes     |         | timeDate(2022-08-01) |
| end            | string | yes     |         | timeDate(2022-08-01) |
| filter_para_id | INT    | no      | 0       | para_id              |

> Example Response

```json
{
  "code": 0,
  "message": "Success",
  "generated_at": 1661841586,
  "data": {
    "receiver": [
      {
        "time_utc": "2022-08-31",
        "total": 2
      }
    ],
    "send": [
      {
        "time_utc": "2022-08-30",
        "total": 1
      }
    ],
    "all": [
      {
        "time_utc": "2022-08-30",
        "total": 1
      }
    ]
  }
}
```