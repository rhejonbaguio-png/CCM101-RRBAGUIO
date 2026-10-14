# Reflection: The Cloud Security Engineer

In this laboratory activity, I learned the importance of securing a server and controlling network traffic using a firewall. I used UFW on my Ubuntu environment to manage incoming and outgoing connections. I also learned how the Principle of Least Privilege and the Default Deny policy help protect a server by allowing only the necessary connections.

I realized that configuring a firewall is an important step in cloud security. By setting the default incoming policy to deny, I can reduce unnecessary access to the server. I allowed SSH for remote administration and TCP port 8080 for my Nginx web application. I also learned that SSH should be allowed before enabling the firewall to avoid losing remote access to the server.

During the activity, I used Docker to run an Nginx web server and tested it using the `curl` command. I checked the firewall status and verified that the required ports were allowed. The result showed that the firewall was active, the Nginx container was running, and the web server returned an HTTP 200 OK response. This helped me understand how to verify that a security configuration is working properly.

I also learned that leaving unnecessary ports open can increase the risk of unauthorized access. For example, exposing a database port such as 3306 to the public internet can put sensitive information at risk. Database connections should be restricted to trusted systems and users to improve security.

Overall, this laboratory improved my understanding of basic cloud security and server protection. I realized that deploying an application is not enough because it also needs proper security configurations and regular monitoring. Completing this mission helped me develop my skills in using Linux commands, managing Docker containers, configuring firewall rules, and testing network connectivity. As a BSIT student, I can use these skills in future cloud computing activities and continue improving my knowledge of cybersecurity.
