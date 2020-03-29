---
title: '# Store'
weight: 1
---

# Store API

## > List Stores
```bash
GET {{host}}/marketplace/stores
```

Query params
```text
query [Store name]
limit [Maximum number of elements]
page  [Number of page]
```

Headers
```bash
Authorization: Bearer {{marketplace_user_token}}
```

Response `200`
```json

```

## > Update Store
```bash
PATCH {{host}}/marketplace/stores/{{store_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "status": "active",
    "commission_rate": 5
}
```

Response `200`
```bash

```
