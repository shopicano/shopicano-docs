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
            "id": "93d47723-b393-457a-8863-99aa04625bdb",
            "name": "Stationary Items",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "description": "All stationary items will go here",
            "image": "categories/45de5f58-b532-409f-a2d9-72e4b41852ab-c3RhdGlvbmVyeS1pdGVtcy01MDB4NTAw.jpeg",
            "count": 0,
            "is_published": true,
            "created_at": "2020-02-23T19:01:56.884011Z",
            "updated_at": "2020-02-23T19:01:56.884011Z"
        },
        {
            "id": "a53d97b6-2565-4893-8846-b55ff9ef03ea",
            "name": "Foods",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "description": "All food items will go here",
            "image": "categories/dd28b18a-5467-4fb8-8acc-c71890cc3798-MTIwMHB4LUdvb2RfRm9vZF9EaXNwbGF5Xy1fTkNJX1Zpc3VhbHNfT25saW5l.jpg",
            "count": 0,
            "is_published": true,
            "created_at": "2020-02-23T19:00:51.641459Z",
            "updated_at": "2020-02-23T19:00:51.641459Z"
        },
        {
            "id": "db802c1a-3960-436f-aa6c-ecb7d88918ec",
            "name": "Cosmetics",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "description": "All women cosmetics products will go here",
            "image": "categories/1ecc401a-22bb-4d9a-a39e-ad3040d15030-dW5uYW1lZA==.jpg",
            "count": 1,
            "is_published": true,
            "created_at": "2020-02-23T18:59:53.271448Z",
            "updated_at": "2020-02-23T18:59:53.271448Z"
        },
        {
            "id": "af99e634-a3c7-4d8e-b0c3-9ffea33736e7",
            "name": "Digital Products",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "description": "All digital products will go here.",
            "image": "categories/00650b85-1dd7-426c-bddb-05f6459d2b28-MTQxMzkxNi1ob3ctdG8tY3JlYXRlLWEtYnVzaW5lc3MtcGxhbi1mb3IteW91ci1kaWdpdGFsLXByb2R1Y3Qtc3RvcmUtRVhQ.png",
            "count": 0,
            "is_published": true,
            "created_at": "2020-02-23T18:55:43.493006Z",
            "updated_at": "2020-02-23T18:56:39.376107Z"
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
