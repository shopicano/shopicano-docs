---
title: '# Customer'
weight: 10
---

# Customer API

## > List
```bash
GET {{host}}/marketplace/customers
```

Query params
```text
query [user email address]
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
            "id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "name": "Nur",
            "email": "root@sakib.ninja",
            "profile_picture": "",
            "phone": "",
            "is_email_verified": true,
            "is_phone_verified": false,
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "number_of_purchases": 1
        }
    ]
}
```
