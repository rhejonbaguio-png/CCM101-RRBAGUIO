# Continue Your Linux Investigation

Linux commands were used in the KillerCoda Playground to examine and investigate the basic system information of the cloud server. The investigation focused on identifying the operating system, CPU information, memory usage, and available disk space. These details are important because they help users understand the resources and environment available on a Linux-based cloud server.

The Linux terminal provides several built-in commands that allow system administrators to quickly collect important information without using a graphical interface. This makes Linux useful for cloud computing, server management, troubleshooting, and system monitoring.

### Linux Commands Used

The following Linux commands were used to collect and examine the system information:

- `cat /etc/os-release` – displays information about the installed Linux operating system, including the distribution name and version.
- `lscpu` – displays detailed information about the CPU, including the processor architecture, CPU model, number of cores, and other CPU-related information.
- `free -h` – shows the total, used, and available system memory (RAM) in a human-readable format.
- `df -h` – displays information about the disk space, including the total, used, and available storage for mounted file systems.

### Purpose of the Investigation

The purpose of this investigation was to understand the resources provided by the Linux cloud environment. By checking the operating system, CPU, memory, and storage, it is possible to determine the basic capabilities of the server.

This information can also help system administrators monitor resource usage, identify possible limitations, and decide whether additional resources may be needed when running applications or services.

### Terminal Output

The screenshot below shows the results of the Linux commands executed in the KillerCoda Playground. The terminal output provides the actual system information collected during the investigation.

![Linux Investigation Terminal Output](screenshots/killercoda-terminal.png)

### Cloud Migration Recommendation

If this Linux server were migrated to the cloud, it could be hosted using virtual machine services from the three major cloud platforms: Amazon Web Services (AWS), Google Cloud Platform (GCP), and Microsoft Azure. These services allow organizations to run Linux-based servers in the cloud without needing to maintain physical server hardware.

- **AWS – Amazon EC2:** Can be used to create and run virtual machines that support Linux operating systems such as Ubuntu. Amazon EC2 provides flexible computing resources that can be scaled depending on the server's workload and requirements.

- **Google Cloud Platform – Compute Engine:** Can be used to create and manage Linux virtual machines using Google's cloud infrastructure. Compute Engine provides scalable computing resources and can be configured based on the processing, memory, and storage requirements of the application.

- **Microsoft Azure – Azure Virtual Machines:** Provides virtual machines that can host and run Linux-based servers in the Azure cloud. Azure Virtual Machines support different Linux distributions and can be integrated with other Azure services for networking, storage, security, and monitoring.

### Recommended Cloud Service

For this Linux server, **Amazon EC2** would be a suitable choice because it provides flexible and scalable virtual machines that can support Linux-based workloads. EC2 also offers different instance types, allowing organizations to select computing resources based on their performance and budget requirements.

However, Google Compute Engine and Azure Virtual Machines are also capable alternatives. The final choice would depend on factors such as cost, existing technologies, security requirements, performance needs, scalability, and the organization's preferred cloud ecosystem.

### Migration Considerations

Before migrating the Linux server to the cloud, the organization should first evaluate its current hardware resources, applications, storage requirements, network configuration, and security settings. A proper migration plan can help reduce downtime and ensure that the server continues to operate correctly after being moved to the cloud.

Cloud migration can also provide benefits such as easier scalability, improved availability, centralized management, and access to additional cloud services. However, the organization should also consider ongoing cloud costs, security configuration, data transfer, and system monitoring.

### Summary

The Linux server can be migrated to any of the three major cloud platforms using their virtual machine services. AWS EC2, Google Compute Engine, and Azure Virtual Machines all provide suitable environments for hosting Linux servers. The best platform should be selected based on the organization's technical requirements, budget, security needs, and future growth.

Microsoft Azure – Azure Virtual Machines: Provides virtual machines that can host and run Linux-based servers in the Azure cloud.
