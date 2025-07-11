# Aurora Read Optimization for Read-Heavy Applications

This project showcases a real-world DevOps use case where an Amazon Aurora Cluster was configured for optimizing performance in a read-heavy application.

---

## 🔧 Tools & Services Used
- **Amazon Aurora Cluster**
- **Amazon RDS (PostgreSQL/MySQL)**
- **Reader & Writer Endpoints**
- **AWS CloudWatch**
- **Ubuntu Server**
- **SQL Queries**

---

## 🧠 Problem Statement

Our application was read-heavy and faced performance issues as reads and writes were hitting the same RDS instance. Aurora was introduced with multiple read replicas to scale reads separately.

---

## 🚀 Solution Overview

1. Migrated the database to **Aurora Cluster**
2. Set up **write operations** through the **RDS writer endpoint**
3. Set up **read operations** through **Aurora reader endpoint**
4. Refactored backend query logic (Node.js app) to use appropriate endpoints
5. Monitored query load using **CloudWatch** and SQL logs
6. Achieved ~25% cost reduction by tuning instance types and replicas

---

## 📈 Architecture

Client
|
|-- Write --> RDS Writer Endpoint (Aurora Primary)
|
|-- Read --> Aurora Reader Endpoint (Read Replica)

## 📄 Example SQL Flow

```sql
-- For write
INSERT INTO orders (id, customer, amount) VALUES (...);

-- For read (directed to reader)
SELECT * FROM orders WHERE customer_id = 'X';

📊 Outcome
 40–50% improvement in query response time
~25% cost savings on RDS/Aurora instances
 Stable performance under high read loads

🧰 Folder Structure (coming soon)

aurora-read-optimization/
├── sql/
│   └── example-read-write.sql
├── diagrams/
│   └── architecture.png
├── README.md

👩‍💻 Author
Rupali Lakkewar
LinkedIn | GitHub
