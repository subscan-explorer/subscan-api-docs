# Runtime API

## runtime-list

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/runtime/list' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY'
```

### Request URL

`POST /api/scan/runtime/list`

> Example Response

```json

{
  "code": 0,
  "message": "Success",
  "generated_at": 1628587129,
  "data": {
    "list": [
      {
        "spec_version": 9230,
        "modules": "System|Babe|Timestamp|Indices|Balances|TransactionPayment|Authorship|Offences|Historical|Session|Grandpa|ImOnline|AuthorityDiscovery|ParachainsOrigin|Configuration|ParasShared|ParaInclusion|ParaInherent|ParaScheduler|Paras|Initializer|Dmp|Ump|Hrmp|ParaSessionInfo|ParasDisputes|Registrar|Auctions|Crowdloan|Slots|ParasSudoWrapper|AssignedSlots|Sudo|Mmr|Beefy|MmrLeaf|ValidatorManager|BridgeRococoGrandpa|BridgeWococoGrandpa|BridgeRococoMessages|BridgeWococoMessages|BridgeRococoMessagesDispatch|BridgeWococoMessagesDispatch|Collective|Membership|Utility|Proxy|Multisig|XcmPallet"
      },
      {
        "spec_version": 9220,
        "modules": "System|Babe|Timestamp|Indices|Balances|TransactionPayment|Authorship|Offences|Historical|Session|Grandpa|ImOnline|AuthorityDiscovery|ParachainsOrigin|Configuration|ParasShared|ParaInclusion|ParaInherent|ParaScheduler|Paras|Initializer|Dmp|Ump|Hrmp|ParaSessionInfo|ParasDisputes|Registrar|Auctions|Crowdloan|Slots|ParasSudoWrapper|AssignedSlots|Sudo|Mmr|Beefy|MmrLeaf|ValidatorManager|BridgeRococoGrandpa|BridgeWococoGrandpa|BridgeRococoMessages|BridgeWococoMessages|BridgeRococoMessagesDispatch|BridgeWococoMessagesDispatch|Collective|Membership|Utility|Proxy|Multisig|XcmPallet"
      },
      {
        "spec_version": 9190,
        "modules": "System|Babe|Timestamp|Indices|Balances|TransactionPayment|Authorship|Offences|Historical|Session|Grandpa|ImOnline|AuthorityDiscovery|ParachainsOrigin|Configuration|ParasShared|ParaInclusion|ParaInherent|ParaScheduler|Paras|Initializer|Dmp|Ump|Hrmp|ParaSessionInfo|ParasDisputes|Registrar|Auctions|Crowdloan|Slots|ParasSudoWrapper|AssignedSlots|Sudo|Mmr|Beefy|MmrLeaf|ValidatorManager|BridgeRococoGrandpa|BridgeWococoGrandpa|BridgeRococoMessages|BridgeWococoMessages|BridgeRococoMessagesDispatch|BridgeWococoMessagesDispatch|Collective|Membership|Utility|Proxy|Multisig|XcmPallet"
      }
    ]
  }
}
```

## runtime-info

```shell
curl -X POST 'https://polkadot.api.subscan.io/api/scan/runtime/metadata' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "spec": 25,
    "module": "Balances"
  }'
```

### Request URL

`POST /api/scan/runtime/metadata`

### Payload

| Name   | Type   | Require |
| ------ | ------ | ------- |
| spec   | int    | yes     |
| module | string | yes     |


> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1628587129,
    "data": {
        "info": {
            "metadata": [
                {
                    "name": "System",
                    "prefix": "System",
                    "storage": [
                        {
                            "name": "Account",
                            "modifier": "Default",
                            "type": {
                                "origin": "Map",
                                "n_map_type": {
                                    "hashers": [
                                        "Blake2_128Concat"
                                    ],
                                    "key_vec": [
                                        "[U8; 32]"
                                    ],
                                    "value": "frame_system:AccountInfo",
                                    "keys_id": 0,
                                    "value_id": 0
                                }
                            },
                            "fallback": "",
                            "docs": [
                                " The full account information for a particular account ID."
                            ]
                        }
                    ],
                    "calls": [
                        {
                            "lookup": "0000",
                            "name": "fill_block",
                            "docs": [
                                "A dispatch that will fill the block weight up to the given ratio."
                            ],
                            "args": [
                                {
                                    "TypeName": "",
                                    "name": "ratio",
                                    "type": "U32",
                                    "type_name": "Perbill"
                                }
                            ]
                        }
                    ],
                    "calls_value": {
                        "type": 136
                    },
                    "events": [
                        {
                            "lookup": "0000",
                            "name": "ExtrinsicSuccess",
                            "docs": [
                                "An extrinsic completed successfully."
                            ],
                            "args": [
                                "frame_support:weights:DispatchInfo"
                            ],
                            "args_type_name": [
                                "DispatchInfo"
                            ]
                        }
                    ],
                    "events_value": {
                        "type": 18
                    },
                    "constants": [
                        {
                            "name": "DbWeight",
                            "type": "frame_support:weights:RuntimeDbWeight",
                            "type_value": 147,
                            "constants_value": "40787d010000000000e1f50500000000",
                            "docs": [
                                " The weight of runtime database operations the runtime can invoke."
                            ]
                        }
                    ],
                    "errors": [
                        {
                            "name": "InvalidSpecName",
                            "doc": [
                                "The name of specification does not match between the current runtime",
                                "and the new runtime."
                            ]
                        }
                    ],
                    "errors_value": {
                        "type": 152
                    },
                    "index": 0
                }
            ]
        }
    }
}
```
