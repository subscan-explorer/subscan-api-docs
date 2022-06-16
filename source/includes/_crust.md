# Crust Network Specs

## crust-groups

groups list 

```shell
curl -X POST 'https://crust.api.subscan.io/api/scan/swork/groups' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/swork/groups`


### Payload

| Name        | Type   | Require                           |
|-------------|--------|-----------------------------------|
| group_owner | string | no                                |
| order       | string | no(desc,asc)                      |
| order_field | string | no(power,total_stake,members,cap) |
| row         | int    | yes                               |
| page        | int    | no                               |

> Example Response

```json

{
    "code": 0,
    "message": "Success",
    "generated_at": 1629344123,
    "data": {
        "count": 1,
        "list": [
            {
                "stash": "cTJSAVfgz1EBF466tsnQyxvWBmsuoKSsSNaa8jqCom1BBbaCj",
                "controller": "cTHAWc2qaAXRDgjqTxYj7cPYrqR7LgogTmzPouUhXukQgGGxD",
                "power": "1073792317",
                "limit_stake": "0",
                "total_stake": "1250000000000000000",
                "members": 1,
                "cap": "1073792317"
            }
        ]
    }
}

```

## crust-group

group info 

```shell
curl -X POST 'https://crust.api.subscan.io/api/scan/swork/group' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "group_owner": "5EAEWGZDwj9Ext8VcG6W892x2kxNaKCxzVFsrvkfKSLyekSF"
  }'
```

### Request URL

`POST /api/scan/swork/group`

### Payload

| Name        | Type   | Require   |
| ----------- | ------ | --------- |
| group_owner | string | no        |

> Example Response

```json

{
    "code": 0,
    "message": "Success",
    "generated_at": 1629774809,
    "data": {
        "stash": "5EAEWGZDwj9Ext8VcG6W892x2kxNaKCxzVFsrvkfKSLyekSF",
        "controller": "5Ctacdhp72PDbXs4h2Qdmc5d6J9uwg1zPu5Z2aFPUBaUKGwH",
        "power": "1073792317",
        "limit_stake": "0",
        "total_stake": "1250000000000000000",
        "members": 1,
        "cap": "1073792317"
    }
}

```

## crust-group-members

group members 

```shell
curl -X POST 'https://crust.api.subscan.io/api/scan/swork/group/members' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 0,
    "group_owner": "group_owner"
  }'
```

### Request URL

`POST /api/scan/swork/group/members`

### Payload

| Name        | Type   | Require   |
| ----------- | ------ | --------- |
| group_owner | string | no        |
| row         | int    | yes       |
| page        | int    | yes       |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1629344245,
    "data": {
        "count": 1,
        "list": [
            {
                "account_id": "cTHATJrSgZM2haKfn5e47NSP5Y5sqSCCToxrShtVifD2Nfxv5",
                "cap": "1073792317",
                "used": "50493",
                "spare": "1073741824",
                "report_slot": 40200,
                "punishment_deadline": 0,
                "reported_files_size": "50493"
            }
        ]
    }
}

```


## crust-member

group member info 

```shell
curl -X POST 'https://crust.api.subscan.io/api/scan/swork/member' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "address"
  }'
```

### Request URL

`POST /api/scan/swork/member`

### Payload

| Name        | Type   | Require   |
| ----------- | ------ | --------- |
| address     | string | yes        |

> Example Response

```json

{
    "code": 0,
    "message": "Success",
    "generated_at": 1629344340,
    "data": {
        "account_id": "cTHATJrSgZM2haKfn5e47NSP5Y5sqSCCToxrShtVifD2Nfxv5",
        "cap": "1073792317",
        "used": "50493",
        "spare": "1073741824",
        "report_slot": 40200,
        "punishment_deadline": 0,
        "reported_files_size": "50493"
    }
}

```



## crust-member

group member info 

```shell
curl -X POST 'https://crust.api.subscan.io/api/scan/swork/member/files' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 0,
    "address": "address"
  }'
