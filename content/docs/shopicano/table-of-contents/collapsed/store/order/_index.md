---
title: '# Order'
weight: 4
---

# Order API

## > Create
```bash
POST {{host}}/marketplace/orders
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "user_id": "f94d9cd6-2bf8-431c-9d0a-830a82f374d2",
    "items": [
        {
            "id": "f94d9cd6-2bf8-431c-9d0a-830a82f374d1",
            "quantity": 1,
            "attributes": [
                "f94d9cd6-2bf8-431c-9d0a-830a82f374d1"
            ]
        }
    ],
    "billing_address_id": "05d5ef3d-99f7-44b3-b421-89e5879071d5",
    "payment_method_id": "9f96ea80-73bf-402f-95ca-4945d09a6c37",
    "shipping_address_id": "05d5ef3d-99f7-44b3-b421-89e5879071d5",
    "shipping_method_id": "eb282e77-d571-42c1-bf11-47cca125dec4"
}
```

Response `201`
```json
{
    "data": {
        "id": "2cf2a9fa-4067-4f07-a78d-ff951c677e51",
        "hash": "Iuaq5xwjS",
        "shipping_charge": 500,
        "payment_processing_fee": 125,
        "sub_total": 2000,
        "payment_gateway": "paddle",
        "grand_total": 2625,
        "status": "order_pending",
        "payment_status": "payment_pending",
        "created_at": "2020-03-13T11:27:14.087276Z",
        "updated_at": "2020-03-13T11:27:14.087276Z",
        "shipping_id": "05d5ef3d-99f7-44b3-b421-89e5879071d5",
        "shipping_name": "MD SAMIUL",
        "shipping_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
        "shipping_city": "Dhaka",
        "shipping_country": "Bangladesh",
        "shipping_postcode": "1207",
        "shipping_email": "root@sakib.ninja",
        "shipping_phone": "+8801710339938",
        "billing_id": "05d5ef3d-99f7-44b3-b421-89e5879071d5",
        "billing_name": "MD SAMIUL",
        "billing_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
        "billing_city": "Dhaka",
        "billing_country": "Bangladesh",
        "billing_postcode": "1207",
        "billing_email": "root@sakib.ninja",
        "billing_phone": "+8801710339938",
        "store_id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
        "store_name": "Stylify",
        "store_address": "House : 4/2, Block : F, Lalmatia",
        "store_city": "Dhaka",
        "store_country": "Bangladesh",
        "store_postcode": "1207",
        "store_email": "stylify@shopicano.com",
        "store_phone": "01710339933",
        "store_status": "active",
        "payment_method_id": "9f96ea80-73bf-402f-95ca-4945d09a6c37",
        "payment_method_name": "Digital Payment",
        "payment_method_is_offline": false,
        "shipping_method_id": "eb282e77-d571-42c1-bf11-47cca125dec4",
        "shipping_method_name": "Standard",
        "approximate_delivery_time": 5,
        "items": [
            {
                "id": "53bb4cf0-b0f1-480b-b10b-e62a45e8e6a7",
                "order_id": "2cf2a9fa-4067-4f07-a78d-ff951c677e51",
                "product_id": "f94d9cd6-2bf8-431c-9d0a-830a82f374d1",
                "name": "Mac Lipstick",
                "quantity": 1,
                "price": 2000,
                "product_cost": 1800,
                "sub_total": 2000,
                "description": "**Lipstick** is a cosmetic product containing pigments, oils, waxes, and emollients that apply color, texture, and protection to the lips.\n\nMany colors and types of lipstick exist. Some lipsticks are also lip balms, to add color and hydration.\n\nAlthough the name originally applied to the baton (stick) of material, within a tubular container, usually around 10mm in diameter and 50mm in length the term now generally relates to the material itself, regardless of method of application.\n\n![](http://localhost:9119/v1/fs/products/833b7242-8a19-4ce9-a38d-b0b6ae87a19e-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg)\n\n[Wikipedia](https://en.wikipedia.org/wiki/Lipstick)",
                "sku": "C101",
                "additional_images": "products/da159270-473a-4145-bc0d-7d7ca9a87322-MjUxMTE1Mw==.jpeg,products/f9faccda-76a7-4498-a205-f87fce8e992d-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg,products/94bea53f-7cc3-4f1a-bd28-68561a28c5d9-YmJleTh2ZGQ3MnZmNXpub2lydGU=.jpg",
                "image": "products/15094f62-397e-48f6-ab54-04f8b422db85-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg",
                "is_shippable": true,
                "is_digital": false,
                "attributes": null
            }
        ],
        "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "user_name": "Nur",
        "user_email": "root@sakib.ninja",
        "seller_earnings": 1800,
        "platform_earnings": 200,
        "actual_earnings": 2000
    }
}
```

