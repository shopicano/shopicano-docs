---
title: '# Payout Settings'
weight: 7
---

# Payout Settings API

## > Update Payout Settings
```bash
POST {{host}}/stores/{{store_id}}/payout-settings
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "country_id": 19,
    "account_type_id": "e09ca038-7969-4fb0-9856-c4ea45a0a00b",
    "business_name": "Shopicano",
    "business_address_id": "0115948f-ca31-400c-a712-22271e11b80a",
    "vat_number": "V123",
    "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
    "payout_method_details": "Bkash Number",
    "payout_minimum_threshold": 100
}
```

Response `200`
```json
{
    "data": {
        "id": "122c36cf-2c32-49db-8d7b-7967efe8a937",
        "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
        "country_id": 19,
        "account_type_id": "e09ca038-7969-4fb0-9856-c4ea45a0a00b",
        "business_name": "Shopicano",
        "business_address_id": "0115948f-ca31-400c-a712-22271e11b80a",
        "vat_number": "V123",
        "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
        "payout_method_details": "Bkash Number",
        "payout_minimum_threshold": 100,
        "created_at": "2020-05-16T03:31:56.338568Z",
        "updated_at": "2020-05-16T03:32:12.916464Z"
    }
}
```

## > Get Payout Settings
```bash
GET {{host}}/stores/{{store_id}}/payout-settings
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
        "id": "122c36cf-2c32-49db-8d7b-7967efe8a937",
        "country_id": 19,
        "country_name": "Barbados",
        "business_name": "Shopicano",
        "payout_minimum_threshold": 100,
        "payout_method_details": "Bkash Number",
        "vat_number": "V123",
        "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
        "payout_method_name": "Bkash",
        "payout_method_inputs": "Number",
        "updated_at": "2020-05-16T03:32:12.916464Z",
        "created_at": "2020-05-16T03:31:56.338568Z",
        "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
        "business_address_id": "0115948f-ca31-400c-a712-22271e11b80a",
        "business_address_address": "Flat - C2, House - 4/2, Block - F, Lalmatia",
        "business_address_city": "Dhaka",
        "business_address_state": "Dhaka",
        "business_address_postcode": "1207",
        "business_account_type_id": "e09ca038-7969-4fb0-9856-c4ea45a0a00b",
        "business_account_type_name": "Individual / Sole Proprietorship"
    }
}
```
