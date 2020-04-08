---
title: '# Address'
weight: 7
---

# Address API

## > Create
```bash
POST {{host}}/addresses
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Body
```json
{
    "name": "Home",
    "address": "Block : F",
    "city": "Dhaka",
    "state": "Dhaka",
    "country_id": 18,
    "postcode": "1207",
    "email": "root@sakib.ninja",
    "phone": "01710000000"
}
```

Note : `country_id` is `location_id`. Location ID for `Bangladesh` is `18`.

Response `201`
```json
{
    "data": {
        "id": "1b5c0621-8efd-48e9-af07-e934c8a4d6e5",
        "name": "Home",
        "address": "Block : F",
        "city": "Dhaka",
        "country": "Bangladesh",
        "state": "Dhaka",
        "postcode": "1207",
        "email": "root@sakib.ninja",
        "phone": "01710000000",
        "created_at": "2020-04-08T12:01:51.073726Z",
        "updated_at": "2020-04-08T12:01:51.073726Z"
    }
}
```

## > Get
```bash
GET {{host}}/addresses/{{address_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Response `200`
```json
{
    "data": {
        "id": "1b5c0621-8efd-48e9-af07-e934c8a4d6e5",
        "name": "Home",
        "address": "Block : F",
        "city": "Dhaka",
        "country": "Bangladesh",
        "state": "Dhaka",
        "postcode": "1207",
        "email": "root@sakib.ninja",
        "phone": "01710000000",
        "created_at": "2020-04-08T12:01:51.073726Z",
        "updated_at": "2020-04-08T12:01:51.073726Z"
    }
}
```

## > Update
```bash
PUT {{host}}/addresses/{{address_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Body
```json
{
    "name": "Home",
    "address": "Block : F",
    "city": "Dhaka",
    "state": "Dhaka",
    "country_id": 18,
    "postcode": "1207",
    "email": "root@sakib.ninja",
    "phone": "01710000000"
}
```

Response `200`
```json
{
    "data": {
        "id": "1b5c0621-8efd-48e9-af07-e934c8a4d6e5",
        "name": "Home",
        "address": "Block : F",
        "city": "Dhaka",
        "country": "Bangladesh",
        "state": "Dhaka",
        "postcode": "1207",
        "email": "root@sakib.ninja",
        "phone": "01710000000",
        "created_at": "2020-04-08T12:01:51.073726Z",
        "updated_at": "2020-04-08T12:01:51.073726Z"
    }
}
```

## > Delete
```bash
DELETE {{host}}/addresses/{{address_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Response `204`
```json

```

## > List
```bash
GET {{host}}/addresses
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Response `200`
```json
{
    "data": [
        {
            "id": "cd4d777f-90ec-407b-833a-adca883e3395",
            "name": "Home",
            "address": "Block : F",
            "city": "Dhaka",
            "country": "Bahrain",
            "state": "Dhaka",
            "postcode": "1207",
            "email": "root@sakib.ninja",
            "phone": "01710000000",
            "created_at": "2020-04-08T12:38:16.350654Z",
            "updated_at": "2020-04-08T12:38:16.350654Z"
        },
        {
            "id": "3ad6a051-42e8-4f0f-ae08-51fe7be547a0",
            "name": "Home",
            "address": "Block : F",
            "city": "Dhaka",
            "country": "Bangladesh",
            "state": "Dhaka",
            "postcode": "1207",
            "email": "root@sakib.ninja",
            "phone": "01710000000",
            "created_at": "2020-04-08T12:37:59.622081Z",
            "updated_at": "2020-04-08T12:37:59.622081Z"
        },
        {
            "id": "6a710888-eb1c-4855-9f21-8fd343510fec",
            "name": "Home",
            "address": "Block : F",
            "city": "Dhaka",
            "country": "Bangladesh",
            "state": "Dhaka",
            "postcode": "1207",
            "email": "root@sakib.ninja",
            "phone": "01710000000",
            "created_at": "2020-04-08T12:37:56.922811Z",
            "updated_at": "2020-04-08T12:37:56.922811Z"
        }
    ]
}
```
