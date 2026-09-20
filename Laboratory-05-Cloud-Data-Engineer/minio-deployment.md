# MinIO Deployment - Technical Documentation

## Docker Command Used

| Item | Details |
|---|---|
| Docker Command | `docker run -d -p 9000:9000 -p 9001:9001 --name minio-server -e "MINIO_ROOT_USER=cloudadmin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" quay.io/minio/minio server /data --console-address ":9001"` |
| Description | This command deployed the MinIO object storage server using Docker and exposed the API and Web Console ports. |

## Web Console Port

| Item | Details |
|---|---|
| Web Console Port | `9001` |
| Purpose | Allows access to the MinIO management interface through a web browser. |

## Bucket Created

| Item | Details |
|---|---|
| Bucket Name | `client-photos` |
| Purpose | Used to store the sample file uploaded during the activity. |

## Environment Variables

| Environment Variable | Value | Description |
|---|---|---|
| `MINIO_ROOT_USER` | `cloudadmin` | Sets the administrator username. |
| `MINIO_ROOT_PASSWORD` | `CloudNova2026!` | Sets the administrator password used to log in to the MinIO Web Console. |
| `-e` | Environment Variable Flag | Used to set environment variables inside the Docker container. |
