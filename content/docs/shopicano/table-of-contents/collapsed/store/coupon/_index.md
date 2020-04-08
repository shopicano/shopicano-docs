---
title: '# Coupon'
weight: 2
---

# Coupon API

## > Create
```bash
POST {{host}}/marketplace/coupons
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "code": "HELLO",
    "discount_amount": 100,
    "discount_type": "product_discount",
    "start_at": "02-04-2020T15:04",
    "end_at": "20-04-2020T15:04",
    "is_active": true,
    "is_flat_discount": false,
    "is_user_specific": false,
    "max_discount": 100,
    "max_usage": 3,
    "max_usage_per_user": 1,
    "min_order_value": 0
}
```

Response `201`
```json
{
    "title": "Coupon created",
    "data": {
        "id": "00832bc1-c598-4972-81ca-350d62693d6b",
        "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
        "code": "HELLO",
        "is_active": true,
        "discount_amount": 100,
        "is_flat_discount": false,
        "is_user_specific": false,
        "max_discount": 100,
        "max_usage": 3,
        "max_usage_per_user": 1,
        "min_order_value": 0,
        "discount_type": "product_discount",
        "start_at": "2020-04-02T15:04:00Z",
        "end_at": "2020-04-20T15:04:00Z",
        "created_at": "2020-04-08T20:01:28.640861Z",
        "updated_at": "2020-04-08T20:01:28.640861Z"
    }
}
```

## > Update
```bash
PUT {{host}}/marketplace/coupons/{{coupon_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "code": "HELLO",
    "discount_amount": 100,
    "discount_type": "product_discount",
    "start_at": "02-04-2020T15:04",
    "end_at": "20-04-2020T15:04",
    "is_active": true,
    "is_flat_discount": false,
    "is_user_specific": false,
    "max_discount": 100,
    "max_usage": 3,
    "max_usage_per_user": 1,
    "min_order_value": 0
}
```

Response `200`
```json
{
    "data": {
        "id": "00832bc1-c598-4972-81ca-350d62693d6b",
        "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
        "code": "HELLO",
        "is_active": true,
        "discount_amount": 100,
        "is_flat_discount": false,
        "is_user_specific": false,
        "max_discount": 100,
        "max_usage": 3,
        "max_usage_per_user": 1,
        "min_order_value": 0,
        "discount_type": "product_discount",
        "start_at": "2020-04-02T15:04:00Z",
        "end_at": "2020-04-20T15:04:00Z",
        "created_at": "2020-04-08T20:01:28.640861Z",
        "updated_at": "2020-04-08T20:01:28.640861Z"
    }
}
```

## > List
```bash
GET {{host}}/marketplace/coupons
```

Query params
```text
query [coupon code]
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
            "id": "94868306-e919-4d32-a06f-73f714e3afe8",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "code": "HELLO1",
            "is_active": true,
            "discount_amount": 100,
            "is_flat_discount": false,
            "is_user_specific": false,
            "max_discount": 100,
            "max_usage": 3,
            "max_usage_per_user": 1,
            "min_order_value": 100,
            "discount_type": "product_discount",
            "start_at": "2020-04-02T15:04:00Z",
            "end_at": "2020-04-20T15:04:00Z",
            "created_at": "2020-04-08T20:04:24.726209Z",
            "updated_at": "2020-04-08T20:04:24.726209Z"
        },
        {
            "id": "00832bc1-c598-4972-81ca-350d62693d6b",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "code": "HELLO",
            "is_active": true,
            "discount_amount": 100,
            "is_flat_discount": false,
            "is_user_specific": false,
            "max_discount": 100,
            "max_usage": 3,
            "max_usage_per_user": 0,
            "min_order_value": 0,
            "discount_type": "product_discount",
            "start_at": "2020-04-02T15:04:00Z",
            "end_at": "2020-04-20T15:04:00Z",
            "created_at": "2020-04-08T20:01:28.640861Z",
            "updated_at": "2020-04-08T20:01:28.640861Z"
        },
        {
            "id": "5791de99-e12c-4c12-93d4-9896ea4d9cce",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "code": "HYN100_MAX100",
            "is_active": true,
            "discount_amount": 100,
            "is_flat_discount": false,
            "is_user_specific": false,
            "max_discount": 100,
            "max_usage": 3,
            "max_usage_per_user": 0,
            "min_order_value": 0,
            "discount_type": "product_discount",
            "start_at": "2020-04-02T15:04:00Z",
            "end_at": "2020-04-20T15:04:00Z",
            "created_at": "2020-04-08T19:45:25.866319Z",
            "updated_at": "2020-04-08T19:45:25.866319Z"
        }
    ]
}
```

## > Get
```bash
GET {{host}}/marketplace/coupons/{{coupon_id}}
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
        "coupon": {
            "id": "94868306-e919-4d32-a06f-73f714e3afe8",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "code": "HELLO1",
            "is_active": true,
            "discount_amount": 100,
            "is_flat_discount": false,
            "is_user_specific": false,
            "max_discount": 100,
            "max_usage": 3,
            "max_usage_per_user": 1,
            "min_order_value": 100,
            "discount_type": "product_discount",
            "start_at": "2020-04-02T15:04:00Z",
            "end_at": "2020-04-20T15:04:00Z",
            "created_at": "2020-04-08T20:04:24.726209Z",
            "updated_at": "2020-04-08T20:04:24.726209Z"
        },
        "users": [
            "b33b8f56-8227-4725-b461-16e39d2242ce"
        ]
    }
}
```

## > Delete
```bash
DELETE {{host}}/marketplace/coupons/{{coupon_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Response `204`
```bash

```

## > Add Users
```text
PATCH {{host}}/marketplace/coupons/{{coupon_id}}/users
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "users": [
        "b33b8f56-8227-4725-b461-16e39d2242ce"
    ]
}
```

Response `200`
```json

```

## > Remove Users
```text
DELETE {{host}}/marketplace/coupons/{{coupon_id}}/users
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "users": [
        "b33b8f56-8227-4725-b461-16e39d2242ce"
    ]
}
```

Response `204`
```json

```
