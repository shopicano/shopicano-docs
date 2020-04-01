---
title: Application Config
weight: 3
bookToc: false
---

# Application Config

Below is the default configuration of Shopicano. Make changes as per your requirement.

```yaml
app:
  host: 0.0.0.0   # Host of the application
  port: 8000    # Port of the application
  log_level: debug    # Application log mode
  backend_url: 'https://alpha-api.shopicano.com'    # Backend url of application
  front_store_url: 'https://alpha.shopicano.com'    # Storefront url of application
  dashboard_url: 'https://alpha-dashboard.shopicano.com'    # Dashboard url of application
  jwt_key: '123456'   # JWT authentication key
database:
  host: postgres    # Postgres hostname
  port: 5432        # Postgres port
  username: root    # Postgres username
  password: shopicano   # Postgres password
  name: shopicano     # Postgres database name
  max_idle_connections: 2   # Postgres number of idle connections
  max_active_connections: 10    # Postgres number of active connections
  max_connection_lifetime: 2    # Postgres number of max connections
minio:
  base_url: 'minio:9000'  # Minio host and port in format minio_host:minio_port
  serve_url: 'http://minio:9000'
  key: MINIO_ACCESS_KEY   # Minio access key
  secret: MINIO_SECRET_KEY    # Minio secret key
  bucket: shopicano     # Minio bucket name. Please make the bucket in Minio before use
  location: us
  sign_duration: 5
rabbitmq:
  broker: 'amqp://guest:guest@rabbitmq:5672/'   # RabbitMQ URI
  default_queue: shopicano_tasks        # RabbitMQ default queue
  result_backend: 'amqp://guest:guest@rabbitmq:5672/'   # RabbitMQ result storage
  amqp:
    exchange: shopicano_exchange    # RabbitMQ exchange
    exchange_type: direct   # RabbitMQ exchange type
    binding_key: shopicano_tasks    # RabbitMQ task name
    prefetch_count: 5     # RabbitMQ prefetch count
  worker:
    name: worker-1    # RabbitMQ name of worker
    count: 5      # RabbitMQ number of workers
payment_gateway:    # Payment gateway configuration
  name: stripe  # default payment gateway name
  brain_tree:
    mode: sandbox
    token: sandbox_mf8nfbgp_jkaksjdfhkjsa
    public_key: kjandsflkansdfl
    private_key: 00eb8c46af1feabcuihaisfunaisdunfiu
    merchant_id: mb7ffsuabdfkajsdbnfkj
    success_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
    failure_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
  stripe:
    mode: sandbox
    secret_key: sk_test_27iblsN3OtTojakdsjnfkajsdfnkjasdfs
    public_key: pk_test_vkZ0lasdfasdfjnkasndfoiwejnkansdfk
    success_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
    failure_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
  2co:
    host: 'https://sandbox.2checkout.com'
    merchant_code: '900000000'
    secret_key: YWY3ZDcwYTYtOasdjnfkalsdnfaksjdfnkasdnfkj
    public_key: 032E08FF-AE82-4C4C-BBD6-KJNASKDJFNKJJ
    private_key: 04A2864B-3950-4386-A97E-8YABNKASDBFK
    username: shopicano_api
    password: test
    success_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
    failure_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
  ssl:
    host: 'https://sandbox.sslcommerz.com'
    store_id: shopi8718181018
    store_password: shopikjnsdkj1jeians8a33jaja
    success_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
    failure_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
    cancel_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
  paddle:
    host: 'https://vendors.paddle.com'
    vendor_id: '000000'
    vendor_auth_code: 43dd10d080d0a47d78f114dasdkfnlsdkfnmalksdfnisdoiaa
    success_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
    failure_callback: 'https://alpha-api.shopicano.com/v1/orders/%s/pay'
email_service:  # Email Service configuration
  smtp_host: smtp.example.com   # SMTP hostname
  smtp_port: 587    # SMTP port
  smtp_username: noreply@example.com    # SMTP username
  smtp_password: 'test'   # SMTP password
  from_email_address: noreply@example.com   # SMTP email address to send email
paths_mapping:
  after_account_verification: '/#/extra?q=account-activated'    # User will be redirected to this path of Storefront after account verification
  after_payment_completed: '/#/order-history/%s'    # User will be redirected to this path of Storefront after payment complete
  after_password_reset_requested: '/#/recovery/password-reset'    # User will be redirected to this path of Storefront after password reset
```
