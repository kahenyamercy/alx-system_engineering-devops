### Design of Three-Server Web Infrastructure for [www.foobar.com](https://www.foobar.com)

---

### Components:

**Web Servers (Server 1, Server 2):**
- **Purpose:** Host the application and website files (HTML, CSS, JavaScript).
- **Reasoning:** Multiple web servers improve performance and reliability. They handle user requests and serve website content.

**Application Server:**
- **Purpose:** Executes the application logic and processes dynamic content requests.
- **Reasoning:** Separating application logic from web servers enhances modularity and scalability. It allows efficient handling of complex operations.

**Load Balancer (HAproxy):**
- **Purpose:** Distributes incoming traffic across multiple servers.
- **Reasoning:** Load balancers enhance reliability by preventing any single server from becoming overwhelmed. They ensure high availability and improve response times.

**Set of Application Files (Code Base):**
- **Purpose:** Contains the application code and related files.
- **Reasoning:** Centralized storage of the application files allows easy version control, updates, and deployments.

**Database (MySQL):**
- **Purpose:** Stores and manages data for the application.
- **Reasoning:** Databases enable data persistence, retrieval, and efficient querying, essential for dynamic web applications.

---

### Specifics:

**Additional Elements:**

**Load Balancer:** Added to distribute traffic evenly among multiple servers, preventing overload on any single server.

**Application Server:** Separating the application logic from web servers enhances security and allows efficient handling of dynamic content.

**Distribution Algorithm (HAproxy):**
- **Algorithm:** Round Robin (default) or Least Connections.
- **How it Works:** Round Robin sends requests to servers in a circular order, distributing traffic equally. Least Connections sends requests to servers with the fewest active connections, optimizing server usage.

**Active-Active vs. Active-Passive Setup:**
- **Active-Active:** Both servers actively handle traffic simultaneously, ensuring load distribution and redundancy.
- **Active-Passive:** One server is active, while the other remains idle. If the active server fails, the passive one takes over.

**Primary-Replica (Master-Slave) Database Cluster:**
- **How it Works:** Primary node (Master) handles write operations and replicates data to Replica nodes (Slaves). Replica nodes handle read operations, improving read scalability and fault tolerance.
- **Difference Between Primary and Replica Nodes:**
  - *Primary Node:* Handles write operations, ensuring data consistency and integrity.
  - *Replica Node:* Handles read operations, enhancing read scalability. However, it might experience a slight delay in data replication.

---

### Issues:

**Single Points of Failure (SPOF):**
- *Web Servers and Application Server:* If any of these servers fail, the website and application become unavailable.
- *Database:* If the Primary node fails without a proper failover mechanism, write operations halt.

**Security Issues:**
- *No Firewall:* Lack of a firewall exposes servers to potential unauthorized access and cyber threats.
- *No HTTPS:* Unencrypted communication between clients and servers risks data interception and tampering.

**No Monitoring:**
- *Issue:* Absence of monitoring tools hampers real-time insights into server health and performance.

