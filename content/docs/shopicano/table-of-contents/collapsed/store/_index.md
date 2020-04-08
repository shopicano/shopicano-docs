---
title: '# Store'
weight: 2
---

# Store API

## > Get Store
```text
GET {{host}}/stores
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
        "id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
        "name": "Stylify",
        "address": "House : 4/2, Block : F, Lalmatia",
        "city": "Dhaka",
        "country": "Bangladesh",
        "postcode": "",
        "email": "stylify@shopicano.com",
        "phone": "01710339933",
        "status": "active",
        "description": "Stylify is a platform where you will get all the latest life style products.",
        "created_at": "2020-02-23T18:49:42.091795Z",
        "updated_at": "2020-02-23T18:49:42.091796Z",
        "user_id": "b6306c5c-8b95-4269-ba7a-c2e19da63dff",
        "user_name": "Sakib Sami",
        "user_email": "s4kibs4mi@gmail.com",
        "user_profile_picture": "",
        "user_phone": "",
        "user_status": "active",
        "user_permission": "user",
        "store_permission": "admin"
    }
}
```

Response `403`
```json
{
    "code": "403014",
    "title": "Unauthorized request"
}
```

## > Update Store
```text
PATCH {{host}}/stores
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "name": "Store Name",
    "address": "Store Address",
    "city": "Store City",
    "country": "Store Country",
    "postcode": "Store Postcode",
    "email": "Store Email",
    "phone": "Store Phone",
    "description": "Store Description",
    "logo_image": "store_logo_image.png",
    "cover_image": "store_cover_image.png",
    "is_product_creation_enabled": true,
    "is_order_creation_enabled": true,
    "is_auto_confirm_enabled": true
}
```

Response `200`
```json
{
    "data": {
        "id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
        "name": "Store Name",
        "address": "Store Address",
        "city": "Store City",
        "country": "Store Country",
        "postcode": "Store Postcode",
        "email": "Store Email",
        "phone": "Store Phone",
        "status": "active",
        "logo_image": "store_logo_image.png",
        "cover_image": "store_cover_image.png",
        "commission_rate": 10,
        "is_product_creation_enabled": true,
        "is_order_creation_enabled": true,
        "is_auto_confirm_enabled": true,
        "description": "Store Description",
        "created_at": "2020-02-23T18:49:42.091795Z",
        "updated_at": "2020-02-23T18:49:42.091796Z"
    }
}
```

Response `403`
```json
{
    "code": "403014",
    "title": "Unauthorized request"
}
```

## > List Store Stuffs
```text
GET {{host}}/stores/{{store_id}}/staffs
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
            "id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
            "name": "Stylify",
            "address": "House : 4/2, Block : F, Lalmatia",
            "city": "Dhaka",
            "country": "Bangladesh",
            "postcode": "",
            "email": "stylify@shopicano.com",
            "phone": "01710339933",
            "status": "active",
            "description": "Stylify is a platform where you will get all the latest life style products.",
            "created_at": "2020-02-23T18:49:42.091795Z",
            "updated_at": "2020-02-23T18:49:42.091796Z",
            "user_id": "b6306c5c-8b95-4269-ba7a-c2e19da63dff",
            "user_name": "Sakib Sami",
            "user_email": "s4kibs4mi@gmail.com",
            "user_profile_picture": "",
            "user_phone": "",
            "user_status": "active",
            "user_permission": "user",
            "store_permission": "admin"
        }
    ]
}
```

Response `403`
```json
{
    "code": "403014",
    "title": "Unauthorized request"
}
```

## > Add Store Stuff
```text
POST {{host}}/stores/{{store_id}}/staffs
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "email": "user@example.com",
    "permission_id": "2"
}
```

Response `200`
```json
{
    "title": "Staff added to store"
}
```

Response `403`
```json
{
    "code": "403014",
    "title": "Unauthorized request"
}
```

Response `409`
```json
{
    "code": "409015",
    "title": "User already staff"
}
```

Response `404`
```json
{
    "code": "404003",
    "title": "User not found",
    "errors": {}
}
```

## > Update Store Stuff
```text
PATCH {{host}}/stores/{{store_id}}/staffs/{{user_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "permission_id": "2"
}
```

Response `200`
```json
{
    "title": "Staff permission updated"
}
```

Response `403`
```json
{
    "code": "403014",
    "title": "Unauthorized request"
}
```

Response `404`
```json
{
    "code": "404003",
    "title": "User not found",
    "errors": {}
}
```

## > Remove Store Stuff
```text
DELETE {{host}}/stores/{{store_id}}/staffs/{{user_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Response `204`
```json

```

Response `403`
```json
{
    "code": "403014",
    "title": "Unauthorized request"
}
```
