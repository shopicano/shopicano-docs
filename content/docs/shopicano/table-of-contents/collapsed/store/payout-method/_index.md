---
title: '# Payout Method'
weight: 5
---

# Payout Method API

## > List
```bash
GET {{host}}/payout-methods
```

Query params
```text
limit [Maximum number of elements]
page  [Number of page]
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
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
GET {{host}}/payout-method/{{payout_method_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
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
