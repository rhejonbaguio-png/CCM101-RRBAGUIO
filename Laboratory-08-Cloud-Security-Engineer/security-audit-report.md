# Security Audit Report

## 1. Principle of Least Privilege (PoLP)

The Principle of Least Privilege means giving users and systems only the permissions they need to perform their tasks. This is important in cloud environments because it helps prevent unauthorized access to important files, applications, and information.

In this laboratory, I applied this principle by allowing only the necessary network connections for SSH and the Nginx web application. Limiting access helps reduce unnecessary security risks.

## 2. Attack Surface

The attack surface refers to all the possible points where an attacker could try to access or affect a virtual machine or server. Open ports, running services, and weak security settings can increase the attack surface.

To reduce these risks, administrators should disable unnecessary services, close unused ports, use strong credentials, and regularly check the server's security configuration.

## 3. Default Deny Policy

A Default Deny policy blocks incoming network traffic unless it is specifically permitted by a firewall rule. This approach is safer because it allows only the connections required by the server instead of accepting all incoming traffic.

In this activity, I configured UFW to deny incoming connections by default and allow outgoing connections. I also allowed SSH and TCP port 8080 for the Nginx web application.

## 4. Firewall Configuration and Verification

I used Uncomplicated Firewall (UFW) to configure and verify the server's network security settings.

| Security Setting | Configuration | Purpose |
|---|---|---|
| Firewall Status | Active | Ensures that UFW is enabled. |
| Incoming Traffic | Deny by default | Blocks incoming connections unless allowed by a rule. |
| Outgoing Traffic | Allow by default | Allows outgoing connections. |
| SSH Port | 22/tcp allowed | Supports remote server administration. |
| Web Application Port | 8080/tcp allowed | Allows access to the Nginx web application through port 8080. |

I verified these settings using `sudo ufw status verbose` and `sudo ufw status numbered`. The output confirmed that the firewall was active and that the required SSH and web application ports were allowed.

## 5. Web Application Testing

I deployed an Nginx web server using Docker and tested its response through port 8080.

Commands used:

```bash
docker ps
curl -I http://localhost:8080
```

The Docker output showed that the `secure-web-app` container was running. The `curl` command returned `HTTP/1.1 200 OK`, confirming that the Nginx web server responded successfully to the test request.

## 6. Security Recommendations

To improve server security, unnecessary ports should remain closed, SSH access should be restricted to trusted sources when possible, and firewall rules should be reviewed regularly. Administrators should also keep software updated, use strong authentication, and monitor system activity for suspicious connections.

## Conclusion

This security audit helped me understand how firewall rules and access restrictions protect a server. By using UFW, applying the Default Deny policy, and allowing only the required ports, I learned how to reduce unnecessary network exposure. Testing the Nginx application also helped me verify that the web server was functioning correctly after the firewall was configured.
