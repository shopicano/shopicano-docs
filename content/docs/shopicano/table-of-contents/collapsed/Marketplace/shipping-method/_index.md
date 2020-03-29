# Shipping Method API

## > Create
```bash
POST {{host}}/marketplace/shipping-methods
```

Headers
```bash
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "name": "DHL",
    "delivery_charge": 100,
    "approximate_delivery_time": 3,
    "weight_unit": "kg",
    "is_published": true
}
```

Response `201`
```json
{
    "data": {
        "id": "8cfa51bf-fc7a-40fd-8340-4377e2feac43",
        "name": "DHL",
        "approximate_delivery_time": 3,
        "delivery_charge": 100,
        "weight_unit": "kg",
        "is_flat": false,
        "is_published": true,
        "created_at": "2020-03-11T06:48:05.311684Z",
        "updated_at": "2020-03-11T06:48:05.311684Z"
    }
}
```

## > Update
```bash
PUT {{host}}/marketplace/shipping-methods/{{shipping_method_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "name": "DHL",
    "delivery_charge": 100,
    "approximate_delivery_time": 3,
    "weight_unit": "kg",
    "is_published": true
}
```

Response `201`
```json
{
    "data": {
        "id": "8cfa51bf-fc7a-40fd-8340-4377e2feac43",
        "name": "DHL",
        "approximate_delivery_time": 3,
        "delivery_charge": 100,
        "weight_unit": "kg",
        "is_flat": false,
        "is_published": true,
        "created_at": "2020-03-11T06:48:05.311684Z",
        "updated_at": "2020-03-11T06:48:05.311684Z"
    }
}
```

## > List
```bash
GET {{host}}/marketplace/shipping-methods
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
            "id": "8cfa51bf-fc7a-40fd-8340-4377e2feac43",
            "name": "DHL",
            "approximate_delivery_time": 3,
            "delivery_charge": 100,
            "weight_unit": "kg",
            "is_flat": false,
            "is_published": true,
            "created_at": "2020-03-11T06:48:05.311684Z",
            "updated_at": "2020-03-11T06:48:05.311684Z"
        },
        {
            "id": "eb282e77-d571-42c1-bf11-47cca125dec4",
            "name": "Standard",
            "approximate_delivery_time": 5,
            "delivery_charge": 500,
            "weight_unit": "kg",
            "is_flat": true,
            "is_published": true,
            "created_at": "2020-02-24T08:36:31.779159Z",
            "updated_at": "2020-02-24T08:36:31.779159Z"
        }
    ]
}
```

## > Get
```bash
GET {{host}}/marketplace/shipping-methods/{{shipping_method_id}}
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
        "id": "8cfa51bf-fc7a-40fd-8340-4377e2feac43",
        "name": "DHL",
        "approximate_delivery_time": 3,
        "delivery_charge": 100,
        "weight_unit": "kg",
        "is_flat": false,
        "is_published": true,
        "created_at": "2020-03-11T06:48:05.311684Z",
        "updated_at": "2020-03-11T06:48:05.311684Z"
    }
}
```

## > Delete
```bash
DELETE {{host}}/marketplace/shipping-methods/{{shipping_method_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Response `204`
```bash

```
