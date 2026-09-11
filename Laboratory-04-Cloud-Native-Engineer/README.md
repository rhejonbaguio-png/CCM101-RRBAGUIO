# Laboratory 04 - Cloud-Native Engineer

## Mission Overview

In this laboratory activity, I learned how containers are used in cloud computing. I compared Virtual Machines and Containers and used the KillerCoda Playground to practice Docker commands. I also deployed an Nginx web server using Docker and managed its container through different lifecycle commands.

This activity helped me understand how containerization makes applications easier to deploy, manage, and run in different environments. By using Docker, I was able to experience how a web server can run inside a lightweight container without requiring a complete virtual machine.

## Objectives

* Differentiate Virtual Machines from Containers.
* Access a Docker-enabled environment using KillerCoda.
* Understand the basic concept of containerization.
* Execute basic Docker CLI commands.
* Pull and run an Nginx container.
* Test a containerized web server.
* Understand port mapping in Docker.
* Stop, verify, and remove a Docker container.
* Document Docker operations using Markdown.

## Docker Commands Executed

### Checkpoint 3 - Docker Playground

| Docker Command     | Description                                                                |
| ------------------ | -------------------------------------------------------------------------- |
| `docker --version` | Checks the installed Docker version and confirms that Docker is available. |
| `docker info`      | Shows detailed information about the Docker environment and configuration. |

These commands helped me verify that the Docker environment in the KillerCoda Playground was working properly before starting the deployment activity.

### Checkpoint 4 - Nginx Deployment

| Docker Command                   | Description                                                              |
| -------------------------------- | ------------------------------------------------------------------------ |
| `docker pull nginx`              | Downloads the official Nginx image from Docker Hub.                      |
| `docker run -d -p 8080:80 nginx` | Runs the Nginx container in detached mode and maps port 8080 to port 80. |
| `docker ps`                      | Lists the currently running containers.                                  |
| `curl http://localhost:8080`     | Tests the Nginx web server through port 8080.                            |

The Nginx deployment demonstrated how a web server can be quickly launched using a Docker image. The port mapping allowed me to access the Nginx server through port `8080` while the service inside the container was running on port `80`.

### Checkpoint 5 - Container Lifecycle

| Docker Command             | Description                                                             |
| -------------------------- | ----------------------------------------------------------------------- |
| `docker ps`                | Lists the running containers.                                           |
| `docker stop df906e73429c` | Stops the running Nginx container.                                      |
| `docker ps -a`             | Shows all containers and verifies that the Nginx container has stopped. |
| `docker rm df906e73429c`   | Removes the stopped Nginx container.                                    |
| `docker ps -a`             | Checks that the removed container is no longer listed.                  |

The container lifecycle activity showed the basic process of managing a Docker container. I first checked the running container, stopped it, verified its status, removed it, and finally checked the list again to confirm that it had been successfully deleted.

> **Note:** The container ID may be different when performing the activity. Use the actual container ID shown by `docker ps`.

## Virtual Machines and Containers

Virtual Machines and Containers are both used in cloud computing, but they have different approaches. A Virtual Machine includes a complete operating system and generally requires more system resources. Containers are more lightweight because they share the host operating system kernel while keeping applications isolated.

Containers are useful for cloud-native applications because they can be created, started, stopped, and removed quickly. They also make applications more portable between different environments.

## Skills Learned

I learned how to use basic Docker commands and how to manage a container from starting it until removing it. I also learned how to deploy an Nginx web server and test it using the `curl` command.

In addition, I learned how Docker images are used as templates for creating containers and how port mapping allows a service inside a container to be accessed from the host environment. Most importantly, I became more familiar with using the terminal, troubleshooting simple Docker operations, and documenting technical activities using Markdown.

## Challenges Encountered

One challenge I encountered was reconnecting to KillerCoda and having to start the Docker activity again. I also had to make sure that I was using the correct container ID when stopping and removing the Nginx container.

Another challenge was understanding the purpose of port mapping in the Docker run command. After reviewing the command and repeating the steps, I understood that port `8080` on the host was connected to port `80` inside the Nginx container.

After repeating the steps and checking the results using `docker ps` and `docker ps -a`, I was able to successfully run, test, stop, and remove the Nginx container.


