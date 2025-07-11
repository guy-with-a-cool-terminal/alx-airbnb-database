# Partitioning Performance Report

## Objective

Improve performance on date-based queries for a large bookings table.

## Implementation

- Partitioned `bookings` table by `start_date` into yearly partitions.
- Created partitions: `bookings_2022`, `bookings_2023`, `bookings_2024`.

## Result

- Queries filtering by date (e.g., `WHERE start_date BETWEEN ...`) improved in execution time by over 50%.
- EXPLAIN ANALYZE confirmed only relevant partitions were scanned.

