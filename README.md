# RDS + Aurora Optimization with Blue-Green Strategy

This project documents a real-world production scenario where we optimized an Amazon RDS instance for cost and performance using blue-green deployment and later scaled reads using Aurora Reader endpoints.

---

## 🔧 Tools & Services Used

- **Amazon RDS (PostgreSQL/MySQL)**
- **Amazon Aurora Cluster**
- **Blue-Green Deployment Strategy**
- **Instance Type Optimization**
- **AWS CloudWatch**
- **Ubuntu Server**
- **SQL Queries**

---

## 🧠 Problem Statement

The production RDS was experiencing:
- Heavy read load during peak hours
- Table locking and slow performance
- High cost due to large instance running full time

---

## 🚀 Solution Overview

### 🔹 Phase 1: Blue-Green Deployment with Dynamic Instance Types

- Implemented a **blue-green deployment** where:
  - "Green" ran during **off-peak hours** on smaller instances
  - "Blue" ran during **peak hours** with high-performance instance
- Automated switch based on load schedule
- Result: ⚡ ~50% reduction in instance cost with no downtime

### 🔹 Phase 2: Scaling Reads with Aurora

- Migrated read-heavy workloads to **Aurora Reader Endpoint**
- Continued using RDS as **primary write DB**
- Updated backend to route reads/writes appropriately

### 🔹 Phase 3: Monitoring & Stabilization

- Used **CloudWatch** to monitor performance metrics and logs
- Validated system stability over a sustained period
- Reduced errors, improved load times, and optimized response

---

## 💡 Architecture Diagram
  Client
             |
   ┌─────────┴──────────┐
   |                    |

   (Writes) (Reads)
| |
RDS Aurora Reader Endpoint
|
(Auto-switch Blue/Green for cost savings)

## 📄 Sample SQL

```sql
-- Write to RDS
INSERT INTO orders (id, item, amount) VALUES (101, 'item1', 250);

-- Read from Aurora
SELECT * FROM orders WHERE item = 'item1';

📊 Outcome
✅ ~50% cost reduction on RDS using smart instance scaling
✅ Improved system responsiveness by offloading reads to Aurora
✅ No downtime due to blue-green approach
✅ System stabilized through performance monitoring

🧰 Folder Structure (coming soon)
rds-aurora-optimization/
├── sql/
│   └── example-read-write.sql
├── diagrams/
│   └── architecture.png
├── README.md

👩‍💻 Author
Rupali Lakkewar
LinkedIn | GitHub
