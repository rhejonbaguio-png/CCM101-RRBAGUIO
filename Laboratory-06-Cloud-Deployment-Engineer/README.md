# Laboratory 06 – Cloud Deployment Engineer

## Mission Overview

In this laboratory activity, I learned how to deploy a multi-tier private cloud storage application using Docker Compose. The application uses Nextcloud as the web application and MariaDB as the database. By using a `docker-compose.yml` file, I can define and manage multiple containers through a single configuration file.

## Objectives

* Understand the concept of two-tier architecture.
* Identify the roles of the Web/Application Tier and Database Tier.
* Create a Docker Compose configuration using YAML.
* Deploy Nextcloud and MariaDB containers.
* Access the Nextcloud web interface through port 8080.
* Understand Infrastructure as Code (IaC).
* Document the deployment process in a GitHub repository.

## Commands Executed

The following commands were used during the deployment process:

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
nano docker-compose.yml
docker-compose up -d
docker-compose ps
docker-compose logs app
docker-compose down
```

## Application Architecture

This deployment uses a two-tier architecture consisting of:

* **Web/Application Tier:** Nextcloud provides the web interface for the private cloud storage application.
* **Database Tier:** MariaDB stores the application's database information.

Docker Compose connects the two services so that the Nextcloud application can communicate with the MariaDB database.

## Skills Learned

* Linux command-line operations
* Docker container management
* Docker Compose
* YAML configuration
* Multi-tier application architecture
* Infrastructure as Code (IaC)
* Cloud application deployment
* Technical documentation using Markdown
* GitHub portfolio management

## Screenshots

The following screenshots will be included as evidence of the laboratory activity:

1. `compose-deployment.png` – Shows the running Nextcloud and MariaDB containers.
2. `nextcloud-web.png` – Shows the Nextcloud installation page accessed through port 8080.
3. `compose-teardown.png` – Shows the containers being stopped and removed.

## Conclusion

This laboratory activity helped me understand how Docker Compose simplifies the deployment of a multi-container application. I learned how Nextcloud and MariaDB work together in a two-tier architecture and how YAML configuration supports Infrastructure as Code. These skills will help me manage and deploy cloud applications more efficiently.
