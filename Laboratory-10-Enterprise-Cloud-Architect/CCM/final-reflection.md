# Final Reflection  
**Laboratory 10 – Enterprise Cloud Architect**

---

## 1. What I Learned

This laboratory activity allowed us to integrate all the skills we learned from previous labs into one complete enterprise-style project. We gained practical experience in:

- Designing a multi-tier architecture
- Provisioning and configuring a headless Ubuntu Server VM
- Deploying applications using Docker Compose
- Implementing persistent storage with named volumes
- Securing the host using UFW with a Default Deny policy
- Creating automation scripts and scheduling them with Cron
- Documenting the entire system for operational use

The most valuable lesson was understanding how different components (compute, networking, storage, security, and automation) work together to form a production-ready system.

---

## 2. Challenges Encountered

One of the biggest challenges was the installation and configuration of Docker on Ubuntu Server, particularly with the GPG key and repository setup. The process required careful attention to detail and multiple troubleshooting attempts.

Another challenge was ensuring that the containers could communicate properly and that persistent volumes retained data after restarts. Understanding the difference between bind mounts and named volumes was crucial.

Keyboard and clipboard limitations inside the VirtualBox headless environment also made the process slower and more error-prone when typing long commands.

---

## 3. How We Overcame the Challenges

We addressed the Docker installation issues by carefully following official documentation, cleaning up incorrect files, and using simplified commands when complex multi-line pastes failed.

For container networking and volumes, we tested the stack multiple times (`docker compose down` and `up`) and verified data persistence by creating content in WordPress and restarting the containers.

We also learned to work more patiently with the terminal environment and to break long commands into smaller, manageable steps.

---

## 4. Connection to Previous Laboratories

This final project built directly on skills from earlier labs:

- **Lab 1–3**: Linux basics, GitHub portfolio structure, and infrastructure concepts
- **Lab 4–6**: Docker, containerization, and multi-container applications (Docker Compose)
- **Lab 8**: UFW firewall and security hardening
- **Lab 9**: Bash scripting and Cron automation

Laboratory 10 served as a capstone that required combining all these skills into a cohesive, working system.

---

## 5. Personal Insights

Completing this laboratory made us realize the importance of Infrastructure as Code and automation. Manually configuring servers is time-consuming and error-prone. Using Docker Compose and Bash scripts significantly improved consistency and reliability.

We also developed a stronger appreciation for security practices such as the principle of least privilege and Default Deny policies.

Finally, this experience reinforced that troubleshooting is a core skill in cloud computing. Being able to read error messages, isolate problems, and systematically test solutions is just as important as knowing the commands.

---

## 6. Conclusion

Laboratory 10 successfully challenged us to think and work like a Cloud Architect. From designing the architecture to deploying, securing, automating, and documenting the system, we were able to complete a full lifecycle of a cloud-based application.

We are more confident in our ability to design and manage containerized infrastructure and ready to apply these skills in future projects.

---

**Student Name:** GROUP 7  
**Date:** October 2026