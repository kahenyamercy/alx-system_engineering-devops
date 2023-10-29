**Design of Three-Server Web Infrastructure for [www.foobar.com](https://www.foobar.com)**

**Components:**

**Load Balancer (LB):**
- **Purpose:** Distributes incoming network traffic across three servers.
- **Reasoning:** Load balancers enhance reliability and scalability, ensuring high availability and preventing server overload.
  
**Web Servers (Server 1, Server 2, Server 3):**
- **Purpose:** Hosts the [www.foobar.com](https://www.foobar.com) website.
- **Reasoning:** Multiple web servers improve performance and reliability by handling user requests and serving website content.

**Database Servers (MySQL 1, MySQL 2, MySQL 3):**
- **Purpose:** Store and manage website data.
- **Reasoning:** Distributing database load across multiple servers improves data redundancy, availability, and enhances read and write operations.

**Firewalls (FW1, FW2, FW3):**
- **Purpose:** Control incoming and outgoing network traffic.
- **Reasoning:** Firewalls protect servers from unauthorized access and cyber threats, acting as a barrier between trusted internal networks and untrusted external networks.

**SSL Certificate:**
- **Purpose:** Enables HTTPS, encrypting data transmitted between clients and servers.
- **Reasoning:** HTTPS secures user data during transmission, ensuring privacy and integrity, enhancing user trust and SEO ranking.

**Monitoring Clients (Monitoring Client 1, Monitoring Client 2, Monitoring Client 3):**
- **Purpose:** Collect and send server performance and status data to a monitoring service (e.g., [Sumo Logic](https://www.sumologic.com/)).
- **Reasoning:** Monitoring clients provide real-time insights into server health, aiding proactive issue resolution and performance optimization.

**Specifics:**

**Why Firewalls:**
- Firewalls prevent unauthorized access, safeguarding servers from attacks and ensuring data security.

**HTTPS Traffic:**
- HTTPS encrypts data in transit, preserving user privacy and data integrity by preventing eavesdropping and tampering.

**Monitoring Purpose:**
- Monitoring tools track server performance, detect issues, and provide data for capacity planning, ensuring optimal server operation.

**Data Collection by Monitoring Tool:**
- Monitoring clients collect server metrics (CPU usage, memory, disk I/O) and application-specific data (response time, error rates), transmitting them to the monitoring service.

**Monitoring Web Server QPS (Queries Per Second):**
- Monitoring tools analyze incoming requests per second, aiding load optimization and capacity planning. High QPS may necessitate load balancing or optimizing database queries.

**Issues:**

**Terminating SSL at Load Balancer Level:**
- **Problem:** End-to-End encryption is lost, making internal traffic vulnerable. 
- **Solution:** Consider SSL termination at the application server level to maintain encryption integrity throughout.

**Single MySQL Server for Writes:**
- **Problem:** Single point of failure leading to write operation disruptions.
- **Solution:** Implement database replication or use a database cluster to distribute write operations across multiple servers, ensuring continuous service.

**Identical Server Components:**
- **Problem:** Lack of diversity may cause simultaneous failures due to common vulnerabilities.
- **Solution:** Diversify server components; use a mix of different software versions or technologies to reduce the impact of vulnerabilities across all servers.

