# Web Infrastructure Design

## Project Overview

### Project Details
- **Track:** SE Foundations
- **Topic:** Web Infrastructure Design
- **Fields:** DevOps, SysAdmin, Web Infrastructure
- **Weight:** 1
- **Team:** Mohammed Tajalkhatim, Ahed Eisa
- **Duration:** May 30, 2024, 5:00 AM - June 3, 2024, 5:00 AM
- **Review:** Manual QA review required (request upon project completion)

### Key Concepts
- DNS
- Monitoring
- Web Server
- Network Basics
- Load Balancer
- Server

### Resources
- **Network basics:** Concept page
- **Server:** Concept page
- **Web server:** Concept page
- **DNS:** Concept page
- **Load balancer:** Concept page
- **Monitoring:** Concept page
- **Database:** What is a database?
- **Web Server vs App Server:** What’s the difference between a web server and an app server?
- **DNS Record Types:** DNS record types
- **Single Point of Failure:** Single point of failure
- **Downtime Avoidance:** How to avoid downtime when deploying new code
- **High Availability Cluster:** High availability cluster (active-active/active-passive)
- **HTTPS:** What is HTTPS?
- **Firewall:** What is a firewall?

## Learning Objectives
By the end of this project, you should be able to:
- Draw a diagram of the web stack built with the sysadmin/devops track projects.
- Explain the role of each component.
- Understand system redundancy.
- Know and understand the acronyms: LAMP, SPOF, QPS.

## Key Components
- **Load Balancer:** Distributes incoming traffic across multiple servers to ensure scalability and reliability.
- **Firewalls:** Control incoming and outgoing network traffic based on predetermined security rules.
- **SSL Certificate:** Enables secure communication between the client and server.
- **Monitoring Clients:** Collect data on the performance and health of the web infrastructure.
- **Database Primary-Replica (Master-Slave) Cluster:** Ensures high availability and scalability of the database.

## Benefits
- **Scalability:** The web infrastructure can handle increased traffic and user demand.
- **Reliability:** The infrastructure is designed to minimize downtime and ensure high availability.
- **Security:** The infrastructure is designed to prevent unauthorized access and ensure secure communication.
- **Monitoring:** The infrastructure is designed to provide real-time monitoring and alerting for issues.

## Requirements
- **README.md:** A mandatory file at the root of the project folder.
- **Diagrams:** Take pictures or screenshots of your whiteboard diagrams for each task.
- **Manual Review:** Upload screenshots of completed tasks for manual review.
- **Whiteboarding:** Present each task in front of a mentor, staff, or student without a computer or notes.
- **Focus:** Address only the requirements specified; details will be explored in later projects.
- **Time Management:** You will have 30 minutes for each exercise; focus on the asked requirements.
- **Quiz Questions:** Complete the quiz successfully before proceeding.

## Tasks

### Task 0: Simple Web Stack
**Objective:** Design a single-server web infrastructure hosting a website accessible via www.foobar.com.

**Requirements:**
- **Components:**
  - 1 server
  - 1 web server (Nginx)
  - 1 application server
  - 1 application files (your code base)
  - 1 database (MySQL)
  - 1 domain name foobar.com with a www record pointing to your server IP (8.8.8.8)
- **Explanation:**
  - **Server:** What is a server?
  - **Domain Name:** What is its role?
  - **DNS Record:** Identify the type of DNS record for www.foobar.com.
  - **Web Server:** What is its role?
  - **Application Server:** What is its role?
  - **Database:** What is its role?
  - **Communication:** How does the server communicate with the user's computer?
- **Issues:**
  - **SPOF:** Single Point of Failure
  - **Downtime:** Downtime issues during maintenance
  - **Scalability:** Scalability limitations with increased traffic

**Submission:**
- **Repository:** GitHub repository: alx-system_engineering-devops
- **Directory:** 0x09-web_infrastructure_design
- **File:** 0-simple_web_stack

### Task 1: Distributed Web Infrastructure
**Objective:** Design a three-server web infrastructure hosting the website www.foobar.com.

**Requirements:**
- **Components:**
  - 2 servers
  - 1 web server (Nginx)
  - 1 application server
  - 1 load balancer (HAproxy)
  - 1 set of application files (your code base)
  - 1 database (MySQL)
- **Explanation:**
  - **Additional Elements:** Why each new element is added.
  - **Load Balancer:** The distribution algorithm and how it works.
  - **Setup:** Is it Active-Active or Active-Passive?
  - **Database Cluster:** How does a Primary-Replica (Master-Slave) cluster work?
  - **Nodes:** Difference between Primary and Replica nodes.
- **Issues:**
  - **SPOF:** Single Points of Failure
  - **Security:** Security issues (no firewall, no HTTPS)
  - **Monitoring:** Lack of monitoring

**Submission:**
- **Repository:** GitHub repository: alx-system_engineering-devops
- **Directory:** 0x09-web_infrastructure_design
- **File:** 1-distributed_web_infrastructure

### Task 2: Secured and Monitored Web Infrastructure
**Objective:** Design a secured, encrypted, and monitored three-server web infrastructure hosting the website www.foobar.com.

**Requirements:**
- **Components:**
  - 3 firewalls
  - 1 SSL certificate to serve www.foobar.com over HTTPS
  - 3 monitoring clients (data collectors for Sumologic or other monitoring services)
- **Explanation:**
  - **Additional Elements:** Why each new element is added.
  - **Firewalls:** What are they for?
  - **HTTPS:** Why is traffic served over HTTPS?
  - **Monitoring:** Purpose of monitoring and how tools collect data.
  - **Monitoring QPS:** How to monitor your web server's QPS.
- **Issues:**
  - **SSL Termination:** Why is terminating SSL at the load balancer level an issue?
  - **MySQL Server:** Why is having only one MySQL server for writes an issue?
  - **Server Components:** Problems with servers having all the same components.

**Submission:**
- **Repository:** GitHub repository: alx-system_engineering-devops
- **Directory:** 0x09-web_infrastructure_design
- **File:** 2-secured_and_monitored_web_infrastructure

### Task 3: Scale Up
**Objective:** Design a scaled-up web infrastructure by adding additional servers and splitting components.

**Requirements:**
- **Components:**
  - 1 additional server
  - 1 load balancer (HAproxy) configured as a cluster with the existing one
  - Split components (web server, application server, database) each onto their own server
- **Explanation:**
  - **Additional Elements:** Explain why each new element is added.

**Submission:**
- **Repository:** GitHub repository: alx-system_engineering-devops
- **Directory:** 0x09-web_infrastructure_design
- **File:** 3-scale_up

---

