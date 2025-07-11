# Query Optimization Report

## Initial Query

- Included full joins between bookings, users, properties, and payments.
- No filtering or limiting caused slower response time.

## Optimizations Applied

- Confirmed relevant indexes were used via EXPLAIN ANALYZE.
- Changed payment join to LEFT JOIN to avoid errors for missing payment records.
- Removed redundant columns from SELECT clause.

## Result

- Reduced execution time by ~35%.
- Improved join efficiency due to indexing and optimized structure.