```

### Request URL

`POST /api/scan/swork/member/files`

### Payload

| Name        | Type   | Require   |
| ----------- | ------ | --------- |
| address     | string | yes       |
| row         | int    | yes       |
| page        | int    | yes       |

> Example Response

```json

{
    "code": 0,
    "message": "Success",
    "generated_at": 1629344520,
    "data": {
        "count": 0,
        "list": [
            {
                "account_id": "cTHATJrSgZM2haKfn5e47NSP5Y5sqSCCToxrShtVifD2Nfxv5",
                "rank": 0,
                "cid": "QmSeb8GXpkRiAb4yd8SpWsDCSXVjvcpnjZgiQ3ocgrPnSp",
                "valid_at": 2140,
                "anchor": "0xd9aa29dda8ade9718b38681adaf6f84126531246b40a56c02eff8950bb9a78b7c459721ce976c5c0c9cd4c743cae107e25adc3a85ed7f401c8dde509d96dcba0",
                "file_size": "23710",
                "expired_at": 2594488,
                "earning": "545373"
            }
        ]
    }
}

```

## crust-member-orders

group orders list

```shell
curl -X POST 'https://crust.api.subscan.io/api/scan/swork/member/orders' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 0,
    "address": "address"
  }'
```

### Request URL

`POST /api/scan/swork/member/orders`

### Payload

| Name        | Type   | Require   |
| ----------- | ------ | --------- |
| address     | string | yes       |
| row         | int    | yes       |
| page        | int    | yes       |

> Example Response

```json

{
    "code": 0,
    "message": "Success",
    "generated_at": 1629345848,
    "data": {
        "count": 1,
        "list": [
            {
                "cid": "QmSeb8GXpkRiAb4yd8SpWsDCSXVjvcpnjZgiQ3ocgrPnSp",
                "stash": "cTHATJrSgZM2haKfn5e47NSP5Y5sqSCCToxrShtVifD2Nfxv5",
                "file_size": "23710",
                "expired_at": 2594488,
                "block_timestamp": 1542109213,
                "replicas": 0,
                "status": "",
                "prepaid": "0",
                "amount": "0"
            }
        ]
    }
}

```


## crust-daily

crust daily statistics

```shell
curl -X POST 'https://crust.api.subscan.io/api/scan/swork/daily' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "start": "2021-08-19",
    "end": "2021-08-20",
  }'
```

### Request URL

`POST /api/scan/swork/daily`

### Payload

| Name        | Type   | Require   |
| ----------- | ------ | --------- |
| start       | string | yes       |
| end         | string | yes       |
| category    | string | yes(nodes,storage,files)       |

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1629448624,
    "data": {
        "list": [
            {
                "time_utc": "2021-08-19T00:00:00+08:00",
                "node_count": 1,
                "storage": "1",
                "file_count": 1,
                "total_storage": "0"
            }
        ]
    }
}
```


## crust-orders

crust daily statistics

```shell
curl -X POST 'https://crust.api.subscan.io/api/scan/swork/orders' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 100,
    "page": 0,
  }'
```

### Request URL

`POST /api/scan/swork/orders`


### Payload

| Name        | Type   | Require   |
| ----------- | ------ | --------- |
| row  | int  | yes     |
| page | int  | yes     |
| address     | array  | no       |
| expired_status | int | 1(not expired),2(expired less than 15 day),3(expired more than 15 day)|

> Example Response

```json
{
    "code": 0,
    "message": "Success",
    "generated_at": 1631172734,
    "data": {
        "count": 397,
        "list": [
            {
                "cid": "QmPyXuL5vnbjSxjMKcKc1GVLz6FjWe1aBKURjWAD37U1Ko",
                "stash": "cTHczioKf8SVgQoi6YuzWcGxA7DcHFgqoyg2vT2hV3GpUE52w",
                "file_size": "8111111111",
                "expired_at": 0,
                "block_timestamp": 1631171958,
                "replicas": 0,
                "status": "",
                "prepaid": "0",
                "amount": "14102030"
            }
        ]
    }
}
```
