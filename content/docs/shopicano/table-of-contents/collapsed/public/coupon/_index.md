---
title: '# Coupon'
weight: 8
---

# Coupon API

## > Check Coupon Availability
```bash
GET {{host}}/coupons/{{coupon_code}}/check?store_id={{store_id}}&order_amount={{order_amount}}&shipping_cost={{shipping_charge}}
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
        "discount_amount": 300,
        "discount_type": "product_discount"
    }
}
```
