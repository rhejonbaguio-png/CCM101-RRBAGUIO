# MinIO Deployment

## Overview

For this laboratory activity, I deployed an S3-compatible object storage server using MinIO and Docker in the KillerCoda Ubuntu Playground.

## Docker Command

The MinIO server was deployed using the following command:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server -e "MINIO_ROOT_USER=cloudadmin" -e "MINIO_ROOT_PASSWORD=CloudNova2026!" quay.io/minio/minio server /data --console-address ":9001"
