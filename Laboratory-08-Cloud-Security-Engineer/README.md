# Laboratory 08: The Cloud Security Engineer

## Mission Overview

This mission focuses on securing a server using a host-based firewall. I configured Uncomplicated Firewall (UFW) to control incoming and outgoing network traffic and protect the server from unauthorized connections. I also deployed an Nginx web server using Docker to test the firewall configuration and verify that the application was accessible through port 8080.

## Objectives

- Understand the Principle of Least Privilege in server security.
- Identify the attack surface of a virtual machine.
- Configure UFW with a Default Deny incoming policy.
- Allow SSH connections for remote server administration.
- Allow TCP traffic on port 8080 for the web application.
- Verify firewall rules and test web server connectivity.
- Document the security configuration and its results.

## Commands Executed

### 1. Deploy the Nginx Web Server

```bash
docker run -d -p 8080:80 --name secure-web-app nginx
```

Test the web server:

```bash
curl http://localhost:8080
```

### 2. Configure the Firewall

Allow SSH connections:

```bash
sudo ufw allow OpenSSH
```

Set the default incoming and outgoing policies:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

Enable the firewall and check its status:

```bash
sudo ufw --force enable
sudo ufw status verbose
```

Allow access to the web application through port 8080:

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

### 3. Verify the Configuration

Check whether the container is running:

```bash
docker ps
```

Test the web application:

```bash
curl -I http://localhost:8080
```

The expected result is `HTTP/1.1 200 OK`, which indicates that the Nginx web server responds successfully.

## Skills Learned

- Deploying and testing an Nginx web server using Docker.
- Configuring a host-based firewall with UFW.
- Applying the Default Deny incoming policy to reduce unnecessary network access.
- Allowing specific ports for SSH and web application traffic.
- Verifying firewall rules using UFW commands.
- Testing application connectivity using `curl`.
- Monitoring the running Docker container and documenting security settings.

## Conclusion

This laboratory helped me understand the importance of securing a server using a firewall. By denying incoming traffic by default and allowing only the required connections, I learned how to reduce unnecessary exposure to potential attacks. I also verified that the Nginx application was running and responding successfully through port 8080. This activity improved my understanding of basic cloud security and server protection.
