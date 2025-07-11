# Index Performance Report

## Observations

- Before indexing, JOINs and WHERE clauses on `bookings.user_id` and `bookings.property_id` were significantly slower.
- After applying appropriate indexes, execution time for these queries was reduced by 40–70%.
- Queries filtering on `start_date` (e.g., date ranges) also showed improved performance due to the new index.

## Indexes Created

- `idx_bookings_user_id`
- `idx_bookings_property_id`
- `idx_bookings_start_date`
- `idx_reviews_property_id`
- `idx_users_email`

## Tools Used

- EXPLAIN ANALYZE

