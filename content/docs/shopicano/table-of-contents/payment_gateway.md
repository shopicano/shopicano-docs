---
title: Payment Gateways
weight: 2
bookToc: false
---

## Intro
Payment Gateway is part of payment processing system. Payment Gateway processes the payment of customer with bank on behalf of you.

## Supported Payment Gateways
By default Shopicano supports most of the renowned payment gateways.

- Stripe
- BrainTree
- 2Checkout
- Paddle
- SSL Commerce (Bangladesh Only)

### Below are the configuration options for the payment gateways,

To configure your payment gateway make changes in `config` under `payment_gateway`. At the  place of `name` put the name of default payment gateway.

- Stripe
```yaml
mode: sandbox
secret_key: sk_test_27iblsN3OtTojakdsjnfkajsdfnkjasdfs
public_key: pk_test_vkZ0lasdfasdfjnkasndfoiwejnkansdfk
success_callback: '{hostname}/v1/orders/%s/pay'
failure_callback: '{hostname}/v1/orders/%s/pay'
```

- BrainTree
```yaml
mode: sandbox
token: sandbox_mf8nfbgp_jkaksjdfhkjsa
public_key: kjandsflkansdfl
private_key: 00eb8c46af1feabcuihaisfunaisdunfiu
merchant_id: mb7ffsuabdfkajsdbnfkj
success_callback: '{hostname}/v1/orders/%s/pay'
failure_callback: '{hostname}/v1/orders/%s/pay'
```

- Paddle
```yaml
host: 'https://vendors.paddle.com'
vendor_id: '000000'
vendor_auth_code: 43dd10d080d0a47d78f114dasdkfnlsdkfnmalksdfnisdoiaa
success_callback: '{hostname}/v1/orders/%s/pay'
failure_callback: '{hostname}/v1/orders/%s/pay'
```

- 2Checkout
```yaml
host: 'https://sandbox.2checkout.com'
merchant_code: '900000000'
secret_key: YWY3ZDcwYTYtOasdjnfkalsdnfaksjdfnkasdnfkj
public_key: 032E08FF-AE82-4C4C-BBD6-KJNASKDJFNKJJ
private_key: 04A2864B-3950-4386-A97E-8YABNKASDBFK
username: shopicano_api
password: test

# Configure the callback url in dashboard
# url = {hostname}/v1/payments/confirm
```

- SSL Commerce
```yaml
host: 'https://sandbox.sslcommerz.com'
store_id: shopi8718181018
store_password: shopikjnsdkj1jeians8a33jaja
success_callback: '{hostname}/v1/orders/%s/pay'
failure_callback: '{hostname}/v1/orders/%s/pay'
cancel_callback: '{hostname}/v1/orders/%s/pay'
```

```text
{hostname} = protocol+domain_name | ie: http://example.com
```
