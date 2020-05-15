---
title: '# Business Account Type'
weight: 5
---

# Business Account Type API

## > Create
```bash
POST {{host}}/marketplace/business-account-type
```

Headers
```bash
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "name": "Non-profit",
    "is_published": false
}
```

Response `201`
```json
{
    "data": {
        "id": "2cfb44c7-a79b-46ba-a73c-315c9b59bf86",
        "name": "Non-profit",
        "is_published": true,
        "created_at": "2020-05-15T22:12:26.912179Z",
        "updated_at": "2020-05-15T22:12:26.912179Z"
    }
}
```

## > Update
```bash
PUT {{host}}/marketplace/business-account-types/{{business_account_type_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "name": "Individual",
    "is_published": false
}
```

Response `200`
```json

```

## > List
```bash
GET {{host}}/marketplace/business-account-types
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
            "name": "Partnership / LLP",
            "is_published": true,
            "created_at": "2020-05-15T22:12:36.692217Z",
            "updated_at": "2020-05-15T22:12:36.692217Z"
        },
        {
            "id": "2cfb44c7-a79b-46ba-a73c-315c9b59bf86",
            "name": "Non-profit",
            "is_published": true,
            "created_at": "2020-05-15T22:12:26.912179Z",
            "updated_at": "2020-05-15T22:12:26.912179Z"
        },
        {
            "id": "fd2bbbdf-d65a-4c02-8a56-a68e46d4b3c3",
            "name": "Corporation",
            "is_published": false,
            "created_at": "2020-05-15T22:12:15.605906Z",
            "updated_at": "2020-05-15T22:12:15.605906Z"
        },
        {
            "id": "e09ca038-7969-4fb0-9856-c4ea45a0a00b",
            "name": "Individual / Sole Proprietorship",
            "is_published": true,
            "created_at": "2020-05-15T22:11:58.615418Z",
            "updated_at": "2020-05-15T22:11:58.615419Z"
        }
    ]
}
```

## > Get
```bash
GET {{host}}/marketplace/business-account-type/{{business_account_type_id}}
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
        "name": "Non-profit",
        "is_published": true,
        "created_at": "2020-05-15T22:12:26.912179Z",
        "updated_at": "2020-05-15T22:12:26.912179Z"
    }
}
```

## > Delete
```bash
DELETE {{host}}/marketplace/business-account-type/{{business_account_type_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Response `204`
```bash

```
