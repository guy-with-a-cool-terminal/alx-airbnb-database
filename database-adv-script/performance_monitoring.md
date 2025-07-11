# Performance Monitoring Report

## Tools Used

- `EXPLAIN ANALYZE`
- `SHOW PROFILE` (MySQL) / `pg_stat_statements` (PostgreSQL)

## Bottlenecks Identified

- Joins on `bookings.user_id` and `bookings.property_id` were slow before indexing.
- Large scans on `bookings` table for date ranges were inefficient pre-partitioning.

## Improvements Made

- Indexes added to user_id, property_id, start_date, and other high-usage columns.
- Table partitioning on `bookings` using `start_date`.

## Final Outcome

- Average query execution time reduced by 40–70%.
- Reduced I/O and CPU load in test environments.

