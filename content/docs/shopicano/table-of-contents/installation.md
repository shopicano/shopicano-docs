---
title: Installation
weight: 2
bookToc: false
---

# Installation

There are different ways you can install Shopicano in your cloud server.
Please go through the below options as per your consideration.

## One command installation
Execute
```bash
git clone https://github.com/shopicano/shopicano-backend.git
cd shopicano-backend
```

Then
```bash
./setup.sh  # Multi-Vendor mode
./setup-single.sh  # Single-Vendor mode
```
Or
```bash
./setup.sh {hostname}  # Multi-Vendor mode
./setup-single.sh {hostname}  # Single-Vendor mode
```

## Build from source code
Clone the project

```bash
git clone https://github.com/shopicano/shopicano-backend.git
```

Move to project directory
```bash
cd shopicano-backend
```

Build docker image
```bash
./build.sh docker {version}
```

or
```bash
docker build -t {docker_repository}:{version} .
```

then change in docker-compose.yml as per your above changes
```yaml
version: '3.1'

services:
  shopicano_backend:
    # change image
    image: docker.pkg.github.com/shopicano/shopicano-backend/shopicano-backend:1.2.18-rc
    command: ["serve"]
    restart: always
    ports:
      - 9119:9119
    environment:
      CONSUL_URL: "consul:8500"
      CONSUL_PATH: "shopicano"
    links:
      - postgres
      - rabbitmq
      - consul
    depends_on:
      - postgres
      - rabbitmq
      - consul

  shopicano_worker:
    # change image
    image: docker.pkg.github.com/shopicano/shopicano-backend/shopicano-backend:1.2.18-rc
    command: ["worker"]
    restart: always
    environment:
      CONSUL_URL: "consul:8500"
      CONSUL_PATH: "shopicano"
    links:
      - postgres
      - rabbitmq
      - consul
    depends_on:
      - shopicano

  postgres:
    image: postgres:10
    ports:
      - 5432:5432
    environment:
      POSTGRES_DB: test
      POSTGRES_PASSWORD: test
      POSTGRES_USER: root
    volumes:
      - "./storage/pg/:/var/lib/postgresql/data/"

  minio:
    image: minio/minio
    ports:
      - 9001:9000
    environment:
      MINIO_ACCESS_KEY: "MINIO_ACCESS_KEY"
      MINIO_SECRET_KEY: "MINIO_SECRET_KEY"
    command: ["server", "/data"]
    volumes:
      - "./storage/minio/:/data/"

  rabbitmq:
    image: rabbitmq:3-management-alpine
    ports:
      - "15672:15672"
      - "5672:5672"

  consul:
    image: consul
    ports:
      - "8500:8500"
```

Now

```bash
docker-compose up -d
```

## Docker

Run
```bash
docker-compose up -d
```

Note: make sure docker and docker-compose are installed on your machine.

## Config
Prepared environment by default uses `config.example.yml` file as config.
So if you need any change, do that in the file.

## Deploy
Coming soon
