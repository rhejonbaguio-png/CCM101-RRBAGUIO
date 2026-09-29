# Multi-Tier Architecture - Two-Tier Architecture

A Two-Tier Architecture is a system that separates an application into two main parts: the Web/Application Tier and the Database Tier. These two tiers work together to process user requests and manage data.

## The Web/Application Tier

The web/application tier. It serves the user interface, handles HTTP requests, manages file uploads and downloads, and runs Nextcloud’s application logic. Users interact with this tier directly through port 8080.

In this deployment, the Web/Application Tier is provided by the Nextcloud container. It is responsible for providing the private cloud storage interface that users access through a web browser.

## The Database Tier

The database tier stores persistent data such as user accounts, credentials, file metadata, sharing permissions, and application state. It does not handle web traffic directly and only responds to queries from the application tier.

In this deployment, MariaDB is used as the Database Tier. The MariaDB container stores the database information required by the Nextcloud application.

## Why separate them?

Separating them lets each tier be updated or restarted independently without affecting the other. It also improves security, since the database doesn't need to be exposed to the internet. Finally, it keeps the setup cleaner and easier to scale later.

Using separate containers also gives each service a specific responsibility. Docker Compose allows the Nextcloud application and MariaDB database to run as separate services while still communicating with each other.

## Architecture Overview

```text
User
  |
  | HTTP Request
  v
+-------------------------+
|      Nextcloud App      |
|   Web/Application Tier  |
|     Port 8080 -> 80     |
+------------+------------+
             |
             | Database Connection
             v
+-------------------------+
|         MariaDB         |
|      Database Tier      |
|        Port 3306        |
+-------------------------+
```

## Docker Compose Services

The two services used in this architecture are:

* **App** – The Nextcloud Web/Application container.
* **Database** – The MariaDB Database container.

These services are defined in the `docker-compose.yml` file and are deployed together using Docker Compose.
