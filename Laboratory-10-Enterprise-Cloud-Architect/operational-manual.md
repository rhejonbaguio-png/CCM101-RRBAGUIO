# Operational Manual  
**Laboratory 10 – Enterprise Cloud Architect**

---

## 1. System Overview

This document provides step-by-step operational guidance for the deployed multi-tier infrastructure consisting of WordPress and MariaDB running on Docker, hosted on Ubuntu Server 24.04.

---

## 2. Prerequisites

- Ubuntu Server 24.04 LTS (running on VirtualBox)
- Docker Engine and Docker Compose installed
- User added to the `docker` group
- Network configured with Bridged Adapter

---

## 3. Deployment Instructions

### 3.1 Navigate to Project Directory
```bash
cd ~/wordpress-stack
```

### 3.2 Start the Stack
```bash
docker compose up -d
```

### 3.3 Verify Running Containers
```bash
docker compose ps
```

Expected output: Both `wordpress-app` and `wordpress-db` should show status **Up**.

### 3.4 Access the Application
1. Find the VM IP address:
   ```bash
   ip a
   ```
2. Open a browser on the host machine and go to:
   ```
   http://<VM-IP-ADDRESS>
   ```

---

## 4. Common Operations

### 4.1 Stop the Stack
```bash
docker compose down
```

### 4.2 Restart the Stack
```bash
docker compose restart
```

### 4.3 View Logs
```bash
docker compose logs -f
```

### 4.4 Check Container Status
```bash
docker ps
```

---

## 5. Firewall Management (UFW)

### 5.1 Check Firewall Status
```bash
sudo ufw status verbose
```

### 5.2 Current Rules
- Default incoming: **Deny**
- Allowed ports:
  - 22/tcp (SSH)
  - 80/tcp (HTTP)

### 5.3 Enable Firewall (if not yet enabled)
```bash
sudo ufw enable
```

---

## 6. Backup Operations

### 6.1 Manual Backup
```bash
cd ~/wordpress-stack
./automation-script.sh
```

### 6.2 View Backup Files
```bash
ls -lh ~/backups/
```

### 6.3 Cron Schedule
The backup script is scheduled to run daily at 2:00 AM.

To verify:
```bash
crontab -l
```

---

## 7. Disaster Recovery

### 7.1 Restore Database from Backup
1. Locate the desired backup file in `~/backups/`
2. Extract if needed:
   ```bash
   gunzip wordpress_YYYYMMDD_HHMMSS.sql.gz
   ```
3. Restore:
   ```bash
   docker exec -i wordpress-db mysql -u usersyug -p passwordto! wordpress < ~/backups/wordpress_YYYYMMDD_HHMMSS.sql
   ```

---

## 8. Troubleshooting

| Issue                        | Solution                                      |
|-----------------------------|-----------------------------------------------|
| Containers not starting     | Run `docker compose logs` to check errors     |
| Cannot access website       | Verify UFW allows port 80 and check VM IP     |
| Permission denied on Docker | Ensure user is in docker group and re-login   |
| Backup fails                | Check if MariaDB container is running         |

---

## 9. Security Notes

- Only ports 22 and 80 are open
- Default Deny policy is enforced
- Database credentials are stored in `docker-compose.yml` (change in production)
- Regular backups are automated with retention policy

---

**End of Operational Manual**