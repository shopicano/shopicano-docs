---
title: '# Category'
weight: 2
---

# Category API

## > Create
```bash
POST {{host}}/marketplace/categories
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
PUT {{host}}/marketplace/categories/{{category_id}}
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
GET {{host}}/marketplace/categories
```

Query params
```text
query [category_name]
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
            "id": "4c3b8713-2b02-4960-a4ce-fcd11784398a",
            "name": "Running Bike",
            "store_id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
            "description": "All type of running shoes belongs to it",
            "image": "https://images.unsplash.com/photo-1472851294608-062f824d29cc",
            "count": 0,
            "is_published": true,
            "created_at": "2020-03-11T07:28:34.111009Z",
            "updated_at": "2020-03-11T07:28:34.111009Z"
        }
    ]
}
```

## > Get
```bash
GET {{host}}/marketplace/categories/{{category_id}}
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
DELETE {{host}}/marketplace/categories/{{category_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Response `204`
```bash

```
