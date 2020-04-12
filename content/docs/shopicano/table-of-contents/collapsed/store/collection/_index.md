---
title: '# Collection'
weight: 3
---

# Collection API

## > Create
```bash
POST {{host}}/marketplace/collections
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "name": "Popular Items",
    "description": "Popular Items",
    "image": "https://images.unsplash.com/photo-1472851294608-062f824d29cc",
    "is_published": true
}
```

Response `201`
```json
{
    "data": {
        "id": "4c3b8713-2b02-4960-a4ce-fcd11784398a",
        "name": "Running Bike",
        "description": "All type of running shoes belongs to it",
        "image": "https://images.unsplash.com/photo-1472851294608-062f824d29cc",
        "is_published": true,
        "created_at": "2020-03-11T07:28:34.111009Z",
        "updated_at": "2020-03-11T07:28:34.111009Z"
    }
}
```

## > Update
```bash
PUT {{host}}/marketplace/collections/{{collection_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "name": "Running Bike",
    "description": "All type of running shoes belongs to it",
    "image": "https://images.unsplash.com/photo-1472851294608-062f824d29cc",
    "is_published": true
}
```

Response `200`
```json
{
    "data": {
        "id": "4c3b8713-2b02-4960-a4ce-fcd11784398a",
        "name": "Running Bike",
        "description": "All type of running shoes belongs to it",
        "image": "https://images.unsplash.com/photo-1472851294608-062f824d29cc",
        "is_published": true,
        "created_at": "2020-03-11T07:28:34.111009Z",
        "updated_at": "2020-03-11T07:28:34.111009Z"
    }
}
```

## > List
```bash
GET {{host}}/marketplace/collections
```

Query params
```text
query [collection_name]
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
            "id": "e2960bc6-44a9-40e3-a35f-e08b8d97138a",
            "name": "Hello",
            "description": "Hello",
            "image": "collections/6ff1ea26-a46e-48eb-92e3-8b59207d59bc-bG9nbw==.png",
            "is_published": false,
            "number_of_products": 1,
            "created_at": "2020-04-12T13:22:45.097024Z"
        },
        {
            "id": "d738f619-dc57-40da-9ec0-4f35f0d475a8",
            "name": "Summer",
            "description": "All products",
            "image": "",
            "is_published": true,
            "number_of_products": 0,
            "created_at": "2020-03-30T06:48:21.575177Z"
        }
    ]
}
```

## > Get
```bash
GET {{host}}/marketplace/collections/{{collection_id}}
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
        "id": "4c3b8713-2b02-4960-a4ce-fcd11784398a",
        "name": "Running Bike",
        "description": "All type of running shoes belongs to it",
        "image": "https://images.unsplash.com/photo-1472851294608-062f824d29cc",
        "is_published": true,
        "created_at": "2020-03-11T07:28:34.111009Z",
        "updated_at": "2020-03-11T07:28:34.111009Z"
    }
}
```

## > Delete
```bash
DELETE {{host}}/marketplace/collections/{{collection_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Response `204`
```bash

```

## > Add Products
```bash
PATCH {{host}}/marketplace/collections/{{collection_id}}/products
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "product_ids": [
        "9c5cd45c-f726-477d-9029-7efc4e453675"
    ]
}
```

Response `200`
```json

```

## > Remove Products
```bash
DELETE {{host}}/marketplace/collections/{{collection_id}}/products
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "product_ids": [
        "9c5cd45c-f726-477d-9029-7efc4e453675"
    ]
}
```

Response `204`
```json

```

## > List Products
```bash
GET {{host}}/marketplace/collections/{{collection_id}}/products
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

```
