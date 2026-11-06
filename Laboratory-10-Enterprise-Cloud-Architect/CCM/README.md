# Laboratory 10 – Enterprise Cloud Architect

**Course:** CCM101 – Cloud Computing  
**Institution:** University of Eastern Pangasinan  
**Student:** [Your Full Name]  
**Date:** October 2026

---

## Project Overview

This laboratory activity demonstrates the complete design, deployment, security hardening, and automation of a production-ready multi-tier cloud infrastructure using Docker on Ubuntu Server.

The solution consists of a WordPress application connected to a MariaDB database, running inside Docker containers with persistent storage, secured by UFW firewall (Default Deny policy), and automated with a Bash backup script scheduled via Cron.

---

## Architecture Summary

| Layer              | Technology                  | Purpose                              |
|--------------------|-----------------------------|--------------------------------------|
| Hypervisor         | VirtualBox (Type-2)         | Host virtualization                  |
| Operating System   | Ubuntu Server 24.04 LTS     | Base infrastructure                  |
| Container Runtime  | Docker + Docker Compose     | Application deployment               |
| Application        | WordPress (latest)          | Frontend web application             |
| Database           | MariaDB 11.4                | Persistent data storage              |
| Firewall           | UFW (Default Deny)          | Host-based security                  |
| Automation         | Bash Script + Cron          | Database backup & retention          |

---

## Repository Structure

```
Laboratory-10-Enterprise-Cloud-Architect/
├── README.md
├── architecture-diagram.png
├── docker-compose.yml
├── automation-script.sh
├── operational-manual.md
└── final-reflection.md
```

---

## Key Features Implemented

- Multi-tier architecture (Application + Database)
- Persistent named volumes (`db_data` and `wp_data`)
- Infrastructure as Code using Docker Compose
- Host-based firewall with Default Deny policy
- Automated daily database backups with 7-day retention
- Complete operational documentation

---

## How to Deploy

1. Clone this repository
2. Navigate to the project folder
3. Run: `docker compose up -d`
4. Access the application via the VM IP address on port 80

See `operational-manual.md` for detailed instructions.

---

## Author

Prepared as the final requirement for CCM101 – Cloud Computing.