---
title: '# Product'
weight: 1
---

# Product API

## > Create
```bash
POST {{host}}/marketplace/products
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "name": "New Admin Template 5",
    "description": "NMD_R1 SHOES A MODERN NMD TRAINER WITH A SNUG KNIT UPPER. Run with it. These adidas NMD_R1 Shoes are a little technical and a lot street smart. Their midsole plugs flash back to the '80s, but the knit upper, full-length cushioned midsole and EVA inserts are 100 percent fashion forward.",
    "is_published": true,
    "is_shippable": false,
    "is_digital": true,
    "price": 130,
    "product_cost": 1,
    "sku": "RS-R10015",
    "stock": 10,
    "unit": "item",
    "image": "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp",
    "additional_images": [
        "products/f507c02d-c410-4d81-a0da-f340f08ac8e0-ZnJlZS1yZXN1bWUtdGh1bWJuYWls.jpg",
        "products/50ffdcf0-2621-4531-be48-e71006a55400-cmVzdW1lX2NvdmVyXzR4.jpg"
    ],
    "category_id": "db802c1a-3960-436f-aa6c-ecb7d88918ec"
}
```

Response `201`
```json
{
  "title": "Product created",
  "data": {
    "id": "f7f7b8b8-9527-46bb-a641-5e94bda92d96",
    "name": "New Admin Template 3",
    "description": "NMD_R1 SHOES A MODERN NMD TRAINER WITH A SNUG KNIT UPPER. Run with it. These adidas NMD_R1 Shoes are a little technical and a lot street smart. Their midsole plugs flash back to the '80s, but the knit upper, full-length cushioned midsole and EVA inserts are 100 percent fashion forward.",
    "is_published": true,
    "store_id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
    "category_id": "db802c1a-3960-436f-aa6c-ecb7d88918ec",
    "sku": "RS-R10014",
    "stock": 10,
    "max_quantity_count": 10,
    "unit": "item",
    "price": 130,
    "product_cost": 1,
    "additional_images": [
      "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp",
      "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp"
    ],
    "image": "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp",
    "is_shippable": false,
    "is_digital": true,
    "download_counter": 0,
    "created_at": "2020-03-11T07:08:32.583615Z",
    "updated_at": "2020-03-11T07:08:32.583615Z"
  }
}
```

Response `409`
```json
{
    "code": "409009",
    "title": "Key (name, store_id)=(New Admin Template 3, 1fdcfc30-14a9-4a72-a902-2fd025663e6d) already exists.",
    "errors": {
        "Severity": "ERROR",
        "Code": "23505",
        "Message": "duplicate key value violates unique constraint \"products_pkey\"",
        "Detail": "Key (name, store_id)=(New Admin Template 3, 1fdcfc30-14a9-4a72-a902-2fd025663e6d) already exists.",
        "Hint": "",
        "Position": "",
        "InternalPosition": "",
        "InternalQuery": "",
        "Where": "",
        "Schema": "public",
        "Table": "products",
        "Column": "",
        "DataTypeName": "",
        "Constraint": "products_pkey",
        "File": "nbtinsert.c",
        "Line": "434",
        "Routine": "_bt_check_unique"
    }
}
```

Response `422`
```json
{
    "code": "422009",
    "title": "Invalid data",
    "errors": {
        "name": [
            "non zero value required"
        ]
    }
}
```

## > Update
```bash
PUT {{host}}/marketplace/products/{{product_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "name": "New Admin Template 5",
    "description": "NMD_R1 SHOES A MODERN NMD TRAINER WITH A SNUG KNIT UPPER. Run with it. These adidas NMD_R1 Shoes are a little technical and a lot street smart. Their midsole plugs flash back to the '80s, but the knit upper, full-length cushioned midsole and EVA inserts are 100 percent fashion forward.",
    "is_published": true,
    "is_shippable": false,
    "is_digital": true,
    "price": 130,
    "product_cost": 1,
    "sku": "RS-R10015",
    "stock": 10,
    "unit": "item",
    "image": "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp",
    "additional_images": [
        "products/f507c02d-c410-4d81-a0da-f340f08ac8e0-ZnJlZS1yZXN1bWUtdGh1bWJuYWls.jpg",
        "products/50ffdcf0-2621-4531-be48-e71006a55400-cmVzdW1lX2NvdmVyXzR4.jpg"
    ],
    "category_id": "db802c1a-3960-436f-aa6c-ecb7d88918ec"
}
```

