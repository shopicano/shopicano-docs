---
title: '# Order'
weight: 4
---

# Order API

## > Create
```bash
POST {{host}}/orders
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Body
```json
{
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
        "id": "4edf3b46-5bc9-4230-8f1a-ca374a27cae2",
        "hash": "5uO1SfR0S",
        "shipping_charge": 500,
        "payment_processing_fee": 125,
        "sub_total": 2000,
        "payment_gateway": "ssl",
        "grand_total": 2625,
        "discounted_amount": 0,
        "coupon_code": "",
        "status": "order_confirmed",
        "payment_status": "payment_pending",
        "is_all_digital_products": false,
        "created_at": "2020-04-04T12:28:40.165372Z",
        "updated_at": "2020-04-04T12:28:40.165372Z",
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
                "id": "730ca82e-bf2b-4a21-804b-7e775d2845cc",
                "order_id": "4edf3b46-5bc9-4230-8f1a-ca374a27cae2",
                "product_id": "f94d9cd6-2bf8-431c-9d0a-830a82f374d1",
                "name": "Mac Lipstick",
                "quantity": 1,
                "price": 2000,
                "sub_total": 2000,
                "description": "**Lipstick** is a cosmetic product containing pigments, oils, waxes, and emollients that apply color, texture, and protection to the lips.\n\nMany colors and types of lipstick exist. Some lipsticks are also lip balms, to add color and hydration.\n\nAlthough the name originally applied to the baton (stick) of material, within a tubular container, usually around 10mm in diameter and 50mm in length the term now generally relates to the material itself, regardless of method of application.\n\n![](http://localhost:9119/v1/fs/products/833b7242-8a19-4ce9-a38d-b0b6ae87a19e-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg)\n\n[Wikipedia](https://en.wikipedia.org/wiki/Lipstick)",
                "sku": "C101",
                "additional_images": null,
                "image": "products/15094f62-397e-48f6-ab54-04f8b422db85-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg",
                "is_shippable": true,
                "is_digital": false,
                "attributes": [
                    {
                        "key": "Color",
                        "value": "Red"
                    }
                ]
            }
        ],
        "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "user_name": "Nur",
        "user_email": "root@sakib.ninja",
        "review_rating": 0,
        "review_description": ""
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
GET {{host}}/orders
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
Authorization: Bearer {{user_token}}
```

Response `200`
```json
{
    "data": [
        {
            "id": "4edf3b46-5bc9-4230-8f1a-ca374a27cae2",
            "hash": "5uO1SfR0S",
            "shipping_charge": 500,
            "payment_processing_fee": 125,
            "sub_total": 2000,
            "payment_gateway": "ssl",
            "grand_total": 2625,
            "discounted_amount": 0,
            "coupon_code": "",
            "status": "order_confirmed",
            "payment_status": "payment_pending",
            "is_all_digital_products": false,
            "created_at": "2020-04-04T12:28:40.165372Z",
            "updated_at": "2020-04-04T12:28:40.165372Z",
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
                    "id": "730ca82e-bf2b-4a21-804b-7e775d2845cc",
                    "order_id": "4edf3b46-5bc9-4230-8f1a-ca374a27cae2",
                    "product_id": "f94d9cd6-2bf8-431c-9d0a-830a82f374d1",
                    "name": "Mac Lipstick",
                    "quantity": 1,
                    "price": 2000,
                    "sub_total": 2000,
                    "description": "**Lipstick** is a cosmetic product containing pigments, oils, waxes, and emollients that apply color, texture, and protection to the lips.\n\nMany colors and types of lipstick exist. Some lipsticks are also lip balms, to add color and hydration.\n\nAlthough the name originally applied to the baton (stick) of material, within a tubular container, usually around 10mm in diameter and 50mm in length the term now generally relates to the material itself, regardless of method of application.\n\n![](http://localhost:9119/v1/fs/products/833b7242-8a19-4ce9-a38d-b0b6ae87a19e-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg)\n\n[Wikipedia](https://en.wikipedia.org/wiki/Lipstick)",
                    "sku": "C101",
                    "additional_images": null,
                    "image": "products/15094f62-397e-48f6-ab54-04f8b422db85-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg",
                    "is_shippable": true,
                    "is_digital": false,
                    "attributes": null
                }
            ],
            "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "user_name": "Nur",
            "user_email": "root@sakib.ninja",
            "review_rating": 0,
            "review_description": ""
        },
        {
            "id": "03d94c3f-8a9c-4123-8677-d4e259e54185",
            "hash": "anVUS4R0S",
            "shipping_charge": 500,
            "payment_processing_fee": 125,
            "sub_total": 2000,
            "payment_gateway": "ssl",
            "grand_total": 2625,
            "discounted_amount": 0,
            "coupon_code": "",
            "status": "order_confirmed",
            "payment_status": "payment_pending",
            "is_all_digital_products": false,
            "created_at": "2020-04-04T12:26:39.960046Z",
            "updated_at": "2020-04-04T12:26:39.960046Z",
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
                    "id": "a5b80880-83c4-4c81-ae56-9f2f683739b5",
                    "order_id": "03d94c3f-8a9c-4123-8677-d4e259e54185",
                    "product_id": "f94d9cd6-2bf8-431c-9d0a-830a82f374d1",
                    "name": "Mac Lipstick",
                    "quantity": 1,
                    "price": 2000,
                    "sub_total": 2000,
                    "description": "**Lipstick** is a cosmetic product containing pigments, oils, waxes, and emollients that apply color, texture, and protection to the lips.\n\nMany colors and types of lipstick exist. Some lipsticks are also lip balms, to add color and hydration.\n\nAlthough the name originally applied to the baton (stick) of material, within a tubular container, usually around 10mm in diameter and 50mm in length the term now generally relates to the material itself, regardless of method of application.\n\n![](http://localhost:9119/v1/fs/products/833b7242-8a19-4ce9-a38d-b0b6ae87a19e-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg)\n\n[Wikipedia](https://en.wikipedia.org/wiki/Lipstick)",
                    "sku": "C101",
                    "additional_images": null,
                    "image": "products/15094f62-397e-48f6-ab54-04f8b422db85-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg",
                    "is_shippable": true,
                    "is_digital": false,
                    "attributes": null
                }
            ],
            "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "user_name": "Nur",
            "user_email": "root@sakib.ninja",
            "review_rating": 0,
            "review_description": ""
        },
        {
            "id": "2cf2a9fa-4067-4f07-a78d-ff951c677e51",
            "hash": "Iuaq5xwjS",
            "shipping_charge": 500,
            "payment_processing_fee": 125,
            "sub_total": 2000,
            "payment_gateway": "paddle",
            "grand_total": 2625,
            "discounted_amount": 0,
            "coupon_code": "",
            "status": "order_pending",
            "payment_status": "payment_pending",
            "is_all_digital_products": false,
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
                    "sub_total": 2000,
                    "description": "**Lipstick** is a cosmetic product containing pigments, oils, waxes, and emollients that apply color, texture, and protection to the lips.\n\nMany colors and types of lipstick exist. Some lipsticks are also lip balms, to add color and hydration.\n\nAlthough the name originally applied to the baton (stick) of material, within a tubular container, usually around 10mm in diameter and 50mm in length the term now generally relates to the material itself, regardless of method of application.\n\n![](http://localhost:9119/v1/fs/products/833b7242-8a19-4ce9-a38d-b0b6ae87a19e-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg)\n\n[Wikipedia](https://en.wikipedia.org/wiki/Lipstick)",
                    "sku": "C101",
                    "additional_images": null,
                    "image": "products/15094f62-397e-48f6-ab54-04f8b422db85-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg",
                    "is_shippable": true,
                    "is_digital": false,
                    "attributes": null
                }
            ],
            "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "user_name": "Nur",
            "user_email": "root@sakib.ninja",
            "review_rating": 0,
            "review_description": ""
        },
        {
            "id": "a9f6ec7c-d15b-4f95-a729-5fce198cad1c",
            "hash": "RzOFiBwjS",
            "shipping_charge": 500,
            "payment_processing_fee": 125,
            "sub_total": 2000,
            "payment_gateway": "paddle",
            "grand_total": 2625,
            "discounted_amount": 0,
            "coupon_code": "",
            "status": "order_pending",
            "payment_status": "payment_pending",
            "is_all_digital_products": false,
            "created_at": "2020-03-08T18:05:50.213958Z",
            "updated_at": "2020-03-08T18:05:50.213958Z",
            "shipping_id": "dbebcf40-efa8-4303-8c50-04fb0d6bbc6f",
            "shipping_name": "Sakib Sami",
            "shipping_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
            "shipping_city": "Dhaka",
            "shipping_country": "Bangladesh",
            "shipping_postcode": "1207",
            "shipping_email": "root@sakib.ninja",
            "shipping_phone": "01710339938",
            "billing_id": "f25255e3-7b6c-47a6-a6ce-b791c6f80acf",
            "billing_name": "Sakib Sami",
            "billing_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
            "billing_city": "Dhaka",
            "billing_country": "Bangladesh",
            "billing_postcode": "1207",
            "billing_email": "root@sakib.ninja",
            "billing_phone": "01710339938",
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
                    "id": "edb4b8e4-e443-4170-998d-74fbd620c3c2",
                    "order_id": "a9f6ec7c-d15b-4f95-a729-5fce198cad1c",
                    "product_id": "f94d9cd6-2bf8-431c-9d0a-830a82f374d1",
                    "name": "Mac Lipstick",
                    "quantity": 1,
                    "price": 2000,
                    "sub_total": 2000,
                    "description": "**Lipstick** is a cosmetic product containing pigments, oils, waxes, and emollients that apply color, texture, and protection to the lips.\n\nMany colors and types of lipstick exist. Some lipsticks are also lip balms, to add color and hydration.\n\nAlthough the name originally applied to the baton (stick) of material, within a tubular container, usually around 10mm in diameter and 50mm in length the term now generally relates to the material itself, regardless of method of application.\n\n![](http://localhost:9119/v1/fs/products/833b7242-8a19-4ce9-a38d-b0b6ae87a19e-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg)\n\n[Wikipedia](https://en.wikipedia.org/wiki/Lipstick)",
                    "sku": "C101",
                    "additional_images": null,
                    "image": "products/15094f62-397e-48f6-ab54-04f8b422db85-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg",
                    "is_shippable": true,
                    "is_digital": false,
                    "attributes": null
                }
            ],
            "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "user_name": "Nur",
            "user_email": "root@sakib.ninja",
            "review_rating": 0,
            "review_description": ""
        },
        {
            "id": "dd1a68df-b314-47d4-84d2-c45d8d5d2a35",
            "hash": "AhwLz_VjZ",
            "shipping_charge": 500,
            "payment_processing_fee": 1625,
            "sub_total": 32000,
            "payment_gateway": "paddle",
            "grand_total": 34125,
            "discounted_amount": 0,
            "coupon_code": "",
            "status": "order_pending",
            "payment_status": "payment_pending",
            "is_all_digital_products": false,
            "created_at": "2020-03-06T08:33:56.225798Z",
            "updated_at": "2020-03-06T08:33:56.225798Z",
            "shipping_id": "2ff5ad73-83c0-4336-831b-0d8d1bd11b8d",
            "shipping_name": "Sakib Sami",
            "shipping_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
            "shipping_city": "Dhaka",
            "shipping_country": "Bangladesh",
            "shipping_postcode": "1207",
            "shipping_email": "root@sakib.ninja",
            "shipping_phone": "01710339938",
            "billing_id": "586d0f66-af91-4a0c-873a-53685df11340",
            "billing_name": "Sakib Sami",
            "billing_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
            "billing_city": "Dhaka",
            "billing_country": "Bangladesh",
            "billing_postcode": "1207",
            "billing_email": "root@sakib.ninja",
            "billing_phone": "01710339938",
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
                    "id": "b99c6cfe-1fb9-4507-b6d3-bf9e472879f9",
                    "order_id": "dd1a68df-b314-47d4-84d2-c45d8d5d2a35",
                    "product_id": "7fe236c4-9ebf-49e6-a309-9483dd79bbe8",
                    "name": "Orange",
                    "quantity": 1,
                    "price": 32000,
                    "sub_total": 32000,
                    "description": "**The orange** is the fruit of the citrus species Citrus × sinensis in the family Rutaceae, native to China. It is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange. The sweet orange reproduces asexually; varieties of sweet orange arise through mutations.\n\n![Orange](http://localhost:9119/v1/fs/products/22cc06f3-fe11-41fb-9294-3ff15424daa6-YmVuZWZpdHMtb2Ytb3Jhbmdlcy0xMjk2eDcyOC1mZWF0dXJl.jpg)\n\nSource : [Wikipedia](https://en.wikipedia.org/wiki/Orange_(fruit))",
                    "sku": "F101",
                    "additional_images": null,
                    "image": "products/02b10ce8-02fc-42a3-a3d3-04f0862084dd-ZnJlc2gtb3JhbmdlLTE1NjQwMzMyOTUtNTAxNDY1OA==.jpeg",
                    "is_shippable": true,
                    "is_digital": false,
                    "attributes": null
                }
            ],
            "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "user_name": "Nur",
            "user_email": "root@sakib.ninja",
            "review_rating": 0,
            "review_description": ""
        }
    ]
}
```

## > Get
```bash
GET {{host}}/orders/{{order_id}}
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
        "id": "2cf2a9fa-4067-4f07-a78d-ff951c677e51",
        "hash": "Iuaq5xwjS",
        "shipping_charge": 500,
        "payment_processing_fee": 125,
        "sub_total": 2000,
        "payment_gateway": "paddle",
        "grand_total": 2625,
        "discounted_amount": 0,
        "coupon_code": "",
        "status": "order_pending",
        "payment_status": "payment_pending",
        "is_all_digital_products": false,
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
                "sub_total": 2000,
                "description": "**Lipstick** is a cosmetic product containing pigments, oils, waxes, and emollients that apply color, texture, and protection to the lips.\n\nMany colors and types of lipstick exist. Some lipsticks are also lip balms, to add color and hydration.\n\nAlthough the name originally applied to the baton (stick) of material, within a tubular container, usually around 10mm in diameter and 50mm in length the term now generally relates to the material itself, regardless of method of application.\n\n![](http://localhost:9119/v1/fs/products/833b7242-8a19-4ce9-a38d-b0b6ae87a19e-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg)\n\n[Wikipedia](https://en.wikipedia.org/wiki/Lipstick)",
                "sku": "C101",
                "additional_images": null,
                "image": "products/15094f62-397e-48f6-ab54-04f8b422db85-NTFhM2ROTW02OEwuX1NMODAwXw==.jpg",
                "is_shippable": true,
                "is_digital": false,
                "attributes": [
                    {
                        "key": "Color",
                        "value": "Red"
                    }
                ]
            }
        ],
        "user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "user_name": "Nur",
        "user_email": "root@sakib.ninja",
        "review_rating": 0,
        "review_description": ""
    }
}
```

Response `404`
```json
{
    "code": "404014",
    "title": "Order not found",
    "errors": {}
}
```

## > Download Digital Product
```bash
GET {{host}}/orders/{{order_id}}/products/{{product_id}}/download
```

Query Param
```bash
Authorization={{user_token}}
```

Response `200`
```text
Expected file as binary stream
```

## > Generate Nonce
```text
{{host}}/orders/{{order_id}}/nonce
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
        "url": "https://sandbox.sslcommerz.com/EasyCheckOut/testcded3741ba18ef704135e683fddaba40557"
    }
}
```

Instead of `url` you may get `nonce` too. It depends on payment gateway.

If you get `url` the redirect the user to this url, so user can pay. After payment completion user will be redirected to `Payment Callback from Gateway` url and then to storefront. SSL Commerce, Paddle, 2Checkout follows this process.

If you get `nonce` then initiate payment option with this nonce. Stripe and BrainTree follows this process.

## > Add Review
```text
{{host}}/orders/{{order_id}}/review
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Body
```json
{
    "rating": 4,
    "description": "The products were really good."
}
```

Response `200`
```json
{
    "title": "Payment successfully refunded"
}
```
