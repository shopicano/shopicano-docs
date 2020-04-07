---
title: '# Payment Method'
weight: 3
---

# Payment Method API

## > Get
```bash
GET {{host}}/payment-methods/{{payment_method_id}}
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
        "id": "35b56019-9f88-498b-959f-2729b4092a2f",
        "name": "Card Payment",
        "processing_fee": 0,
        "min_processing_fee": 0,
        "max_processing_fee": 0,
        "is_published": false,
        "is_offline_payment": true,
        "is_flat": false,
        "created_at": "2020-03-11T06:36:46.608587Z",
        "updated_at": "2020-03-11T06:36:46.608587Z"
    }
}
```