Response `404`
```json
{
    "code": "404009",
    "title": "Payment method not found",
    "errors": {}
}
```

Response `404`
```json
{
    "code": "404013",
    "title": "Product af7ab3aa-c425-4ab8-a0c6-f597b8227c2e is unavailable",
    "errors": {}
}
```

## > List
```bash
GET {{host}}/marketplace/orders
```

Query params
```text
query [order_hash_id]
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

## > Get
```bash
GET {{host}}/marketplace/orders/{{order_id}}
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
        "id": "2cf2a9fa-4067-4f07-a78d-ff951c677e51",
        "hash": "Iuaq5xwjS",
        "shipping_charge": 500,
        "payment_processing_fee": 125,
        "sub_total": 2000,
        "payment_gateway": "paddle",
        "grand_total": 2625,
        "status": "order_pending",
        "payment_status": "payment_pending",
        "created_at": "2020-03-13T11:27:14.087276Z",
        "updated_at": "2020-03-13T11:27:14.087276Z",
        "shipping_id": "05d5ef3d-99f7-44b3-b421-89e5879071d5",
        "shipping_name": "MD SAMIUL",
        "shipping_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
        "shipping_city": "Dhaka",
        "shipping_country": "Bangladesh",
        "shipping_postcode": "1207",
        "shipping_email": "root@sakib.ninja",
        "shipping_phone": "+8801710339938",
        "billing_id": "05d5ef3d-99f7-44b3-b421-89e5879071d5",
        "billing_name": "MD SAMIUL",
        "billing_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
        "billing_city": "Dhaka",
        "billing_country": "Bangladesh",
        "billing_postcode": "1207",
        "billing_email": "root@sakib.ninja",
        "billing_phone": "+8801710339938",
        "store_id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
        "store_name": "Stylify",
        "store_address": "House : 4/2, Block : F, Lalmatia",
        "store_city": "Dhaka",
        "store_country": "Bangladesh",
        "store_postcode": "1207",
        "store_email": "stylify@shopicano.com",
        "store_phone": "01710339933",
        "store_status": "active",
        "payment_method_id": "9f96ea80-73bf-402f-95ca-4945d09a6c37",
        "payment_method_name": "Digital Payment",
        "payment_method_is_offline": false,
        "shipping_method_id": "eb282e77-d571-42c1-bf11-47cca125dec4",
        "shipping_method_name": "Standard",
        "approximate_delivery_time": 5,
        "items": [
            {
                "id": "53bb4cf0-b0f1-480b-b10b-e62a45e8e6a7",
                "order_id": "2cf2a9fa-4067-4f07-a78d-ff951c677e51",
                "product_id": "f94d9cd6-2bf8-431c-9d0a-830a82f374d1",
                "name": "Mac Lipstick",
                "quantity": 1,
                "price": 2000,
                "product_cost": 1800,
                "sub_total": 2000,
                "description": "**Lipstick** is a cosmetic product containing pigments, oils, waxes, and emollients that apply color, texture, and protection to the lips.\n\nMany colors and types of lipstick exist. Some lipsticks are also lip balms, to add color and hydration.\n\nAlthough the name originally applied to the baton (stick) of material, within a tubular container, usually around 10mm in diameter and 50mm in length the term now generally relates to the material itself, regardless of method of application.\n\n![](http://localhost:9119/v1/fs/products/833b7242-8a19-4ce9-a38d-b0b6ae87a19e-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg)\n\n[Wikipedia](https://en.wikipedia.org/wiki/Lipstick)",
                "sku": "C101",
                "additional_images": "products/da159270-473a-4145-bc0d-7d7ca9a87322-MjUxMTE1Mw==.jpeg,products/f9faccda-76a7-4498-a205-f87fce8e992d-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg,products/94bea53f-7cc3-4f1a-bd28-68561a28c5d9-YmJleTh2ZGQ3MnZmNXpub2lydGU=.jpg",
                "image": "products/15094f62-397e-48f6-ab54-04f8b422db85-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg",
                "is_shippable": true,
                "is_digital": false,
                "attributes": null
            }
        ],
        "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "user_name": "Nur",
        "user_email": "root@sakib.ninja",
        "seller_earnings": 1800,
        "platform_earnings": 200,
        "actual_earnings": 2000
    }
}
```

## > Delete
```bash
DELETE {{host}}/marketplace/orders/{{order_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Response `204`
```bash

```

## > Download Digital Product
```bash
GET {{host}}/marketplace/orders/{{order_id}}/products/{{product_id}}/download
```

Query Param
```bash
Authorization={{user_token}}
```

Response `200`
```text
Expected file as binary stream
```
