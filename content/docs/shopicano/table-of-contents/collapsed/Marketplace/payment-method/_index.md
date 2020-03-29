# Payment Method API

## > Create
```bash
POST {{host}}/marketplace/payment-methods
```

Headers
```bash
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "name": "Card Payment",
    "processing_fee": 0,
    "min_processing_fee": 0,
    "max_processing_fee": 0,
    "is_published": false,
    "is_offline_payment": true,
    "is_flat": false
}
```

Response `201`
```json
{
    "data": {
        "id": "35b56019-9f88-498b-959f-2729b4092a2f",
        "name": "Card Payment",
        "processing_fee": 0,
        "min_processing_fee": 0,
        "max_processing_fee": 0,
        "is_published": false,
        "is_offline_payment": true,
        "is_flat": false,
        "created_at": "2020-03-11T06:36:46.608587Z",
        "updated_at": "2020-03-11T06:36:46.608587Z"
    }
}
```

## > Update
```bash
PUT {{host}}/marketplace/payment-methods/{{payment_method_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "name": "Card Payment",
    "processing_fee": 0,
    "min_processing_fee": 0,
    "max_processing_fee": 0,
    "is_published": false,
    "is_offline_payment": true,
    "is_flat": false
}
```

Response `200`
```json
{
    "data": {
        "id": "35b56019-9f88-498b-959f-2729b4092a2f",
        "name": "Card Payment",
        "processing_fee": 0,
        "min_processing_fee": 0,
        "max_processing_fee": 0,
        "is_published": false,
        "is_offline_payment": true,
        "is_flat": false,
        "created_at": "2020-03-11T06:36:46.608587Z",
        "updated_at": "2020-03-11T06:36:46.608587Z"
    }
}
```

## > List
```bash
GET {{host}}/marketplace/payment-methods
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
            "id": "2e1fd01e-6a31-42c1-9ecf-80b9588b419e",
            "name": "Cash Payment",
            "processing_fee": 0,
            "min_processing_fee": 0,
            "max_processing_fee": 0,
            "is_published": false,
            "is_offline_payment": true,
            "is_flat": false,
            "created_at": "2020-03-11T06:35:23.33677Z",
            "updated_at": "2020-03-11T06:35:23.336771Z"
        },
        {
            "id": "9f96ea80-73bf-402f-95ca-4945d09a6c37",
            "name": "Digital Payment",
            "processing_fee": 5,
            "min_processing_fee": 0,
            "max_processing_fee": 0,
            "is_published": true,
            "is_offline_payment": false,
            "is_flat": false,
            "created_at": "2020-02-24T05:57:14.288418Z",
            "updated_at": "2020-02-24T05:57:14.288418Z"
        }
    ]
}
```

## > Get
```bash
GET {{host}}/marketplace/payment-methods/{{payment_method_id}}
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
        "id": "35b56019-9f88-498b-959f-2729b4092a2f",
        "name": "Card Payment",
        "processing_fee": 0,
        "min_processing_fee": 0,
        "max_processing_fee": 0,
        "is_published": false,
        "is_offline_payment": true,
        "is_flat": false,
        "created_at": "2020-03-11T06:36:46.608587Z",
        "updated_at": "2020-03-11T06:36:46.608587Z"
    }
}
```

## > Delete
```bash
DELETE {{host}}/marketplace/payment-methods/{{payment_method_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Response `204`
```bash

```
