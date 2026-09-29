# Docker Compose Guide

## What Does the `services:` Block Do?

The `services:` block defines the different containers that are part of the application. In this deployment, there are two services: the `database` service and the `app` service.

The `database` service uses the MariaDB image, while the `app` service uses the Nextcloud image.

## How Does the Nextcloud App Container Find the Database?

The Nextcloud application uses the `MYSQL_HOST` environment variable to identify the database container.

In the Compose file, the value is:

```yaml
MYSQL_HOST=database
```

The word `database` refers to the name of the MariaDB service defined under the `services:` block. This allows the Nextcloud container to communicate with the database container.

## What Is the Difference Between `docker run` and `docker-compose up -d`?

The `docker run` command is used to create and start a Docker container individually. It is useful when deploying a single container.

The `docker-compose up -d` command is used to deploy multiple services that are defined inside a `docker-compose.yml` file. The `-d` option runs the containers in the background.

In this mission, Docker Compose allows the Nextcloud application and MariaDB database to be deployed together using one configuration file and one command.

## Docker Compose Configuration

The deployment uses the following services:

* **database** – MariaDB database container
* **app** – Nextcloud application container

The Nextcloud application is exposed through port `8080`, which is mapped to port `80` inside the container.

## Deployment Commands

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
nano docker-compose.yml
docker-compose up -d
docker-compose ps
docker-compose down
```

## Infrastructure as Code

Docker Compose demonstrates the concept of Infrastructure as Code because the application infrastructure is described in a YAML configuration file. Instead of manually configuring each container, the required services and settings can be defined in the Compose file and deployed using Docker Compose.
