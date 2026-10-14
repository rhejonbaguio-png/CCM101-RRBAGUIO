# Firewall Configuration

| Section | Description | Command |
|---|---|---|
| 1. Allow SSH | Allows SSH connections before enabling the firewall. | `sudo ufw allow ssh` |
| 2. Default Incoming Policy | Blocks incoming connections by default. | `sudo ufw default deny incoming` |
| 3. Default Outgoing Policy | Allows outgoing connections. | `sudo ufw default allow outgoing` |
| 4. Enable Firewall | Activates the firewall. | `sudo ufw enable` |
| 5. Verify Firewall | Checks the firewall status and policies. | `sudo ufw status verbose` |
| 6. Allow Web Application Port | Allows TCP traffic on port 8080 for the Nginx web application. | `sudo ufw allow 8080/tcp` |
| 7. Check Firewall Rules | Displays the configured firewall rules with numbers. | `sudo ufw status numbered` |

## Why SSH Must Be Allowed First

SSH should be allowed before enabling the firewall to help maintain remote access to the server. If SSH is not allowed, enabling the firewall may interrupt remote administration.
