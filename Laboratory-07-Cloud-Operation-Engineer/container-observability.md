# Container Observability

## Application Logs

### 404 Error Log

```text
172.17.0.1 - - [09/Oct/2026:03:11:19 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

### Log Analysis

The log shows that a client sent an HTTP GET request to `/hidden-admin-page`. The server returned a **404 Not Found** status because the requested page could not be found. The request was made using the `curl` command.

### Importance of Application Logs

Application logs help identify errors and show which requests succeeded or failed. They make troubleshooting easier by providing details about user requests, response status codes, and application activity. By analyzing logs, cloud operations engineers can investigate problems and maintain the reliability of web applications.

## Container Metrics

Container metrics provide information about the resources consumed by a running Docker container. These metrics help determine whether an application is operating efficiently.

### Container Information

| Metric | Description |
|---|---|
| Container Name | `client-website` |
| Application | Nginx Web Server |
| Port Mapping | `8080:80` |
| Memory Usage | To be recorded in Checkpoint 5 |
| CPU Usage | To be recorded in Checkpoint 5 |
| Network I/O | To be checked using `docker stats` |

### Monitoring Command

```bash
docker stats client-website
```

This command displays real-time information about the container's CPU usage, memory consumption, network traffic, and block input/output.

### Importance of Container Metrics

Monitoring container metrics helps identify excessive resource usage and potential performance issues. Regular monitoring allows engineers to determine whether an application needs troubleshooting or additional resources.

## Conclusion

Container observability is important for maintaining a reliable web application. Application logs help identify errors such as HTTP 404 responses, while container metrics provide information about CPU, memory, and network usage. Combining logs and metrics makes it easier to troubleshoot problems and monitor the overall health of a Dockerized application.
