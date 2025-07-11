-- Measure performance BEFORE creating index
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 42;

-- Create index to optimize query
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Measure performance AFTER creating index
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE user_id = 42;

-- Another index example
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Additional performance check
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE property_id = 101;

-- Index for start_date (used in date filtering and partitioning)
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
