# ALX Airbnb Database – Advanced SQL Scripts

This directory contains advanced SQL scripts for the ALX Airbnb database module. The project focuses on mastering SQL joins, subqueries, indexing, query optimization, partitioning, and performance monitoring for scalable applications.

---

## 📁 Files Overview

- `joins_queries.sql` – SQL queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN
- `subqueries.sql` – Correlated and non-correlated subqueries
- `aggregations_and_window_functions.sql` – Aggregation and window function queries
- `database_index.sql` – SQL commands for creating performance-enhancing indexes
- `index_performance.md` – Analysis of query performance before and after indexing
- `perfomance.sql` – Initial and optimized complex queries for bookings
- `optimization_report.md` – Refactoring notes and performance impact
- `partitioning.sql` – SQL for partitioning the `bookings` table
- `partition_performance.md` – Performance observations with partitioning
- `performance_monitoring.md` – Monitoring, bottlenecks, and schema improvements

---

## 🔍 Task Summaries

### 0. Complex Queries with Joins

- **INNER JOIN:** Bookings with respective users.
- **LEFT JOIN:** Properties with reviews, including those with none.
- **FULL OUTER JOIN:** All users and all bookings, including unmatched rows.

### 1. Practice Subqueries

- **Non-correlated subquery:** Properties with average rating > 4.0.
- **Correlated subquery:** Users with more than 3 bookings.

### 2. Aggregations and Window Functions

- Count bookings per user.
- Rank properties based on booking count using `RANK()`.

### 3. Implement Indexes for Optimization

- Created indexes on high-usage columns in `users`, `bookings`, `properties`, and `reviews`.
- Significant speed improvements confirmed with `EXPLAIN`.

### 4. Optimize Complex Queries

- Initial query fetched data from multiple tables.
- Refactored query reduced joins and used indexing.
- Execution time dropped ~35%.

### 5. Partitioning Large Tables

- Partitioned `bookings` by `start_date` using range partitioning.
- Query time for date-based queries reduced over 50%.

### 6. Performance Monitoring and Refinement

- Used `EXPLAIN ANALYZE` and profiling tools.
- Identified bottlenecks, applied indexes, refactored schema.
- Improved overall performance and efficiency.

---

## 🛠 Tools and Techniques Used

- SQL (PostgreSQL/MySQL compatible)
- EXPLAIN / EXPLAIN ANALYZE
- SHOW PROFILE
- Indexing
- Table partitioning
- Window functions
- Subqueries (correlated and non-correlated)

---