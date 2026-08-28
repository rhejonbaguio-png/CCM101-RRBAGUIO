# Cloud Infrastructure Components

This document contains my observations about the
cloud infrastructure components that I found while
exploring the Linux environment in KillerCoda. It
also explains the purpose and importance of each
component in cloud computing.

## 1. Compute Resources

**What I observed:** The `lscpu` command showed
information about the CPU, including the processor
model and the number of CPU cores. The `free -h`
command also showed the available memory or RAM.

**Purpose:** Compute resources provide the
processing power and memory needed to run programs,
applications, and services.

**Why it matters in cloud computing:** Compute
resources are important because cloud applications
need CPU and memory to perform different tasks.
These resources can be adjusted depending on the
workload of the cloud system.

**Relation to KillerCoda:** In KillerCoda, the
Linux environment uses virtual CPU and RAM
resources. I was able to check these resources
using Linux commands without accessing a physical
computer server.


## 2. Storage Resources

**What I observed:** The `df -h` command showed
the available disk space and the file systems used
by the Linux environment. I observed that the main
file system is mounted at `/` and uses disk space
for storing system files and other data.

**Purpose:** Storage resources provide space for
saving operating system files, applications,
documents, configurations, and other information.

**Why it matters in cloud computing:** Storage is
important because cloud applications need a reliable
place to store and retrieve data. Cloud storage can
also provide additional space when more storage is
required.

**Relation to KillerCoda:** In KillerCoda, virtual
storage is used to store the Linux operating system,
files, applications, and other resources needed
during the activities.


## 3. Networking Resources

**What I observed:** The `ip addr` command showed
the network interfaces and IP address assigned to
the Linux environment. I also used the `hostname`
command to check the name of the server.

**Purpose:** Networking resources provide
communication between computers, servers,
applications, and other network devices.

**Why it matters in cloud computing:** Networking
is important because cloud servers need to
communicate with users and other services over a
network. It allows users to access cloud resources
from different locations.

**Relation to KillerCoda:** In KillerCoda, the
Linux server has a virtual network interface and
IP address. These resources allow the virtual
environment to connect and communicate through
the network.


## 4. Operating System

**What I observed:** The `uname -a` command showed
information about the Linux kernel and system.
The `cat /etc/os-release` command also displayed
information about the Linux operating system.

**Purpose:** The operating system manages the
computer's hardware and software resources. It
also allows users to run applications and execute
commands.

**Why it matters in cloud computing:** The operating
system is important because it manages the resources
of a cloud server, including CPU, memory, storage,
networking, users, and running processes.

**Relation to KillerCoda:** KillerCoda provides a
Linux-based virtual environment where I can execute
commands, manage files, inspect system resources,
and perform cloud computing activities.
