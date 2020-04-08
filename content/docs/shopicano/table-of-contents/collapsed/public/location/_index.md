---
title: '# Location'
weight: 3
---

# Location API

## > Search/List Locations
```bash
GET {{host}}/locations
```

Query params
```text
name [location name, location iso name]
```

Headers
```bash
Authorization: Bearer {{user_token}}
```

Response `200`
```json
{
    "data": [
        {
            "id": 1,
            "name": "Afghanistan",
            "iso_name": "AF",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 2,
            "name": "Albania",
            "iso_name": "AL",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 3,
            "name": "Algeria",
            "iso_name": "DZ",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 4,
            "name": "American Samoa",
            "iso_name": "AS",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 5,
            "name": "Andorra",
            "iso_name": "AD",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 6,
            "name": "Angola",
            "iso_name": "AO",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 7,
            "name": "Anguilla",
            "iso_name": "AI",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 8,
            "name": "Antarctica",
            "iso_name": "AQ",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 9,
            "name": "Antigua and Barbuda",
            "iso_name": "AG",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 10,
            "name": "Argentina",
            "iso_name": "AR",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 11,
            "name": "Armenia",
            "iso_name": "AM",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 12,
            "name": "Aruba",
            "iso_name": "AW",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 13,
            "name": "Australia",
            "iso_name": "AU",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 14,
            "name": "Austria",
            "iso_name": "AT",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 15,
            "name": "Azerbaijan",
            "iso_name": "AZ",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 16,
            "name": "Bahamas",
            "iso_name": "BS",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 17,
            "name": "Bahrain",
            "iso_name": "BH",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 18,
            "name": "Bangladesh",
            "iso_name": "BD",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 19,
            "name": "Barbados",
            "iso_name": "BB",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        {
            "id": 20,
            "name": "Belarus",
            "iso_name": "BY",
            "is_published": 1,
            "created_at": "2020-04-07T16:06:57.03888Z",
            "updated_at": "2020-04-07T16:06:57.03888Z"
        },
        ...
    ]
}
```

## > Get Shipping Methods By Location
```bash
GET {{host}}/locations/{{location_id}}/shipping-methods
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
            "id": "eb282e77-d571-42c1-bf11-47cca125dec4",
            "name": "Standard",
            "approximate_delivery_time": 5,
            "delivery_charge": 500,
            "weight_unit": "kg",
            "is_flat": true,
            "is_published": true,
            "created_at": "2020-02-24T08:36:31.779159Z",
            "updated_at": "2020-02-24T08:36:31.779159Z"
        }
    ]
}
```

## > Get Payment Methods By Location
```bash
GET {{host}}/locations/{{location_id}}/payment-methods
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{user_token}}
```

Response `200`
```bash
{
    "data": [
        {
            "id": "9f96ea80-73bf-402f-95ca-4945d09a6c37",
            "name": "Digital Payment",
            "processing_fee": 5,
            "min_processing_fee": 0,
            "max_processing_fee": 0,
            "is_published": true,
            "is_offline_payment": false,
            "is_flat": false,
            "created_at": "2020-02-24T05:57:14.288418Z",
            "updated_at": "2020-02-24T05:57:14.288418Z"
        }
    ]
}
```
