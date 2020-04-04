---
title: Authorization
weight: 2
bookToc: false
---

# Intro

Shopicano follows JWT authentication and authorization standards.

When a user logs in shopicano generates JWT token which can be used later to control access of users to restricted data.
Besides JWT Shopicano maintains storage of tokens, so if you remove the token from storage the user won't be able to access data using that token anymore. This way makes the platform more secure over JWT.

# How it Works

When you will query restricted data you have to put token in `Header` or `Query Param`.

Shopicano looks for token in `Header` and `Query Param` with Key `Authorization`. If it finds any, it tries to validate and on validation approve access.

ie:

```text
POST {{host}}/marketplace/orders
```

Header Example,
```text
Authorization: Bearer {jwt_token}
```

Query Param,
```text
{{host}}/marketplace/orders?Authorization={jwt_token}
```
