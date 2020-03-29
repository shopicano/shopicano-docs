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
```bash

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
```bash

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
```bash

```

## > Get
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
