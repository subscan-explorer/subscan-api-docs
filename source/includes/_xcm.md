# XCM API (Unstable)


## xcm list

```shell
curl -X POST 'https://rococo.api.subscan.io/api/scan/xcm/list' \
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
  "generated_at": 1659401329,
  "data": {
    "count": 1,
    "list": [
      {
        "message_hash": "0xc1efee382afb40bfc434855ae476ca8f9bba4cd3b70a3bfb1485f69a7877d051",
        "origin_event_index": "2462336-5",
        "from_account_id": "6091891026519e68c7e482382f1fff6258e2b5cc282066d619586bd3858f5a3e",
        "origin_para_id": 1000,
        "origin_block_timestamp": 1657756518,
        "relayed_block_timestamp": 1657756530,
        "block_num": 13549764,
        "status": "success",
        "relayed_event_index": "13549764-1",
        "dest_event_index": "2267277-7",
        "dest_para_id": 2000,
        "dest_raw": {
          "V0": {
            "X2": {
              "col0": {
                "Parent": ""
              },
              "col1": {
                "Parachain": 2000
              }
            }
          }
        },
        "to_account_id": "6091891026519e68c7e482382f1fff6258e2b5cc282066d619586bd3858f5a3e",
        "to_account_raw": {
          "V0": {
            "X1": {
              "AccountId32": {
                "id": "0x6091891026519e68c7e482382f1fff6258e2b5cc282066d619586bd3858f5a3e",
                "network": {
                  "Any": ""
                }
              }
            }
          }
        },
        "confirm_block_timestamp": 1657756530,
        "assets": [
          {
            "enum_key": "ConcreteFungible",
            "asset_module": "Assets",
            "amount": "4999000000",
            "decimals": 6,
            "symbol": "USDt"
          }
        ],
        "extrinsic_index": "2462336-5"
      }
    ]
  }
}
```
