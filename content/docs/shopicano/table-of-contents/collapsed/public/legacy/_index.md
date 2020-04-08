---
title: '# Legacy'
weight: 1
---

# Legacy API

## > Login
```bash
GET {{host}}/login
```

Body
```json
{
    "email": "user@example.com",
    "password": "1234567890"
}
```

Response `200`
```json
{
    "data": {
        "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiMjdjZTc0OTgtYWMzNi00N2U3LTg3OWEtNDQyZjMzNjZjMmI1IiwiYXVkIjoiZnJvbnRfc3RvcmUiLCJleHAiOjE1ODY0NjQxOTUsImlhdCI6MTU4NTg1OTM5NX0.v8WD0e6kLGL3XCbYtMZCa1S7HLwy68k1zdxAu_BATZ4",
        "expire_on": 1586032195,
        "has_store": false,
        "permission": "user",
        "refresh_token": "Y2U2OGU1MjAtY2JmZS00OTBiLWI2M2QtNDdkMjkxNTE3MjljXzE1ODU4NTkzOTVfMjAyMC0wNC0wMiAyMDoyOTo1NS42NTUyNzMgKzAwMDAgVVRD"
    }
}
```

Response `200`, When has store
```json
{
    "data": {
        "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiYjYzMDZjNWMtOGI5NS00MjY5LWJhN2EtYzJlMTlkYTYzZGZmIiwiYXVkIjoiZnJvbnRfc3RvcmUiLCJleHAiOjE1ODY0NjM5OTIsImlhdCI6MTU4NTg1OTE5Mn0.uV2yMe19Uk8oIerXrkOUQrnjfjPbKTxcXYaQUzbOy9I",
        "expire_on": 1586031992,
        "has_store": true,
        "permission": "user",
        "refresh_token": "MTJiNWY5ZjUtMzFlNS00YjU3LWIwNjctZWQ5OGE5YjA2NWVmXzE1ODU4NTkxOTJfMjAyMC0wNC0wMiAyMDoyNjozMi42ODA2NDQgKzAwMDAgVVRD",
        "store_id": "1fdcfc30-14a9-4a72-a902-2fd025663e6d",
        "store_name": "Example Store",
        "store_permission": "admin"
    }
}
```

Response `401`
```json
{
    "code": "401001",
    "title": "Invalid login credentials",
    "errors": {}
}
```

## > Register
```bash
GET {{host}}/register
```

Body
```json
{
    "name": "User Name",
    "email": "user@example.com",
    "password": "password"
}
```

Response `201`
```json
{
    "title": "User registration successful",
    "data": {
        "id": "8488bb3e-92ea-4309-b152-628013731b32",
        "name": "User Name",
        "email": "user@example.com",
        "status": "registered",
        "is_email_verified": false,
        "created_at": "2020-04-02T20:36:28.561693Z",
        "updated_at": "2020-04-02T20:36:28.561693Z"
    }
}
```

Response `409`
```json
{
    "code": "409008",
    "title": "User already register",
    "errors": {
        "message": "Key (email)=(user@example.com) already exists."
    }
}
```

Response `422`
```json
{
    "code": "422003",
    "title": "Invalid data",
    "errors": {
        "email": [
            "non zero value required"
        ],
        "name": [
            "non zero value required"
        ],
        "password": [
            "non zero value required"
        ]
    }
}
```
