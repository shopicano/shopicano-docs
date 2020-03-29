# User API

## > Search/List Users
```bash
GET {{host}}/marketplace/users
```

Query params
```text
query [User email address]
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

## > Update User Status
```bash
PATCH {{host}}/marketplace/users/{{user_id}}/status
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "new_status": "active"
}
```

Response `200`
```bash

```

## > User Permission Update
```bash
PATCH {{host}}/marketplace/users/{{user_id}}/permission
```

Headers
```bash
Content-Type: application/json
Authorization: Bearer {{marketplace_user_token}}
```

Body
```json
{
    "new_permission_id": "3"
}
```

Response `200`
```bash

```
