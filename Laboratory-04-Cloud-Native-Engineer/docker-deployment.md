# Docker Deployment

## Nginx Container Deployment

### 1. Pull the Nginx Image

```bash
docker pull nginx
```

This command downloads the official Nginx image from Docker Hub. The image contains the files and configuration needed to create an Nginx container.

### 2. Run the Nginx Container

```bash
docker run -d -p 8080:80 nginx
```

This command runs the Nginx container in the background and maps port 8080 on the host to port 80 inside the container. The `-d` option allows the container to run in detached mode.

### 3. Test the Nginx Web Server

```bash
curl http://localhost:8080
```

This command sends a request to the Nginx web server and displays its HTML welcome page.

The output showed **"Welcome to nginx!"**, which confirmed that the web server was running successfully and could be accessed through port 8080.

## Container Lifecycle

### 1. List Running Containers

```bash
docker ps
```

This command shows the Nginx container that is currently running. It also displays important information such as the container ID, image, status, and port mapping.

### 2. Stop the Running Container

```bash
docker stop df906e73429c
```

This command stops the running Nginx container. The container ID identifies the specific container that needs to be stopped.

> **Note:** The container ID may be different in another Docker session. Use the actual ID shown by `docker ps`.

### 3. Verify It Is Stopped

```bash
docker ps -a
```

This command shows all containers, including stopped containers, and confirms that the Nginx container has stopped with an `Exited (0)` status.

### 4. Remove the Container Completely

```bash
docker rm df906e73429c
```

This command removes the stopped Nginx container completely from the Docker environment.

### 5. Verify the Container Was Removed

```bash
docker ps -a
```

After removing the container, this command can be used again to confirm that the Nginx container is no longer listed.

## Docker Deployment Summary

| Step | Docker Command                   | Purpose                                  |
| ---- | -------------------------------- | ---------------------------------------- |
| 1    | `docker pull nginx`              | Downloads the official Nginx image.      |
| 2    | `docker run -d -p 8080:80 nginx` | Creates and runs the Nginx container.    |
| 3    | `curl http://localhost:8080`     | Tests the Nginx web server.              |
| 4    | `docker ps`                      | Checks the running container.            |
| 5    | `docker stop <container-id>`     | Stops the Nginx container.               |
| 6    | `docker ps -a`                   | Verifies the container status.           |
| 7    | `docker rm <container-id>`       | Removes the stopped container.           |
| 8    | `docker ps -a`                   | Confirms that the container was removed. |

## Result

The Nginx web server was successfully deployed using Docker and tested through port 8080. The container was then stopped, checked, and removed using basic Docker commands.

The successful **"Welcome to nginx!"** response confirmed that the containerized web server was working correctly. Through this activity, I gained practical experience in pulling Docker images, running containers, mapping ports, testing services, and managing the complete container lifecycle.


