## Description

The image shows a high-level overview of a web infrastructure that hosts the website www.foobar.com.

**Components:**

* **Load Balancer (HAProxy):** Distributes incoming HTTP requests evenly across multiple servers, preventing any single server from becoming overloaded.
* **Servers:** Two servers, each running a web server (Nginx) and an application server (PHP), ensuring redundancy and improved load handling.
* **Application Files (PHP Code Base):** PHP scripts and other code files that are executed by the application servers.
* **Database (MySQL):** Stores the website's data, such as user information or product details, allowing for easy access, management, and updates.
* **Domain Name:** A human-readable alias for an IP address (e.g., www.foobar.com vs. 8.8.8.8). The mapping between domain names and IP addresses is handled by the Domain Name System (DNS).
* **DNS Record:** A specific record type in DNS that maps a domain name to an IP address. In this case, www.foobar.com uses an A record, mapping the domain to the IP address 8.8.8.8.

**Additional Elements:**

* **HAProxy Load Balancer:** 
  * **Distribution Algorithm:** Configured with a Round Robin algorithm.
  * **How it Works:** The Round Robin algorithm distributes incoming requests sequentially across the available servers. When a request arrives, it is sent to the next server in the list. After reaching the last server, it cycles back to the first server. This method ensures that all servers receive an equal share of the load, helping to balance traffic and improve performance.
  * **Setup Type:** Enables an Active-Active setup.

* **Active-Active Setup:** 
  * **Explanation:** In an Active-Active setup, both servers are active simultaneously, handling requests concurrently. This setup maximizes resource usage and availability because all servers share the load and can serve traffic at the same time. If one server fails, the other servers continue to handle the requests without any disruption.
  
* **Primary-Replica Database Cluster:** 
  * **Explanation:** A Primary (Master) node handles all write operations, and one or more Replica (Slave) nodes handle read operations. This setup improves performance and provides redundancy, as read traffic is offloaded to the replicas.

**Difference Between Active-Active and Active-Passive Setups:**

* **Active-Active Setup:** 
  * **Functionality:** All servers are active and handle requests simultaneously.
  * **Advantages:** Maximizes resource utilization and availability. If one server fails, others continue to handle requests without interruption.
  * **Example:** The described infrastructure, where both servers are active and handle requests distributed by HAProxy.
  
* **Active-Passive Setup:**
  * **Functionality:** One server (active) handles all requests, while the other server (passive) remains on standby. The passive server takes over only if the active server fails.
  * **Advantages:** Simple to configure and manage. Ensures availability during server failure.
  * **Disadvantages:** Underutilizes resources, as the passive server is idle most of the time. Potential downtime during the failover process.
  * **Example:** If one of the two servers were configured as a standby server, only becoming active when the primary server fails.

## Issues With This Infrastructure:

* **Single Point of Failure (SPOF):** While HAProxy mitigates some risks, the load balancer itself can be a SPOF if not made redundant. Additionally, the single database can be a SPOF if not configured with redundancy.
* **Security Issues:** 
  - **No Firewall:** Servers are left exposed to potential attacks.
  - **No HTTPS:** Data transmitted in plain text is vulnerable to interception.
* **No Monitoring:** Without monitoring tools, it is challenging to detect and respond to issues in real-time, which can lead to prolonged downtimes and performance degradation.

## Benefits of Adding a Firewall:

* **Enhanced Security:** Firewalls monitor and control incoming and outgoing network traffic based on predetermined security rules, providing a barrier between trusted and untrusted networks.
* **Protection Against Attacks:** Helps protect servers from various types of cyber-attacks, such as Distributed Denial of Service (DDoS) attacks, by filtering malicious traffic.
* **Access Control:** Allows administrators to enforce policies regarding which traffic is allowed to reach the servers, blocking unauthorized access and potentially harmful traffic.
* **Network Segmentation:** Can be used to segment different parts of the network, adding another layer of security by isolating different services and servers from each other.

**Additional Considerations for Scalability and Reliability:**

* **Proxy Servers:** Can improve performance and reduce load on the main web servers by caching frequently accessed content.
* **Redundant Load Balancers:** Implementing multiple load balancers in an active-passive configuration can eliminate the load balancer as a SPOF.
* **HTTPS:** Using HTTPS to encrypt data in transit ensures that data cannot be intercepted and read by unauthorized parties.
* **Monitoring Tools:** Using monitoring tools to track server health, performance, and uptime, enabling quick response to any issues that arise.

This infrastructure provides a balanced approach to handling web traffic with redundancy and load distribution, though further enhancements are necessary to address SPOFs, security, and monitoring concerns.