Response `200`
```json
{
  "title": "Product created",
  "data": {
    "id": "f7f7b8b8-9527-46bb-a641-5e94bda92d96",
    "name": "New Admin Template 3",
    "description": "NMD_R1 SHOES A MODERN NMD TRAINER WITH A SNUG KNIT UPPER. Run with it. These adidas NMD_R1 Shoes are a little technical and a lot street smart. Their midsole plugs flash back to the '80s, but the knit upper, full-length cushioned midsole and EVA inserts are 100 percent fashion forward.",
    "is_published": true,
    "store_id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
    "category_id": "db802c1a-3960-436f-aa6c-ecb7d88918ec",
    "sku": "RS-R10014",
    "stock": 10,
    "max_quantity_count": 10,
    "unit": "item",
    "price": 130,
    "product_cost": 1,
    "additional_images": [
      "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp",
      "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp"
    ],
    "image": "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp",
    "is_shippable": false,
    "is_digital": true,
    "download_counter": 0,
    "created_at": "2020-03-11T07:08:32.583615Z",
    "updated_at": "2020-03-11T07:08:32.583615Z"
  }
}
```

Response `409`
```json
{
    "code": "409009",
    "title": "Key (name, store_id)=(New Admin Template 3, 1fdcfc30-14a9-4a72-a902-2fd025663e6d) already exists.",
    "errors": {
        "Severity": "ERROR",
        "Code": "23505",
        "Message": "duplicate key value violates unique constraint \"products_pkey\"",
        "Detail": "Key (name, store_id)=(New Admin Template 3, 1fdcfc30-14a9-4a72-a902-2fd025663e6d) already exists.",
        "Hint": "",
        "Position": "",
        "InternalPosition": "",
        "InternalQuery": "",
        "Where": "",
        "Schema": "public",
        "Table": "products",
        "Column": "",
        "DataTypeName": "",
        "Constraint": "products_pkey",
        "File": "nbtinsert.c",
        "Line": "434",
        "Routine": "_bt_check_unique"
    }
}
```

Response `422`
```json
{
    "code": "422009",
    "title": "Invalid data",
    "errors": {
        "name": [
            "non zero value required"
        ]
    }
}
```

## > List
```bash
GET {{host}}/marketplace/products
```

Query params
```text
query [product_name, category_name, collection_name]
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
            "id": "f7f7b8b8-9527-46bb-a641-5e94bda92d96",
            "name": "New Admin Template 3",
            "store_id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
            "store_name": "Stylify",
            "description": "NMD_R1 SHOES A MODERN NMD TRAINER WITH A SNUG KNIT UPPER. Run with it. These adidas NMD_R1 Shoes are a little technical and a lot street smart. Their midsole plugs flash back to the '80s, but the knit upper, full-length cushioned midsole and EVA inserts are 100 percent fashion forward.",
            "is_published": true,
            "category_id": "db802c1a-3960-436f-aa6c-ecb7d88918ec",
            "category_name": "Cosmetics",
            "image": "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp",
            "is_shippable": false,
            "is_digital": true,
            "price": 130,
            "product_cost": 0,
            "max_quantity_count": 0,
            "sku": "RS-R10014",
            "stock": 10,
            "unit": "item",
            "additional_images": "",
            "digital_download_link": "",
            "created_at": "2020-03-11T07:08:32.583615Z",
            "updated_at": "2020-03-11T07:08:32.583615Z"
        }
    ]
}
```

## > Get
```bash
GET {{host}}/marketplace/products/{{product_id}}
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
        "id": "f7f7b8b8-9527-46bb-a641-5e94bda92d96",
        "name": "New Admin Template 3",
        "description": "NMD_R1 SHOES A MODERN NMD TRAINER WITH A SNUG KNIT UPPER. Run with it. These adidas NMD_R1 Shoes are a little technical and a lot street smart. Their midsole plugs flash back to the '80s, but the knit upper, full-length cushioned midsole and EVA inserts are 100 percent fashion forward.",
        "is_published": true,
        "store_id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
        "category_id": "db802c1a-3960-436f-aa6c-ecb7d88918ec",
        "sku": "RS-R10014",
        "stock": 10,
        "max_quantity_count": 10,
        "unit": "item",
        "price": 130,
        "product_cost": 1,
        "additional_images": ["products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp","products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp"],
        "image": "products/d90c343e-6780-415e-a49a-773675fd79eb-c2hvZV9hZGRpZGFz.webp",
        "is_shippable": false,
        "is_digital": true,
        "download_counter": 0,
        "created_at": "2020-03-11T07:08:32.583615Z",
        "updated_at": "2020-03-11T07:08:32.583615Z"
    }
}
```

## > Delete
```bash
DELETE {{host}}/marketplace/products/{{product_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Response `204`
```bash

```

## > Add Digital Product
```bash
POST {{host}}/marketplace/products/{{product_id}}/upload
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body [Form Data]
```text
file: absolute_path_to_file
```

Response `200`
```json

```

## > Add Product Attribute
```bash
POST {{host}}/marketplace/products/{{product_id}}/attributes
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "key": "Color",
    "value": "White"
}
```

Response `200`
```json

```

## > Remove Product Attribute
```bash
POST {{host}}/marketplace/{{product_id}}/attributes/{{attribute_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Response `204`
```json

```
