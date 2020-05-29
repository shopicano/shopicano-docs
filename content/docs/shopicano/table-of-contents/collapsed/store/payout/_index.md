---
title: '# Payout'
weight: 6
---

# Payout API

## > Create Payout Entry
```bash
POST {{host}}/marketplace/stores/{{store_id}}/payouts/entries
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "amount": 800,
    "note": "test entry"
}
```

Response `201`
```json
{
    "data": {
        "id": "cc561d0a-61cd-4197-8bc4-5387cff8518e",
        "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
        "initiated_by_user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "is_marketplace_initiated": false,
        "status": "payout_pending",
        "amount": 800,
        "failure_reason": "",
        "note": "test entry",
        "highlights": "",
        "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
        "payout_method_details": "01710339938",
        "created_at": "2020-05-29T05:22:23.115084Z",
        "updated_at": "2020-05-29T05:22:23.115084Z"
    }
}
```

## > Update Payout Entry
```bash
PATCH {{host}}/marketplace/stores/{{store_id}}/payouts/entries/{{entry_id}}
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Body
```json
{
    "amount": 700,
    "status": "payout_processing",
    "highlights": "test",
    "failure_reason": ""
}
```

Response `201`
```json
{
    "data": {
        "id": "cc561d0a-61cd-4197-8bc4-5387cff8518e",
        "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
        "initiated_by_user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "is_marketplace_initiated": false,
        "status": "payout_processing",
        "amount": 800,
        "failure_reason": "",
        "note": "test entry",
        "highlights": "test",
        "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
        "payout_method_details": "01710339938",
        "created_at": "2020-05-29T05:22:23.115084Z",
        "updated_at": "2020-05-29T05:22:23.115084Z"
    }
}
```

## > Summary
```bash
GET {{host}}/marketplace/stores/{{store_id}}/payouts/summary
```

Headers
```bash
Authorization: Bearer {{store_user_token}}
```

Response `200`
```json
{
    "data": {
        "total_available": 950,
        "total_commission": 4110,
        "total_earnings": 234420,
        "total_income": 238530,
        "total_paid": 10000,
        "total_requested": 233470
    }
}
```

## > List Payout Entries
```bash
GET {{host}}/marketplace/stores/{{store_id}}/payouts/entries
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{store_user_token}}
```

Query params
```text
limit [Maximum number of elements]
page  [Number of page]
```

Response `200`
```json
{
    "data": [
        {
            "id": "aeb91b7a-68ce-413d-a038-c675fa37a449",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "initiated_by_user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "is_marketplace_initiated": false,
            "status": "payout_pending",
            "amount": 161470,
            "failure_reason": "",
            "note": "test",
            "highlights": "",
            "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
            "payout_method_details": "Bkash Number",
            "created_at": "2020-05-19T02:49:23.442942Z",
            "updated_at": "2020-05-19T02:49:23.442942Z"
        },
        {
            "id": "0998e59a-6cd9-4a89-901f-d327f701aabd",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "initiated_by_user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "is_marketplace_initiated": false,
            "status": "payout_pending",
            "amount": 50000,
            "failure_reason": "",
            "note": "test",
            "highlights": "",
            "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
            "payout_method_details": "Bkash Number",
            "created_at": "2020-05-18T21:28:43.199322Z",
            "updated_at": "2020-05-18T21:28:43.199322Z"
        },
        {
            "id": "658bee4b-1f53-4ff3-80bc-9dc5ca241fa2",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "initiated_by_user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "is_marketplace_initiated": false,
            "status": "payout_pending",
            "amount": 12000,
            "failure_reason": "",
            "note": "test",
            "highlights": "",
            "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
            "payout_method_details": "Bkash Number",
            "created_at": "2020-05-18T21:14:33.539503Z",
            "updated_at": "2020-05-18T21:14:33.539503Z"
        },
        {
            "id": "fcd297b3-6758-41ca-887c-40f47b00098f",
            "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
            "initiated_by_user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
            "is_marketplace_initiated": false,
            "status": "payout_completed",
            "amount": 10000,
            "failure_reason": "",
            "note": "test",
            "highlights": "",
            "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
            "payout_method_details": "Bkash Number",
            "created_at": "2020-05-18T20:49:10.44946Z",
            "updated_at": "2020-05-18T20:49:10.44946Z"
        }
    ]
}
```

## > Get Payout Entry
```bash
GET {{host}}/marketplace/stores/{{store_id}}/payouts/entries/{{entry_id}}
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
        "id": "cc561d0a-61cd-4197-8bc4-5387cff8518e",
        "store_id": "90404aa5-b22c-43c0-b65c-81b0c5620987",
        "initiated_by_user_id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "is_marketplace_initiated": false,
        "status": "payout_pending",
        "amount": 800,
        "failure_reason": "",
        "note": "test entry",
        "highlights": "",
        "payout_method_id": "41bea377-ab61-423d-bf55-1c82c08ac987",
        "payout_method_name": "Bkash",
        "payout_method_inputs": "Number",
        "payout_method_details": "01710339938",
        "created_at": "2020-05-29T05:22:23.115084Z",
        "updated_at": "2020-05-29T05:22:23.115084Z"
    }
}
```
