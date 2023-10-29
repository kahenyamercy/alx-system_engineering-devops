# Readme

## Application Server vs Web Server

In this infrastructure setup, we have distinct roles for Application Server and Web Server, each serving a specific purpose within the web application ecosystem.

### Requirements:

- **1 server:** This server will act as the Application Server, executing application logic and processing dynamic content requests.
- **1 load-balancer (HAproxy) configured as a cluster with the other one:** The load-balancer will distribute incoming traffic among multiple servers, ensuring load distribution, high availability, and improved response times.
- **Split components (web server, application server, database) with their own server:** Splitting components onto dedicated servers enhances modularity, security, and scalability.

### Specifics:

**For every additional element, here's why we are adding it:**

1. **Application Server:**
   - **Purpose:** Executes the application logic and processes dynamic content requests.
   - **Reasoning:** By separating application logic, we enhance modularity and scalability. It allows efficient handling of complex operations, ensuring smoother user experiences.

2. **Load-Balancer (HAproxy) Cluster:**
   - **Purpose:** Distributes incoming traffic across multiple servers.
   - **Reasoning:** Load balancers prevent server overload, ensure high availability, and improve response times. Configuring them as a cluster enhances fault tolerance and ensures continuous service even if one load balancer fails.

3. **Split Components:**
   - **Purpose:** Web server, application server, and database each have dedicated servers.
   - **Reasoning:** This segregation enhances security, isolation, and resource optimization. Each component can be optimized independently, allowing for efficient scaling based on specific requirements.

### Note:

Understanding the distinct roles of application and web servers is crucial for effective web application architecture. It optimizes resource utilization, enhances security, and ensures smooth user interactions. This setup fosters a scalable and robust web infrastructure, meeting the demands of modern applications.

