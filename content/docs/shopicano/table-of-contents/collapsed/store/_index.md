---
title: '# Store'
weight: 2
---

# Store API

## > Create Store
```text
POST {{host}}/stores
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Body
```json
{
    "name": "Shopicano",
    "address_id": "cd4d777f-90ec-407b-833a-adca883e3395",
    "description": "Shopicano store",
    "logo_image": "/images/logo.png",
    "cover_image": "/images/cover.png"
}
```

Response `201`
```json
{
    "data": {
        "id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
        "name": "Shopicano",
        "status": "active",
        "logo_image": "/images/logo.png",
        "cover_image": "/images/cover.png",
        "commission_rate": 0,
        "is_product_creation_enabled": false,
        "is_order_creation_enabled": false,
        "is_auto_confirm_enabled": false,
        "description": "Shopicano store",
        "address": "Block : F",
        "city": "Dhaka",
        "country": "Bahrain",
        "postcode": "1207",
        "email": "root@sakib.ninja",
        "phone": "01710339938",
        "created_at": "2020-04-08T19:02:46.665824Z",
        "updated_at": "2020-04-08T19:02:46.665825Z"
    }
}
```

Response `409`
```json
{
    "code": "409001",
    "title": "Key (name)=(BoiChai Ltd) already exists.",
    "errors": {
        "Severity": "ERROR",
        "Code": "23505",
        "Message": "duplicate key value violates unique constraint \"stores_name_key\"",
        "Detail": "Key (name)=(BoiChai Ltd) already exists.",
        "Hint": "",
        "Position": "",
        "InternalPosition": "",
        "InternalQuery": "",
        "Where": "",
        "Schema": "public",
        "Table": "stores",
        "Column": "",
        "DataTypeName": "",
        "Constraint": "stores_name_key",
        "File": "nbtinsert.c",
        "Line": "434",
        "Routine": "_bt_check_unique"
    }
}
```

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
        "staff": {
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "staff_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "staff_name": "Nur",
            "staff_email": "root@sakib.ninja",
            "staff_phone": "",
            "staff_picture": "",
            "staff_permission": "admin",
            "staff_status": "active",
            "is_creator": true,
            "store_status": "active",
            "store_name": "Shopicano"
        },
        "store": {
            "id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "name": "Shopicano",
            "status": "active",
            "logo_image": "/images/logo.png",
            "cover_image": "/images/cover.png",
            "commission_rate": 0,
            "is_product_creation_enabled": false,
            "is_order_creation_enabled": false,
            "is_auto_confirm_enabled": false,
            "description": "Shopicano store",
            "address": "Block : F",
            "city": "Dhaka",
            "country": "Bahrain",
            "postcode": "1207",
            "email": "root@sakib.ninja",
            "phone": "01710339938",
            "created_at": "2020-04-08T19:02:46.665824Z",
            "updated_at": "2020-04-08T19:02:46.665825Z"
        }
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
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "staff_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "staff_name": "Nur",
            "staff_email": "root@sakib.ninja",
            "staff_phone": "",
            "staff_picture": "",
            "staff_permission": "admin",
            "staff_status": "active",
            "is_creator": true,
            "store_status": "active",
            "store_name": "Shopicano"
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
