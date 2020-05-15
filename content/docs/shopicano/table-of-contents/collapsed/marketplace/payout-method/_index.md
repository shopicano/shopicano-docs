---
title: '# Payout Method'
weight: 6
---

# Payout Method API

## > Create
```bash
POST {{host}}/marketplace/payout-methods
```

Headers
```bash
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "name": "Bkash",
    "inputs": "Number",
    "is_published": false
}
```

Response `201`
```json
{
    "data": {
        "id": "2cfb44c7-a79b-46ba-a73c-315c9b59bf86",
        "name": "Bkash",
        "inputs": "Number",
        "is_published": true,
        "created_at": "2020-05-15T22:12:26.912179Z",
        "updated_at": "2020-05-15T22:12:26.912179Z"
    }
}
```

## > Update
```bash
PUT {{host}}/marketplace/payout-methods/{{payout_method_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "name": "Bkash",
    "inputs": "Number",
    "is_published": false
}
```

Response `200`
```json

```

## > List
```bash
GET {{host}}/marketplace/payout-methods
```

Query params
```text
limit [Maximum number of elements]
page  [Number of page]
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Response `200`
```json
{
    "data": [
        {
            "id": "dcd58b4c-3f1c-4cd2-9a60-648f1bbf20e2",
            "name": "Bkash",
            "inputs": "Number",
            "is_published": true,
            "created_at": "2020-05-15T22:12:36.692217Z",
            "updated_at": "2020-05-15T22:12:36.692217Z"
        },
        {
            "id": "2cfb44c7-a79b-46ba-a73c-315c9b59bf86",
            "name": "Bank",
            "inputs": "Account Name, Account No",
            "is_published": true,
            "created_at": "2020-05-15T22:12:26.912179Z",
            "updated_at": "2020-05-15T22:12:26.912179Z"
        }
    ]
}
```

## > Get
```bash
GET {{host}}/marketplace/payout-methods/{{payout_method_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Response `200`
```json
{
    "data": {
        "id": "2cfb44c7-a79b-46ba-a73c-315c9b59bf86",
        "name": "Bank",
        "inputs": "Account Name, Account No",
        "is_published": true,
        "created_at": "2020-05-15T22:12:26.912179Z",
        "updated_at": "2020-05-15T22:12:26.912179Z"
    }
}
```

## > Delete
```bash
DELETE {{host}}/marketplace/payout-methods/{{payout_method_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Response `204`
```bash

```
