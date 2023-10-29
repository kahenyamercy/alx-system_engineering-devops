Design of Three-Server Web Infrastructure for www.foobar.com

Components:

Load Balancer (LB):
Purpose: Distributes incoming network traffic across three servers.
Reasoning: Load balancers enhance reliability and scalability. They ensure high availability and prevent any single server from becoming overwhelmed with traffic.
Web Servers (Server 1, Server 2, Server 3):
Purpose: Hosts the www.foobar.com website.
Reasoning: Multiple web servers improve performance and reliability. They handle user requests and serve website content.
Database Servers (MySQL 1, MySQL 2, MySQL 3):
Purpose: Store and manage website data.
Reasoning: Distributing database load across multiple servers improves data redundancy and ensures availability. It also enhances read and write operations.
Firewalls (FW1, FW2, FW3):
Purpose: Control incoming and outgoing network traffic.
Reasoning: Firewalls protect the servers from unauthorized access and cyber threats. They act as a barrier between a trusted internal network and untrusted external networks.
SSL Certificate:
Purpose: Enables HTTPS, encrypting data transmitted between clients and servers.
Reasoning: HTTPS secures user data during transmission, ensuring privacy and integrity. It's crucial for user trust and SEO ranking.
Monitoring Clients (Monitoring Client 1, Monitoring Client 2, Monitoring Client 3):
Purpose: Collect and send server performance and status data to a monitoring service (e.g., Sumo Logic).
Reasoning: Monitoring clients provide real-time insights into server health, helping in proactive issue resolution and performance optimization.
Specifics:

Why Firewalls:

Firewalls prevent unauthorized access, protecting servers from attacks and ensuring data security.
HTTPS Traffic:

HTTPS encrypts data in transit, preventing eavesdropping and tampering, safeguarding user privacy and data integrity.
Monitoring Purpose:

Monitoring tools track server performance, detect issues, and provide data for capacity planning, ensuring optimal server operation.
Data Collection by Monitoring Tool:

Monitoring clients collect server metrics (CPU usage, memory, disk I/O) and application-specific data (response time, error rates) and transmit them to the monitoring service.
Monitoring Web Server QPS (Queries Per Second):

Monitoring tools analyze incoming requests per second, helping in load optimization and capacity planning. If QPS is high, consider load balancing or optimizing database queries.
Issues:

Terminating SSL at Load Balancer Level:
Problem: End-to-End encryption is lost, as traffic between load balancer and servers is unencrypted. Sensitive data can be intercepted internally.
Single MySQL Server for Writes:
Problem: Single point of failure. If the server fails, write operations cease, impacting website functionality.
Identical Server Components:
Problem: Lack of diversity can lead to simultaneous failures. If a common component (e.g., specific software) has a vulnerability, all servers are affected simultaneously.
By addressing these issues and optimizing the infrastructure, you can enhance security, reliability, and performance of the web application.
