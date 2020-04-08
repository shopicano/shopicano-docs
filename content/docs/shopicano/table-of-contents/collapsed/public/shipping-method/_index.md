---
title: '# Shipping Method'
weight: 5
---

# Shipping Method API

## > Get
```bash
GET {{host}}/shipping-methods/{{shipping_method_id}}
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
        "id": "8cfa51bf-fc7a-40fd-8340-4377e2feac43",
        "name": "DHL",
        "approximate_delivery_time": 3,
        "delivery_charge": 100,
        "weight_unit": "kg",
        "is_flat": false,
        "is_published": true,
        "created_at": "2020-03-11T06:48:05.311684Z",
        "updated_at": "2020-03-11T06:48:05.311684Z"
    }
}
```
