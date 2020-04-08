---
title: '# User'
weight: 2
---

# User API

## > Get
```bash
GET {{host}}/users
```

Headers
```text
Authorization: Bearer {{user_token}}
```

Response `200`
```json
{
    "data": {
        "created_at": "2020-02-24T05:51:17.800107Z",
        "email": "user@example.com",
        "id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "name": "Example User",
        "permission": "user",
        "phone": null,
        "profile_picture": null,
        "status": "active",
        "updated_at": "2020-02-24T05:51:17.800107Z"
    }
}
```

## > Update
```bash
PUT {{host}}/users
```

Headers
```text
Authorization: Bearer {{user_token}}
```

Body
```json
{
    "name": "User Name",
    "profile_picture": "users/hello.png",
    "phone": "+8801700000000",
    "current_password": "1234567890",
    "new_password": "abc123456",
    "new_password_repeat": "abc123456"
}
```

Response `200`
```json
{
    "data": {
        "created_at": "2020-02-24T05:51:17.800107Z",
        "email": "user@example.com",
        "id": "27ce7498-ac36-47e7-879a-442f3366c2b5",
        "name": "Example User",
        "permission": "user",
        "phone": "+8801700000000",
        "profile_picture": "users/hello.png",
        "status": "active",
        "updated_at": "2020-02-24T05:51:17.800107Z"
    }
}
```

Response `409`
```json
{
    "errors": {
        "message": "Key (phone)=(+8801700000000) already exists."
    }
}
```

Response `422`
```json
{
    "code": "422003",
    "title": "Invalid data",
    "errors": {
        "name": [
            "non zero value required"
        ],
        "password": [
            "non zero value required"
        ]
    }
}
```
