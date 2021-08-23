# Crust Network Specs

## crust-groups

groups list 

```shell
curl -X POST 'https://crust.subscan.io/api/scan/swork/groups' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 0
  }'
```

### Request URL

`POST /api/scan/swork/groups`

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


## crust-group-members

group members 

```shell
curl -X POST 'https://crust.subscan.io/api/scan/swork/group/members' \
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
                "reported_files_size": "50493"
            }
        ]
    }
}

```


## crust-member

group member info 

```shell
curl -X POST 'https://crust.subscan.io/api/scan/swork/group/member' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "address": "address"
  }'
```

### Request URL

`POST /api/scan/swork/group/member`

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
        "reported_files_size": "50493"
    }
}

```



## crust-member

group member info 

```shell
curl -X POST 'https://crust.subscan.io/api/scan/swork/member/files' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 0,
    "address": "address"
  }'
```

### Request URL

`POST /api/scan/swork/group/member/files`

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



## crust-orders

group orders list

```shell
curl -X POST 'https://crust.subscan.io/api/scan/swork/group/member/files' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "row": 2,
    "page": 0,
    "address": "address"
  }'
```

### Request URL

`POST /api/scan/swork/group/member/orders`

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
                "replicas": 0,
                "status": ""
            }
        ]
    }
}

```


## crust-daily

crust daily statistics

```shell
curl -X POST 'https://crust.subscan.io/api/scan/swork/daily' \
  --header 'Content-Type: application/json' \
  --header 'X-API-Key: YOUR_KEY' \
  --data-raw '{
    "start": "2021-08-19",
    "end": "2021-08-20",
  }'
```

### Request URL

`POST /api/scan/swork/daily`

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
                "file_count": 1
            }
        ]
    }
}
```
