Laboratory 7: The Cloud Operations Engineer

Mission Overview

This laboratory activity focuses on monitoring a Linux server and checking the performance of a containerized web application. I used Linux monitoring commands and Docker with Nginx to observe system resources, generate HTTP requests, identify website errors, and analyze application logs. This activity helped me understand how cloud operations engineers monitor servers and maintain the performance and reliability of web applications.

Objectives

Check the server's RAM and disk storage usage.

Deploy an Nginx web server using Docker.

Generate HTTP requests to test website accessibility.

Identify a missing webpage and understand the HTTP 404 error.

Analyze application logs to identify requests and errors.

Monitor container CPU and memory usage.

Document the monitoring process and results using Markdown.

Monitoring Commands Executed

Command

Purpose

free -h

Checked the total, used, and available RAM.

df -h /

Checked the storage usage of the root filesystem.

top

Monitored running processes and CPU activity in real time.

docker run -d -p 8080:80 --name client-website nginx

Deployed an Nginx web server inside a Docker container.

curl http://localhost:8080

Tested whether the Nginx website was accessible.

curl http://localhost:8080/hidden-admin-page

Tested a nonexistent webpage and generated a 404 response.

docker logs client-website

Checked the Nginx container logs for HTTP requests and errors.

docker stats

Monitored the container's CPU, memory, network, and other resource usage.
