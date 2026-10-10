# Establish a Host System Baseline

## RAM Usage

I used the `free -h` command to check the server's memory usage and available RAM. This helps determine whether the server has enough memory to run applications and Docker containers efficiently.

| RAM Information | Value |
|---|---:|
| Total RAM | 1.9 GiB |
| RAM Currently Used | 409 MiB |
| Available RAM | 1.5 GiB |
| Total Swap Memory | 1.0 GiB |
| Swap Memory Used | 0 B |

## Disk Storage

I used the `df -h /` command to check the storage capacity and usage of the root filesystem. Monitoring disk space helps ensure that the server has enough storage for application files, logs, and other important data.

| Disk Information | Value |
|---|---:|
| Filesystem | Root (`/`) |
| Total Storage Capacity | 19 GB |
| Storage Used | 5.5 GB |
| Storage Available | 13 GB |
| Disk Usage | 30% |

## Importance of Checking Disk Space

Checking disk space before a massive traffic surge is important because the server needs enough storage for application files, logs, temporary files, and other data generated while handling user requests. If the disk becomes full, applications may experience errors or stop working properly.

Monitoring RAM is equally important because insufficient memory can affect application performance and container stability. Establishing a host system baseline provides a reference point for comparing resource usage during normal operations and periods of high traffic.

## Conclusion

Based on the recorded results, the server has approximately 1.5 GiB of available RAM and 13 GB of available disk storage. These measurements provide a baseline for monitoring system resources and identifying possible performance issues. Regular monitoring helps maintain the stability and reliability of the server and its containerized applications.
