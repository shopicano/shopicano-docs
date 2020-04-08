---
title: '# File System'
weight: 7
---

# File System API

## > Upload
```bash
POST {{host}}/fs/{{bucket_name}}
```

Headers
```text
Authorization: Bearer {{user_token}}
```

Body (Multipart Form Data)
```text
file: file_to_upload
```

Response `201`
```json
{
    "data": {
        "path": "{{bucket_name}}/abc12354-0753-4cdc-8952-ad0f2f31cc8d-UGxhY2Vob2xkZXJfZGVzaWdubWFtYmE=.jpg"
    }
}
```

Note: Bucket name works as folder.

## > Serve File
```bash
GET {{host}}/fs/{{bucket_name}}/abc12354-0753-4cdc-8952-ad0f2f31cc8d-UGxhY2Vob2xkZXJfZGVzaWdubWFtYmE=.jpg
```

Response `200`
```text
File as binary stream
```
